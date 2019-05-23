package com.stu.service.impl;

import com.stu.mapper.RecruitMapper;
import com.stu.pojo.Recruit;
import com.stu.service.RecruitService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("recruitService")
public class RecruitServiceImpl implements RecruitService {
    @Autowired
    private RecruitMapper recruitMapper;

    /**
     * 查询所有招聘信息
     * @return
     */
    @Override
    public List<Recruit> recruitFindAll() {
        return recruitMapper.recruitFindAll();
    }

    /**
     * 通过id查询
     * @param rid
     * @return
     */
    @Override
    public Recruit getRecruitById(Integer rid) {
        return recruitMapper.getRecruitById(rid);
    }

    /**
     * 修改招聘信息
     * @param recruit
     * @return
     */
    @Override
    public String updateRecruit(Recruit recruit) {
        if(recruitMapper.updateRecruit(recruit)>0){
            return "success";
        }else{
            return "fail";
        }
    }

    /**
     * 删除招聘信息
     * @param rid
     * @return
     */
    @Override
    public String deleteRecruit(Integer rid) {
        if(recruitMapper.deleteRecruit(rid)>0){
            return "success";
        }else {
            return "fail";
        }
    }

    /**
     * 发布招聘信息
     * @param recruit
     * @return
     */
    @Override
    public String postRecruit(Recruit recruit) {
        if(recruitMapper.postRecruit(recruit)>0){
            return "success";
        } else{
            return "fail";
        }
    }
}
