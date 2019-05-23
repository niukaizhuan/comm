package com.stu.service.impl;

import com.stu.mapper.CompanyMapper;
import com.stu.pojo.Company;
import com.stu.service.CompanyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("companyService")
public class CompanyServiceImpl implements CompanyService {
    @Autowired
    private CompanyMapper companyMapper;

    /**
     * 查询企业信息
     * @return
     */
    @Override
    public List<Company> comFindAll() {
        return companyMapper.comFindAll();
    }

    /**
     * 通过id查询
     * @param cid
     * @return
     */
    @Override
    public Company getCompanyById(Integer cid) {
        return companyMapper.getCompanyById(cid);
    }

    /**
     * 添加企业信息
     * @param company
     * @return
     */
    @Override
    public String insertCompany(Company company) {
        if(companyMapper.insertCompany(company)>0){
            return "success";
        }else{
            return "fail";
        }
    }

    /**
     * 删除企业信息
     * @param cid
     * @return
     */
    @Override
    public String deleteCompany(Integer cid) {
        if(companyMapper.deleteCompany(cid)>0){
            return "success";
        }
        return "fail";
    }
}
