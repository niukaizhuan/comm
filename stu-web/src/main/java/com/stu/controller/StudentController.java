package com.stu.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.stu.pojo.Employment;
import com.stu.pojo.Recruit;
import com.stu.pojo.ResultInfo;
import com.stu.pojo.Student;
import com.stu.service.EmploymentService;
import com.stu.service.RecruitService;
import com.stu.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("student")
public class StudentController {

    private final StudentService studentService;
    private final EmploymentService employmentService;
    private final RecruitService recruitService;

    @Autowired
    public StudentController(StudentService studentService, EmploymentService employmentService, RecruitService recruitService) {
        this.studentService = studentService;
        this.employmentService = employmentService;
        this.recruitService = recruitService;
    }

    /**
     * 管理学生信息
     *
     * @param modelAndView
     * @param session
     * @return
     */
    @GetMapping("studentList")
    public ModelAndView showStudent(ModelAndView modelAndView, HttpSession session) {
        List<Student> studentList = studentService.stuFindAll();
        modelAndView.addObject("list", studentList);
        modelAndView.setViewName("student/studentList");
        return modelAndView;
    }

    /**
     * 学生信息页面
     */
    @GetMapping("stuInformation")
    public ModelAndView stuInformation(ModelAndView modelAndView, Integer sid) {
        Student student = studentService.getStudentById(sid);
        //List<Student> studentList=studentService.stuFindAll();
        modelAndView.addObject("student", student);
        //System.out.println(student.toString());
        modelAndView.setViewName("student/stuInformation");
        return modelAndView;
    }

    /**
     * 添加学生信息页面
     */
    @GetMapping("addStudent")
    public ModelAndView addStudent(ModelAndView modelAndView) {
        modelAndView.setViewName("student/addStudent");
        return modelAndView;
    }

    @PostMapping(value = "addStudent")
    @ResponseBody
    public ResultInfo insertStudent(@RequestBody Student student, HttpSession session) {
        ResultInfo resultInfo = new ResultInfo();
        System.out.println(student.toString());
        String result = studentService.insertStudent(student);
        System.out.println(result);
        if (result.equals("success")) {
            resultInfo.setCode("200");
            resultInfo.setMessage("添加成功!");
            session.setAttribute("student", student);
        } else {
            resultInfo.setCode("500");
            resultInfo.setMessage("添加失败!");
        }
        return resultInfo;
    }

    /**
     * 删除学生信息
     */
    @RequestMapping(value = "/deleteStudent", method = RequestMethod.POST)
    @ResponseBody
    public ResultInfo deleteStudent(Integer sid, HttpSession session) {
        ResultInfo resultInfo = new ResultInfo();
        System.out.println("sid: " + sid);
        String result = studentService.deleteStudent(sid);
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
     * 查看就业信息
     */
    @RequestMapping(value = "/stuEmploymentList", method = RequestMethod.GET)
    public ModelAndView selectEmployment(ModelAndView modelAndView) {
        List<Employment> employmentList = employmentService.employmentFindAll();
        modelAndView.addObject("employmentList", JSONArray.parseArray(JSONObject.toJSONString(employmentList)));
        modelAndView.setViewName("/student/stuEmploymentList");
        return modelAndView;
    }

    /**
     * 查看招聘信息
     */
    @RequestMapping(value = "/stuRecruitList", method = RequestMethod.GET)
    public ModelAndView selectRecruit(ModelAndView modelAndView) {
        List<Recruit> recruitList = recruitService.recruitFindAll();
        modelAndView.addObject("recruitList", JSONArray.parseArray(JSONObject.toJSONString(recruitList)));
        modelAndView.setViewName("/student/stuRecruitList");
        return modelAndView;
    }


}
