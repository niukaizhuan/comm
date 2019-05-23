package com.stu.pojo;

public class Company {
    private Integer cid;

    private String companyname;

    private String unitproperty;

    private String licensenumber;

    private String industry;

    private String unitscale;

    private String address;

    private String webaddress;

    private String linkman;

    private String telephone;

    private String email;

    private String postcode;

    @Override
    public String toString() {
        return "Company{" +
                "cid=" + cid +
                ", companyname='" + companyname + '\'' +
                ", unitproperty='" + unitproperty + '\'' +
                ", licensenumber='" + licensenumber + '\'' +
                ", industry='" + industry + '\'' +
                ", unitscale='" + unitscale + '\'' +
                ", address='" + address + '\'' +
                ", webaddress='" + webaddress + '\'' +
                ", linkman='" + linkman + '\'' +
                ", telephone='" + telephone + '\'' +
                ", email='" + email + '\'' +
                ", postcode='" + postcode + '\'' +
                '}';
    }

    public Integer getCid() {
        return cid;
    }

    public void setCid(Integer cid) {
        this.cid = cid;
    }

    public String getCompanyname() {
        return companyname;
    }

    public void setCompanyname(String companyname) {
        this.companyname = companyname;
    }

    public String getUnitproperty() {
        return unitproperty;
    }

    public void setUnitproperty(String unitproperty) {
        this.unitproperty = unitproperty;
    }

    public String getLicensenumber() {
        return licensenumber;
    }

    public void setLicensenumber(String licensenumber) {
        this.licensenumber = licensenumber;
    }

    public String getIndustry() {
        return industry;
    }

    public void setIndustry(String industry) {
        this.industry = industry;
    }

    public String getUnitscale() {
        return unitscale;
    }

    public void setUnitscale(String unitscale) {
        this.unitscale = unitscale;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getWebaddress() {
        return webaddress;
    }

    public void setWebaddress(String webaddress) {
        this.webaddress = webaddress;
    }

    public String getLinkman() {
        return linkman;
    }

    public void setLinkman(String linkman) {
        this.linkman = linkman;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPostcode() {
        return postcode;
    }

    public void setPostcode(String postcode) {
        this.postcode = postcode;
    }
}
