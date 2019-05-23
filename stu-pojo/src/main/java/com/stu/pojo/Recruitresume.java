package com.stu.pojo;

public class Recruitresume {
    private Integer rid;

    private Integer cid;

    private Integer sid;

    @Override
    public String toString() {
        return "Recruitresume{" +
                "rid=" + rid +
                ", cid=" + cid +
                ", sid=" + sid +
                '}';
    }

    public Recruitresume() {
    }

    public Recruitresume(Integer rid, Integer cid, Integer sid) {
        this.rid = rid;
        this.cid = cid;
        this.sid = sid;
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

    public Integer getSid() {
        return sid;
    }

    public void setSid(Integer sid) {
        this.sid = sid;
    }
}