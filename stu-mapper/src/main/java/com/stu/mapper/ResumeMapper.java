package com.stu.mapper;

import com.stu.pojo.Resume;

public interface ResumeMapper {
    //通过id查询
    public Resume getResumeById(Integer sid);
    //添加简历
    public Integer insertResume(Resume resume);
    //修改简历
    public Integer updateResume(Resume resume);
}
