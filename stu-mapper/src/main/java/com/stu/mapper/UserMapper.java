package com.stu.mapper;

import com.stu.pojo.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserMapper {
    //用户登录
    public User findUser(@Param("userCode")String userCode,
                         @Param("password")String password,
                         @Param("userType")String userType);
    //查询所有用户
    public List<User> findUserAll();


    public User getUserById(Integer id);
    //添加用户
    public Integer addUser(User user);
    //修改用户信息
    public Integer updateUser(User user);
    //删除用户
    public Integer deleteUser(Integer id);
    //修改密码
    public User updatePassword(Integer id,String newpassword);
}
