package com.stu.service.impl;

import com.stu.mapper.UserMapper;
import com.stu.pojo.User;
import com.stu.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Service("userService")
@Transactional
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;

    /**
     * 登录查询
     * @param userCode
     * @param password
     * @param userType
     * @return
     */
    @Override
    public User findLoginUser(String userCode, String password, String userType) {
        User user = userMapper.findUser(userCode,password,userType);
        return user;
    }

    public User getUserById(Integer id){
        return userMapper.getUserById(id);
    }

    /**
     * 查询所有用户
     * @return
     */
    @Override
    public List<User> findUserAll() {
        return userMapper.findUserAll();
    }

    /**
     * 添加用户
     * @param user
     * @return
     */
    @Override
    public String addUser(User user) {
        if(userMapper.addUser(user)>0){
            return "success";
        }else{
            return "fail";
        }
    }
    /**
     * 修改用户
     * @param user
     * @return
     */
    @Override
    public String updateUser(User user) {
        if(userMapper.updateUser(user)>0){
            return "success";
        }else{
            return "fail";
        }
    }
    /**
     * 删除用户
     * @param id
     * @return
     */

    @Override
    public String deleteUser(Integer id) {
        if(userMapper.deleteUser(id)>0){
            return "success";
        }
        return "fail";
    }

    /**
     * 修改密码
     */
    @Override
    public User updatePassword(Integer id, String newpassword) {
        User user = userMapper.updatePassword(id,newpassword);
        user.setPassword(newpassword);
        return user;
    }
}
