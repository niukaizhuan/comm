package com.stu.pojo;

public class Student {
    private Integer sid;

    private String sname;

    private String sex;

    private String idnumber;

    private String school;

    private String department;

    private String major;

    private String education;

    private String entrancedate;

    private String nativeplace;

    @Override
    public String toString() {
        return "Student{" +
                "sid=" + sid +
                ", sname='" + sname + '\'' +
                ", sex='" + sex + '\'' +
                ", idnumber='" + idnumber + '\'' +
                ", school='" + school + '\'' +
                ", department='" + department + '\'' +
                ", major='" + major + '\'' +
                ", education='" + education + '\'' +
                ", entrancedate='" + entrancedate + '\'' +
                ", nativeplace='" + nativeplace + '\'' +
                '}';
    }

    public Integer getSid() {
        return sid;
    }

    public void setSid(Integer sid) {
        this.sid = sid;
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getIdnumber() {
        return idnumber;
    }

    public void setIdnumber(String idnumber) {
        this.idnumber = idnumber;
    }

    public String getSchool() {
        return school;
    }

    public void setSchool(String school) {
        this.school = school;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major;
    }

    public String getEducation() {
        return education;
    }

    public void setEducation(String education) {
        this.education = education;
    }

    public String getEntrancedate() {
        return entrancedate;
    }

    public void setEntrancedate(String entrancedate) {
        this.entrancedate = entrancedate;
    }

    public String getNativeplace() {
        return nativeplace;
    }

    public void setNativeplace(String nativeplace) {
        this.nativeplace = nativeplace;
    }
}