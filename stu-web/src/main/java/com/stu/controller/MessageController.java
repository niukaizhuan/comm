package com.stu.controller;

import com.stu.pojo.Message;
import com.stu.pojo.ResultInfo;
import com.stu.service.MessageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;

@RequestMapping("message")
@Controller
public class MessageController {
    @Autowired
    private MessageService messageService;

    /**
     * 留言
     */
    @GetMapping("/addMessage")
    public ModelAndView addMessage(ModelAndView modelAndView) {
        modelAndView.setViewName("message/addMessage");
        return modelAndView;
    }

    @RequestMapping(value = "/addMessage", method = RequestMethod.POST)
    @ResponseBody
    public ResultInfo insertMessage(@RequestBody Message message, HttpSession session) {
        ResultInfo resultInfo = new ResultInfo();
        String result = messageService.insertMessage(message);
        System.out.println(result);
        if (result.equals("success")) {
            resultInfo.setCode("200");
            resultInfo.setMessage("留言成功!");
            session.setAttribute("message", message);
        } else {
            resultInfo.setCode("500");
            resultInfo.setMessage("留言失败!");
        }
        return resultInfo;
    }

    /**
     * 查询留言
     */
    @RequestMapping("/messageList")
    @ResponseBody
    public ModelAndView messageList(ModelAndView modelAndView) {
        List<Message> messageList = messageService.messageFindAll();
        modelAndView.addObject("list", messageList);
        modelAndView.setViewName("message/messageList");
        return modelAndView;
    }

    /**
     * 查看留言
     */
    @RequestMapping("/lookMessage")
    public Message lookMessage(ModelAndView modelAndView, @RequestParam(value = "id", required = false) Integer id) {
        Message message = messageService.getMessageById(id);
        System.out.println(message.toString());
        modelAndView.addObject("message", message);
        modelAndView.setViewName("message/lookMessage");
        return message;
    }

    /**
     * 回复留言
     */
    @GetMapping("/updateMessage")
    public ModelAndView getUpdateMessagePage(ModelAndView modelAndView,@RequestParam(value = "id",required = false) Integer id) {
        Message message = messageService.getMessageById(id);
        System.out.println(message.toString());
        modelAndView.addObject("message", message);
        modelAndView.setViewName("message/updateMessage");
        return modelAndView;
    }

    @RequestMapping(value = "/updateMessage", method = RequestMethod.POST)
    @ResponseBody
    public ResultInfo updateMessage(@RequestBody Message message) {
        System.out.println(message.toString());
        ResultInfo resultInfo = new ResultInfo();
        String result = messageService.updateMessage(message);
        if(result.equals("success")){
            resultInfo.setCode("200");
            resultInfo.setMessage("用户信息更新成功!");
        }else{
            resultInfo.setCode("500");
            resultInfo.setMessage("用户信息更新失败!");
        }
        return resultInfo;
    }

}
