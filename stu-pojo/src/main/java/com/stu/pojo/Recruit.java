package com.stu.pojo;

public class Recruit {
    private Integer rid;

    private Integer cid;

    private String companyname;

    private String address;

    private String postcode;

    private Integer recruitment;

    private String workingplace;

    private String positiontype;

    private String edurequire;

    private String description;

    private String branch;

    private String linkman;

    private String telephone;

    private String hostpage;

    private String email;

    @Override
    public String toString() {
        return "Recruit{" +
                "rid=" + rid +
                ", cid=" + cid +
                ", companyname='" + companyname + '\'' +
                ", address='" + address + '\'' +
                ", postcode='" + postcode + '\'' +
                ", recruitment=" + recruitment +
                ", workingplace='" + workingplace + '\'' +
                ", positiontype='" + positiontype + '\'' +
                ", edurequire='" + edurequire + '\'' +
                ", description='" + description + '\'' +
                ", branch='" + branch + '\'' +
                ", linkman='" + linkman + '\'' +
                ", telephone='" + telephone + '\'' +
                ", hostpage='" + hostpage + '\'' +
                ", email='" + email + '\'' +
                '}';
    }

    public Integer getRid() {
        return rid;
    }

    public void setRid(Integer rid) {
        this.rid = rid;
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

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPostcode() {
        return postcode;
    }

    public void setPostcode(String postcode) {
        this.postcode = postcode;
    }

    public Integer getRecruitment() {
        return recruitment;
    }

    public void setRecruitment(Integer recruitment) {
        this.recruitment = recruitment;
    }

    public String getWorkingplace() {
        return workingplace;
    }

    public void setWorkingplace(String workingplace) {
        this.workingplace = workingplace;
    }

    public String getPositiontype() {
        return positiontype;
    }

    public void setPositiontype(String positiontype) {
        this.positiontype = positiontype;
    }

    public String getEdurequire() {
        return edurequire;
    }

    public void setEdurequire(String edurequire) {
        this.edurequire = edurequire;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getBranch() {
        return branch;
    }

    public void setBranch(String branch) {
        this.branch = branch;
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

    public String getHostpage() {
        return hostpage;
    }

    public void setHostpage(String hostpage) {
        this.hostpage = hostpage;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
