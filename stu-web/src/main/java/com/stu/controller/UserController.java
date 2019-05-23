package com.stu.controller;

import com.stu.pojo.ResultInfo;
import com.stu.pojo.User;
import com.stu.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;


@RequestMapping("/user")
@Controller
public class UserController {
    @Autowired
    private UserService userService;

    /**
     * 查询所有用户
     */
    @RequestMapping(value = "userList", method = RequestMethod.GET)
    public ModelAndView findUserAll(ModelAndView modelAndView) {
        List<User> userLists = userService.findUserAll();
        modelAndView.addObject("list", userLists);
        modelAndView.setViewName("admin/userList");
        return modelAndView;
    }

    /**
     * 添加用户
     */
    @GetMapping("/addUser")
    public ModelAndView getAddUserPage(ModelAndView modelAndView) {
        modelAndView.setViewName("admin/addUser");
        return modelAndView;
    }

    @RequestMapping(value = "/addUser", method = RequestMethod.POST)
    @ResponseBody
    public ResultInfo addUser(@RequestBody User user, HttpSession session) {
        ResultInfo resultInfo = new ResultInfo();
        System.out.println(user.toString());
        String result = userService.addUser(user);
        System.out.println(result);
        if (result.equals("success")) {
            resultInfo.setCode("200");
            resultInfo.setMessage("用户信息添加成功!");
            session.setAttribute("user",user);
        } else {
            resultInfo.setCode("500");
            resultInfo.setMessage("用户信息添加失败!");
        }
        return resultInfo;
    }

    /**
     * 修改用户信息
     */
    @GetMapping("/updateUser")
    public ModelAndView getUpdateUserPage(ModelAndView modelAndView, @RequestParam Integer id) {
        User user = userService.getUserById(id);
        System.out.println(user.toString());
        modelAndView.addObject("user", user);
        modelAndView.setViewName("admin/updateUser");
        return modelAndView;
    }

    @RequestMapping(value = "/updateUser", method = RequestMethod.POST)
    @ResponseBody
    public ResultInfo updateUser(@RequestBody User user, HttpSession session) {
        ResultInfo resultInfo = new ResultInfo();
        System.out.println(user.toString());
        String result = userService.updateUser(user);
        System.out.println(result);
        if (result.equals("success")) {
            resultInfo.setCode("200");
            resultInfo.setMessage("用户信息更新成功!");

        } else {
            resultInfo.setCode("500");
            resultInfo.setMessage("用户信息更新失败!");
        }
        return resultInfo;
    }

    /**
     * 删除用户
     */
    @RequestMapping(value = "/deleteUser", method = RequestMethod.POST)
    @ResponseBody
    public ResultInfo deleteUser(Integer id, HttpSession session) {
        ResultInfo resultInfo = new ResultInfo();
        System.out.println("id: " + id);
        String result = userService.deleteUser(id);
        System.out.println(result);
        if (result.equals("success")) {
            resultInfo.setCode("200");
            resultInfo.setMessage("用户信息删除成功!");
        } else {
            resultInfo.setCode("500");
            resultInfo.setMessage("用户信息删除失败!");
        }
        return resultInfo;
    }

}

