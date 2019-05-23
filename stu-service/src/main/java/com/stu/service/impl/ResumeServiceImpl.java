package com.stu.service.impl;

import com.stu.mapper.ResumeMapper;
import com.stu.pojo.Resume;
import com.stu.service.ResumeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("resumeService")
public class ResumeServiceImpl implements ResumeService {
    @Autowired
    private ResumeMapper resumeMapper;

    /**
     * 通过id查询
     * @param sid
     * @return
     */
    @Override
    public Resume getResumeById(Integer sid) {
        return resumeMapper.getResumeById(sid);
    }

    /**
     * 添加简历
     *
     * @param resume
     * @return
     */
    @Override
    public String insertResume(Resume resume) {
        if (resumeMapper.insertResume(resume) > 0) {
            return "success";
        } else {
            return "fail";
        }
    }

    /**
     * 修改简历
     *
     * @param resume
     * @return
     */
    @Override
    public String updateResume(Resume resume) {
        if (resumeMapper.updateResume(resume) > 0) {
            return "success";
        } else {
            return "fail";
        }
    }
}
