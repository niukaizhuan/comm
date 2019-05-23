<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/5/3
  Time: 0:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" import="java.util.*" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>无标题文档</title>
    <link href="/css/layui.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="/js/jquery-3.4.1.min.js" ></script>
    <script type="text/javascript" src="/js/layui.js"></script>
    <script type="text/javascript" src="/js/layui.all.js"></script>
</head>
<body>
<ul class="layui-nav">
    <li class="layui-nav-item">
        <img src="/img/bg.jpg" width="50px" height="30px" alt=""/>
    </li>
    <li class="layui-nav-item">
        <h1>欢迎使用学生就业管理系统</h1>
    </li>
    <li class="layui-nav-item">
        <a href="">个人中心<span class="layui-badge-dot"></span></a>
    </li>
    <li class="layui-nav-item" lay-unselect="">
        <a href="javascript:;"><img src="//t.cn/RCzsdCq" width="20px" height="20px" class="layui-nav-img">欢迎你${user.userName}|</a>
    </li>
    <li class="layui-nav-item">
        <a onclick="logout()" style="float: right">退出</a>
    </li>
</ul>
<div style="margin-top: 15px;"></div>
<script>
function logout() {
    $.get("/logout", {}, function (data) {
        console.log(data);//打印服务端返回的数据(调试用)
        if (data.code === '200') {
            alert(data.message);
            location.reload(true);
            window.parent.location.href = "/"
        } else {
            alert(data.message);
        }
    })
}
</script>
</body>
</html>

