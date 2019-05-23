package com.stu.mapper;

import com.stu.pojo.Company;

import java.util.List;

public interface CompanyMapper {
    //查询企业信息
    public List<Company> comFindAll();
    //通过id查询
    public Company getCompanyById(Integer cid);
    //添加企业信息
    public Integer insertCompany(Company company);
    //删除企业信息
    public Integer deleteCompany(Integer cid);
}
