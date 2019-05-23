package com.stu.service;

import com.stu.pojo.User;

import java.util.List;

public interface UserService {
    //用户登录
    public User findLoginUser(String userCode,String password,String userType);

    public User getUserById(Integer id);
    //查询所有用户
    public List<User> findUserAll();
    //添加用户
    public String addUser(User user);
    //修改用户信息
    public String updateUser(User user);
    //删除用户
    public String deleteUser(Integer id);
    //修改密码
    public User updatePassword(Integer id,String newpassword);
}
