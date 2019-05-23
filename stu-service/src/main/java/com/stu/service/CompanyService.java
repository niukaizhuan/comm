package com.stu.service;

import com.stu.pojo.Company;

import java.util.List;

public interface CompanyService {
    //查询企业信息
    public List<Company> comFindAll();
    //通过id查询
    public Company getCompanyById(Integer cid);
    //添加企业信息
    public String insertCompany(Company company);
    //删除企业信息
    public String deleteCompany(Integer cid);
}
