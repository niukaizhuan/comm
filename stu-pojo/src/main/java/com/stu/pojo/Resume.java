package com.stu.pojo;

public class Resume {
    private Integer sid;

    private String sname;

    private String sex;

    private String birthday;

    private String nation;

    private String politics;

    private String graduation;

    private String school;

    private String major;

    private String education;

    private String email;

    private String phone;

    private String foreignlanguage;

    private String hobby;

    private String practice;

    private String position;

    private String honor;

    private String research;

    private String selfevaluation;

    public Resume() {
    }

    public Resume(Integer sid, String sname, String sex, String birthday, String nation, String politics, String graduation, String school, String major, String education, String email, String phone, String foreignlanguage, String hobby, String practice, String position, String honor, String research, String selfevaluation) {
        this.sid = sid;
        this.sname = sname;
        this.sex = sex;
        this.birthday = birthday;
        this.nation = nation;
        this.politics = politics;
        this.graduation = graduation;
        this.school = school;
        this.major = major;
        this.education = education;
        this.email = email;
        this.phone = phone;
        this.foreignlanguage = foreignlanguage;
        this.hobby = hobby;
        this.practice = practice;
        this.position = position;
        this.honor = honor;
        this.research = research;
        this.selfevaluation = selfevaluation;
    }

    @Override
    public String toString() {
        return "Resume{" +
                "sid=" + sid +
                ", sname='" + sname + '\'' +
                ", sex='" + sex + '\'' +
                ", birthday='" + birthday + '\'' +
                ", nation='" + nation + '\'' +
                ", politics='" + politics + '\'' +
                ", graduation='" + graduation + '\'' +
                ", school='" + school + '\'' +
                ", major='" + major + '\'' +
                ", education='" + education + '\'' +
                ", email='" + email + '\'' +
                ", phone='" + phone + '\'' +
                ", foreignlanguage='" + foreignlanguage + '\'' +
                ", hobby='" + hobby + '\'' +
                ", practice='" + practice + '\'' +
                ", position='" + position + '\'' +
                ", honor='" + honor + '\'' +
                ", research='" + research + '\'' +
                ", selfevaluation='" + selfevaluation + '\'' +
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

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public String getNation() {
        return nation;
    }

    public void setNation(String nation) {
        this.nation = nation;
    }

    public String getPolitics() {
        return politics;
    }

    public void setPolitics(String politics) {
        this.politics = politics;
    }

    public String getGraduation() {
        return graduation;
    }

    public void setGraduation(String graduation) {
        this.graduation = graduation;
    }

    public String getSchool() {
        return school;
    }

    public void setSchool(String school) {
        this.school = school;
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

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getForeignlanguage() {
        return foreignlanguage;
    }

    public void setForeignlanguage(String foreignlanguage) {
        this.foreignlanguage = foreignlanguage;
    }

    public String getHobby() {
        return hobby;
    }

    public void setHobby(String hobby) {
        this.hobby = hobby;
    }

    public String getPractice() {
        return practice;
    }

    public void setPractice(String practice) {
        this.practice = practice;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public String getHonor() {
        return honor;
    }

    public void setHonor(String honor) {
        this.honor = honor;
    }

    public String getResearch() {
        return research;
    }

    public void setResearch(String research) {
        this.research = research;
    }

    public String getSelfevaluation() {
        return selfevaluation;
    }

    public void setSelfevaluation(String selfevaluation) {
        this.selfevaluation = selfevaluation;
    }
}