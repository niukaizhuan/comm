package com.stu.pojo;

public class Employment {
    private Integer eid;

    private String studentname;

    private String school;

    private String companyname;

    private String position;

    @Override
    public String toString() {
        return "Employment{" +
                "eid=" + eid +
                ", studentname='" + studentname + '\'' +
                ", school='" + school + '\'' +
                ", companyname='" + companyname + '\'' +
                ", position='" + position + '\'' +
                '}';
    }

    public Integer getEid() {
        return eid;
    }

    public void setEid(Integer eid) {
        this.eid = eid;
    }

    public String getStudentname() {
        return studentname;
    }

    public void setStudentname(String studentname) {
        this.studentname = studentname;
    }

    public String getSchool() {
        return school;
    }

    public void setSchool(String school) {
        this.school = school;
    }

    public String getCompanyname() {
        return companyname;
    }

    public void setCompanyname(String companyname) {
        this.companyname = companyname;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }
}
