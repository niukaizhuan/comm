package com.stu.service;

import com.stu.pojo.Recruit;

import java.util.List;

public interface RecruitService {
    //查询招聘信息
    public List<Recruit> recruitFindAll();
    //通过id查询
    public Recruit getRecruitById(Integer rid);
    //修改招聘信息
    public String updateRecruit(Recruit recruit);
    //删除招聘信息
    public String deleteRecruit(Integer rid);
    //发布招聘信息
    public String postRecruit(Recruit recruit);
}
