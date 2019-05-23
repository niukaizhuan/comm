package com.stu.mapper;

import com.stu.pojo.Student;

import java.util.List;

public interface StudentMapper {
    //查询所有学生数据
    public List<Student> stuFindAll();

    //通过id查询
    public Student getStudentById(Integer sid);

    //添加学生信息
    public Integer insertStudent(Student student);

    //删除学生信息
    public Integer deleteStudent(Integer sid);

}
