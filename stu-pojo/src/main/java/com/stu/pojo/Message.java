package com.stu.pojo;

import java.util.Date;

public class Message {
    private Integer mid;

    private Integer id;

    private String username;

    private String title;

    private Date msgtime;

    private String content;

    private String reply;

    private Date replytime;

    public Message() {
    }

    public Message(Integer mid, Integer id, String username, String title, Date msgtime, String content, String reply, Date replytime) {
        this.mid = mid;
        this.id = id;
        this.username = username;
        this.title = title;
        this.msgtime = msgtime;
        this.content = content;
        this.reply = reply;
        this.replytime = replytime;
    }

    @Override
    public String toString() {
        return "Message{" +
                "mid=" + mid +
                ", id=" + id +
                ", username='" + username + '\'' +
                ", title='" + title + '\'' +
                ", msgtime=" + msgtime +
                ", content='" + content + '\'' +
                ", reply='" + reply + '\'' +
                ", replytime=" + replytime +
                '}';
    }

    public Integer getMid() {
        return mid;
    }

    public void setMid(Integer mid) {
        this.mid = mid;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Date getMsgtime() {
        return msgtime;
    }

    public void setMsgtime(Date msgtime) {
        this.msgtime = msgtime;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getReply() {
        return reply;
    }

    public void setReply(String reply) {
        this.reply = reply;
    }

    public Date getReplytime() {
        return replytime;
    }

    public void setReplytime(Date replytime) {
        this.replytime = replytime;
    }
}