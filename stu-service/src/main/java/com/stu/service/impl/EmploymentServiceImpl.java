package com.stu.service.impl;

import com.stu.mapper.EmploymentMapper;
import com.stu.pojo.Employment;
import com.stu.service.EmploymentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("employmentService")
public class EmploymentServiceImpl implements EmploymentService {
    @Autowired
    private EmploymentMapper employmentMapper;

    @Override
    public List<Employment> employmentFindAll() {
        return employmentMapper.employmentFindAll();
    }

    /**
     * 通过id查询
     * @param eid
     * @return
     */
    @Override
    public Employment getEmploymentById(Integer eid) {
        return employmentMapper.getEmploymentById(eid);
    }

    /**
     * 发布就业信息
     * @param employment
     * @return
     */
    @Override
    public String addEmployment(Employment employment) {
        if(employmentMapper.addEmployment(employment)>0){
            return "success";
        }else{
            return "fail";
        }
    }

    /**
     * 修改就业信息
     * @param employment
     * @return
     */
    @Override
    public String updateEmployment(Employment employment) {
        if(employmentMapper.updateEmployment(employment)>0){
            return "success";
        }else{
            return "fail";
        }
    }

    /**
     * 删除就业信息
     * @param eid
     * @return
     */
    @Override
    public String deleteEmployment(Integer eid) {
        if(employmentMapper.deleteEmployment(eid)>0){
            return "success";
        }else{
            return "fail";
        }
    }
}
