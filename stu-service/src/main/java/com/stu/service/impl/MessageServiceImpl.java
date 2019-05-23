package com.stu.service.impl;

import com.stu.mapper.MessageMapper;
import com.stu.pojo.Message;
import com.stu.service.MessageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("messageService")
public class MessageServiceImpl implements MessageService {
    @Autowired
    private MessageMapper messageMapper;

    @Override
    public List<Message> messageFindAll() {
        return messageMapper.messageFindAll();
    }

    /**
     * 查看留言
     *
     * @param mid
     * @return
     */
    @Override
    public Message getMessageById(Integer mid) {
        return messageMapper.getMessageById(mid);
    }

    /**
     * 留言
     *
     * @param message
     * @return
     */
    @Override
    public String insertMessage(Message message) {
        if (messageMapper.insertMessage(message) > 0) {
            return "success";
        } else {
            return "fail";
        }
    }

    /**
     * 回复留言
     *
     * @param message
     * @return
     */
    @Override
    public String updateMessage(Message message) {
        if (messageMapper.updateMessage(message) > 0) {
            return "success";
        } else {
            return "fail";
        }
    }
}
