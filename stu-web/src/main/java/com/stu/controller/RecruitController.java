package com.stu.controller;

import com.stu.pojo.Company;
import com.stu.pojo.Recruit;
import com.stu.pojo.ResultInfo;
import com.stu.service.CompanyService;
import com.stu.service.RecruitService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("recruit")
public class RecruitController {

    private final RecruitService recruitService;
    private final CompanyService companyService;

    @Autowired
    public RecruitController(RecruitService recruitService, CompanyService companyService) {
        this.recruitService = recruitService;
        this.companyService = companyService;
    }

    /**
     * 管理招聘信息
     */
    @GetMapping("recruitList")
    public ModelAndView getRecruit(ModelAndView modelAndView){
        List<Recruit> recruitList=recruitService.recruitFindAll();
        modelAndView.addObject("list", recruitList);
        modelAndView.setViewName("recruit/recruitList");
        return  modelAndView;
    }
    /**
     * 查看招聘信息页面
     */
    @GetMapping("recruitInformation")
    public ModelAndView recruitInformation(ModelAndView modelAndView,Integer rid){
        Recruit recruit=recruitService.getRecruitById(rid);
        modelAndView.addObject("recruit",recruit);
        System.out.println(recruit.toString());
        modelAndView.setViewName("recruit/recruitInformation");
        return modelAndView;
    }
    /**
     * 修改招聘信息页面
     */
    @GetMapping("/updateRecruit")
    public ModelAndView getUpdateRecruitPage(ModelAndView modelAndView, Integer rid) {
        Recruit recruit = recruitService.getRecruitById(rid);
        System.out.println(recruit.toString());
        modelAndView.addObject("recruit", recruit);
        modelAndView.setViewName("recruit/updateRecruit");
        return modelAndView;
    }
    @RequestMapping(value = "/updateRecruit", method = RequestMethod.POST)
    @ResponseBody
    public ResultInfo updateRecruit(@RequestBody Recruit recruit) {
        ResultInfo resultInfo = new ResultInfo();
        System.out.println(recruit.toString());
        String result = recruitService.updateRecruit(recruit);
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
     * 删除招聘信息
     */
    @RequestMapping(value = "/deleteRecruit", method = RequestMethod.POST)
    @ResponseBody
    public ResultInfo deleteRecruit(Integer rid, HttpSession session) {
        ResultInfo resultInfo = new ResultInfo();
        System.out.println("rid: " + rid);
        String result = recruitService.deleteRecruit(rid);
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

    /**
     * 发布招聘信息页面
     */
    @GetMapping("postRecruit")
    public ModelAndView postRecruit(ModelAndView modelAndView,Integer cid){
        Company company = companyService.getCompanyById(cid);
        modelAndView.addObject("company",company);
        modelAndView.setViewName("recruit/postRecruit");
        return modelAndView;
    }
    @PostMapping("postRecruit")
    @ResponseBody
    public ResultInfo addRecruit(@RequestBody Recruit recruit, HttpSession session){
        ResultInfo resultInfo = new ResultInfo();
        System.out.println(recruit.toString());
        String result = recruitService.postRecruit(recruit);
        System.out.println(result);
        if (result.equals("success")) {
            resultInfo.setCode("200");
            resultInfo.setMessage("招聘发布成功!");
            session.setAttribute("recruit",recruit);
        } else {
            resultInfo.setCode("500");
            resultInfo.setMessage("招聘发布失败!");
        }
        return resultInfo;
    }

}
