package com.stu.mapper;

import com.stu.pojo.Employment;

import java.util.List;

public interface EmploymentMapper {
    //查询就业信息
    public List<Employment> employmentFindAll();
    //通过id查询
    public Employment getEmploymentById(Integer eid);
    //发布就业信息
    public Integer addEmployment(Employment employment);
    //修改就业信息
    public Integer updateEmployment(Employment employment);
    //删除就业信息
    public Integer deleteEmployment(Integer eid);
}
