package com.stu.service;

import com.stu.pojo.Message;

import java.util.List;

public interface MessageService {
    //查询所有学生数据
    public List<Message> messageFindAll();
    //查询回复
    public Message getMessageById(Integer id);
    //留言
    public String insertMessage(Message message);
    //回复留言
    public String updateMessage(Message message);
}
