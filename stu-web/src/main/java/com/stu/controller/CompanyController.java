package com.stu.controller;

import com.stu.pojo.Company;
import com.stu.pojo.ResultInfo;
import com.stu.service.CompanyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("company")
public class CompanyController {
    @Autowired
    private CompanyService companyService;
    /**
     * 管理企业信息
     * @param modelAndView
     * @param session
     * @return
     */
    @GetMapping("companyList")
    public ModelAndView showCompany(ModelAndView modelAndView, HttpSession session){
        List<Company> companyList=companyService.comFindAll();
        modelAndView.addObject("list", companyList);
        modelAndView.setViewName("company/companyList");
        return  modelAndView;
    }
    /**
     * 企业信息页面
     */
    @GetMapping("companyInformation")
    public ModelAndView comInformation(ModelAndView modelAndView, Integer cid){
        Company company=companyService.getCompanyById(cid);
        modelAndView.addObject("company", company);
        System.out.println(company.toString());
        modelAndView.setViewName("company/companyInformation");
        return  modelAndView;
    }

    /**
     * 添加企业信息页面
     */
    @GetMapping("addCompany")
    public ModelAndView addCompany(ModelAndView modelAndView){
        modelAndView.setViewName("company/addCompany");
        return  modelAndView;
    }
    @PostMapping(value = "addCompany")
    @ResponseBody
    public ResultInfo insertCompany(@RequestBody Company company, HttpSession session){
        ResultInfo resultInfo = new ResultInfo();
        System.out.println(company.toString());
        String result = companyService.insertCompany(company);
        System.out.println(result);
        if(result.equals("success")){
            resultInfo.setCode("200");
            resultInfo.setMessage("添加成功!");
            session.setAttribute("company",company);
        }else{
            resultInfo.setCode("500");
            resultInfo.setMessage("添加失败!");
        }
        return resultInfo;
    }

    /**
     * 删除学生信息
     */
    @RequestMapping(value = "/deleteCompany", method = RequestMethod.POST)
    @ResponseBody
    public ResultInfo deleteCompany(Integer cid, HttpSession session) {
        ResultInfo resultInfo = new ResultInfo();
        System.out.println("cid: " + cid);
        String result = companyService.deleteCompany(cid);
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
