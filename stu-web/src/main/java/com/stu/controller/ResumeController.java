package com.stu.controller;

import com.stu.pojo.ResultInfo;
import com.stu.pojo.Resume;
import com.stu.service.ResumeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

@RequestMapping("resume")
@Controller
public class ResumeController {
    @Autowired
    private ResumeService resumeService;

    /**
     * 添加简历
     *
     * @param modelAndView
     * @return
     */
    @GetMapping("addResume")
    public ModelAndView insertResume(ModelAndView modelAndView) {
        modelAndView.setViewName("resume/addResume");
        return modelAndView;
    }

    @RequestMapping(value = "/addResume", method = RequestMethod.POST)
    @ResponseBody
    public ResultInfo addResume(@RequestBody Resume resume, HttpSession session) {
        ResultInfo resultInfo = new ResultInfo();
        try {
            System.out.println(resume.toString());
            String result = resumeService.insertResume(resume);
            System.out.println(result);
            if (result.equals("success")) {
                resultInfo.setCode("200");
                resultInfo.setMessage("简历里添加成功!");
                session.setAttribute("resume", resume);
            } else {
                resultInfo.setCode("500");
                resultInfo.setMessage("简历添加失败!");
            }
            return resultInfo;
        } catch (Exception e) {
            e.printStackTrace();
            return resultInfo;
        }
    }

    /**
     * 修改简历
     */
    @GetMapping("/updateResume")
    public ModelAndView getUpdateResumePage(ModelAndView modelAndView, @RequestParam(value="sid", required = false) Integer sid) {
        Resume resume = resumeService.getResumeById(sid);
       // System.out.println(resume.toString());
        modelAndView.addObject("resume", resume);
        modelAndView.setViewName("resume/updateResume");
        return modelAndView;
    }

    @RequestMapping(value = "/updateResume", method = RequestMethod.POST)
    @ResponseBody
    public ResultInfo updateResume(@RequestBody Resume resume, HttpSession session) {
        ResultInfo resultInfo = new ResultInfo();
        try {
            System.out.println(resume.toString());
            String result = resumeService.updateResume(resume);
            System.out.println(result);
            if (result.equals("success")) {
                resultInfo.setCode("200");
                resultInfo.setMessage("简历更新成功!");
                session.setAttribute("resume", resume);
            } else {
                resultInfo.setCode("500");
                resultInfo.setMessage("简历更新失败!");
            }
            return resultInfo;
        } catch (Exception e) {
            e.printStackTrace();
            return resultInfo;
        }
    }

}
