package com.stu.mapper;

import com.stu.pojo.Recruit;

import java.util.List;

public interface RecruitMapper {
    //查询招聘信息
    public List<Recruit> recruitFindAll();
    //通过id查询
    public Recruit getRecruitById(Integer rid);
    //修改招聘信息
    public Integer updateRecruit(Recruit recruit);
    //删除用户
    public Integer deleteRecruit(Integer rid);
    //发布招聘信息
    public Integer postRecruit(Recruit recruit);
}
