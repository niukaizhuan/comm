package com.stu.controller;

import com.stu.pojo.Employment;
import com.stu.pojo.ResultInfo;
import com.stu.service.EmploymentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("employment")
public class EmploymentController {
    @Autowired
    private EmploymentService employmentService;

    /**
     * 管理就业信息
     */
    @GetMapping("employmentList")
    public ModelAndView getEmployment(ModelAndView modelAndView){
        List<Employment> employmentList=employmentService.employmentFindAll();
        modelAndView.addObject("list", employmentList);
        modelAndView.setViewName("employment/employmentList");
        return  modelAndView;
    }

    /**
     * 发布就业信息
     */
    @GetMapping("postEmployment")
    public ModelAndView postEmployment(ModelAndView modelAndView){
        modelAndView.setViewName("employment/postEmployment");
        return  modelAndView;
    }
    @PostMapping("postEmployment")
    @ResponseBody
    public ResultInfo addEmployment(@RequestBody Employment employment, HttpSession session){
        ResultInfo resultInfo = new ResultInfo();
        System.out.println(employment.toString());
        String result = employmentService.addEmployment(employment);
        System.out.println(result);
        if(result.equals("success")){
            resultInfo.setCode("200");
            resultInfo.setMessage("发布成功!");
            session.setAttribute("student",employment);
        }else{
            resultInfo.setCode("500");
            resultInfo.setMessage("发布失败!");
        }
        return resultInfo;
    }

    /**
     * 修改就业信息
     */
    @GetMapping("/updateEmployment")
    public ModelAndView getUpdateEmploymentPage(ModelAndView modelAndView, Integer eid) {
        Employment employment = employmentService.getEmploymentById(eid);
        System.out.println(employment.toString());
        modelAndView.addObject("employment", employment);
        modelAndView.setViewName("employment/updateEmployment");
        return modelAndView;
    }

    @RequestMapping(value = "/updateEmployment", method = RequestMethod.POST)
    @ResponseBody
    public ResultInfo updateEmployment(@RequestBody Employment employment, HttpSession session) {
        ResultInfo resultInfo = new ResultInfo();
        System.out.println(employment.toString());
        String result = employmentService.updateEmployment(employment);
        System.out.println(result);
        if (result.equals("success")) {
            resultInfo.setCode("200");
            resultInfo.setMessage("就业信息更新成功!");

        } else {
            resultInfo.setCode("500");
            resultInfo.setMessage("就业信息更新失败!");
        }
        return resultInfo;
    }

    /**
     * 删除就业信息
     */
    @RequestMapping(value = "/deleteEmployment", method = RequestMethod.POST)
    @ResponseBody
    public ResultInfo deleteEmployment(Integer eid, HttpSession session) {
        ResultInfo resultInfo = new ResultInfo();
        System.out.println("id: " + eid);
        String result = employmentService.deleteEmployment(eid);
        System.out.println(result);
        if (result.equals("success")) {
            resultInfo.setCode("200");
            resultInfo.setMessage("就业信息删除成功!");
        } else {
            resultInfo.setCode("500");
            resultInfo.setMessage("就业信息删除失败!");
        }
        return resultInfo;
    }
}
