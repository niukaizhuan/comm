package com.stu.mapper;

import com.stu.pojo.Message;

import java.util.List;


public interface MessageMapper {
    //查询留言
    public List<Message> messageFindAll();
    //查看留言
    public Message getMessageById(Integer id);
    //留言
    public Integer insertMessage(Message message);
    //回复留言
    public Integer updateMessage(Message message);
}
