package com.stu.service.impl;

import com.stu.mapper.StudentMapper;
import com.stu.pojo.Student;
import com.stu.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service("studentService")
public class StudentServiceImpl implements StudentService {
    @Autowired
    private StudentMapper studentMapper;

    /**
     * 查询所有学生信息
     * @return
     */
    @Override
    public List<Student> stuFindAll() {
        return studentMapper.stuFindAll();
    }

    @Override
    public Student getStudentById(Integer sid) {
        return studentMapper.getStudentById(sid);
    }

    /**
     * 添加学生信息
     * @param student
     * @return
     */
    @Override
    public String insertStudent(Student student) {
        if(studentMapper.insertStudent(student)>0){
            return "success";
        }else{
            return "fail";
        }
    }

    /**
     * 删除学生信息
     * @param sid
     * @return
     */
    @Override
    public String deleteStudent(Integer sid) {
        if(studentMapper.deleteStudent(sid)>0){
            return "success";
        }
        return "fail";
    }
}
