package com.stu.controller;


import com.stu.pojo.User;
import com.stu.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@RequestMapping("admin")
@Controller
public class AdminController {

    @Autowired
    UserService userService;

    /**
     * 加载主页面
     * @param mv
     * @return
     */
    @GetMapping("index")
    public ModelAndView getAdminIndex (ModelAndView mv) {
        mv.setViewName("admin/adminIndex");
        return mv;
    }

    /**
     * 加载顶部导航栏
     * @param mv
     * @return
     */
    @GetMapping("top")
    public ModelAndView getTopFrame(ModelAndView mv) {
        mv.setViewName("admin/top");
        return mv;
    }

    /**
     * 左侧导航栏
     * @param mv
     * @return
     */
    @GetMapping("left")
    public ModelAndView getLeftFrame(ModelAndView mv) {
        mv.setViewName("admin/left");
        return mv;
    }

    /**
     * 主题内容区
     * @param mv
     * @return
     */
    @GetMapping("right")
    public ModelAndView getRightFrame(ModelAndView mv) {
        mv.setViewName("admin/right");
        return mv;
    }
    /**
     * 主页
     * @param mv
     * @return
     */
    @GetMapping("main")
    public ModelAndView getMain(ModelAndView mv) {
        mv.setViewName("admin/main");
        return mv;
    }


}
