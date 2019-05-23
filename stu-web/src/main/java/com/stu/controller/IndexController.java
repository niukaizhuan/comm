package com.stu.controller;

import com.stu.pojo.ResultInfo;
import com.stu.pojo.User;
import com.stu.service.UserService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;


@Controller
public class IndexController {

    @Autowired
    UserService userService;

    /**
     * 登录页面
     * @param modelAndView
     * @return
     */
    @GetMapping(value = {"/", "/login"})
    public ModelAndView login(ModelAndView modelAndView) {
        modelAndView.setViewName("system/login");
        return modelAndView;
    }

    /**
     * 退出登录
     * @param session
     * @return
     */
    @GetMapping(value = "/logout")
    @ResponseBody
    public ResultInfo logout(HttpSession session) {
        ResultInfo res = new ResultInfo();
        session.removeAttribute("user");
        res.setCode("200");
        res.setMessage("退出成功!");
        return res;
    }

    /**
     * 登录表单提交
     *
     * @return
     */
    @PostMapping(value = "/login")
    public ModelAndView login(ModelAndView mv,
                              @RequestParam String userCode,
                              @RequestParam String password,
                              @RequestParam String userType, HttpSession session) {
        if (StringUtils.isEmpty(userCode)) {
            mv.addObject("msg", "用户名不能为空");
            mv.setViewName("system/login");
            return mv;
        }
        if (StringUtils.isEmpty(password)) {
            mv.addObject("msg", "密码不能为空");
            mv.setViewName("system/login");
            return mv;
        }
        if (StringUtils.isEmpty(userType)) {
            mv.addObject("msg", "用户类型不能为空");
            mv.setViewName("system/login");
            return mv;
        }
        if (userType.equals("admin")) {
            //管理员
            mv.setViewName("redirect:admin/index");
        }
        if (userType.equals("student")) {
            //学生
            mv.setViewName("student/studentIndex");
        }
        if (userType.equals("company")) {
            //企业
            mv.setViewName("company/companyIndex");
        }
        //查找数据
        try {
            User user = userService.findLoginUser(userCode, password, userType);
            //管理员
            if (user == null) {
                mv.addObject("msg", "该用户不存在");
                mv.setViewName("system/login");
                return mv;
            }
            if (!password.equals(user.getPassword())) {
                mv.addObject("msg", "密码错误!");
                mv.setViewName("system/login");
                return mv;
            }
            session.setAttribute("user", user);
            mv.addObject("user", user);
        } catch (Exception e) {
            e.printStackTrace();
            mv.addObject("msg", "操作失败!");
            mv.setViewName("error");
            return mv;
        }
        return mv;
    }
}
