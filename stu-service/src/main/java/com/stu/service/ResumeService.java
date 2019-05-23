package com.stu.service;

import com.stu.pojo.Resume;

public interface ResumeService {
    //通过id查询
    public Resume getResumeById(Integer sid);
    //添加简历
    public String insertResume(Resume resume);
    //修改简历
    public String updateResume(Resume resume);
}
