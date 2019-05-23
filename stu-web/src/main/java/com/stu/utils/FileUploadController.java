package com.stu.utils;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.util.List;
import java.util.UUID;

/**
 * 文件上传
 */
@Controller
public class FileUploadController {
    /**
     * 执行文件上传
     */
    @RequestMapping("/fileUpload")
    public String handleFormUpload(@RequestParam("name")String name, @RequestParam("uploadfile") List<MultipartFile> uploadfile, HttpServletRequest request) {
        //判断所传文件是否存在
        if (!uploadfile.isEmpty() && uploadfile.size() > 0) {
            //循环输出上传的文件
            for (MultipartFile file : uploadfile) {
                //获取上传文件的原始名称
                String originalFilename = file.getOriginalFilename();
                //设置上传文件的保存地址目录
                String dirPath = request.getServletContext().getRealPath("/upload/");
                File filePath = new File(dirPath);
                //如果保存地址不存在就先创建
                if (!filePath.exists()) {
                    filePath.mkdirs();
                }
                //使用XXX重命名上传文件名称
                String newFilename = name + "_" + UUID.randomUUID() + "_" + originalFilename;
                //使用MultipartFile接口的方法完成文件上传的指定位置
                try {
                    file.transferTo(new File(dirPath + newFilename));
                } catch (Exception e) {
                    e.printStackTrace();
                    return "error";
                }
            }
            //跳转到成功页面
            return "success";
        } else {
            return "error";
        }
    }
}
