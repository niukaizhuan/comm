<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/5/3
  Time: 0:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>无标题文档</title>
    <link href="/css/left.css" rel="stylesheet" type="text/css" />
    <script language="JavaScript" src="/js/jquery-1.x.js"></script>
    <script type="text/javascript">
        $(function(){
            //导航切换
            $(".menuson li").click(function(){
                $(".menuson li.active").removeClass("active")
                $(this).addClass("active");
            });

            $('.title').click(function(){
                var $ul = $(this).next('ul');
                $('dd').find('ul').slideUp();
                if($ul.is(':visible')){
                    $(this).next('ul').slideUp();
                }else{
                    $(this).next('ul').slideDown();
                }
            });
        })
    </script>
</head>
<body style="background:#f0f9fd;">
<div class="lefttop"><span></span>管理员导航栏</div>
<dl class="leftmenu">
    <dd>
        <div class="title"> <span><img src="/images/leftico05.png" /></span>系统管理管理 </div>
        <ul class="menuson">
            <li class="active"><cite></cite><a href="main" target="rightFrame">首页</a><i></i></li>
            <li><cite></cite><a href="/user/userList" target="rightFrame">用户管理</a><i></i></li>
            <li><cite></cite><a href="/message/messageList" target="rightFrame">留言管理</a><i></i></li>
        </ul>
    </dd>
    <dd>
        <div class="title"> <span><img src="/images/leftico02.png" /></span>学生管理</div>
        <ul class="menuson">
            <li><cite></cite><a href="/student/addStudent" target="rightFrame">添加学生信息</a><i></i></li>
            <li class="active"><cite></cite><a href="/student/studentList" target="rightFrame">管理学生信息</a><i></i></li>
        </ul>
    </dd>
    <dd>
        <div class="title"><span><img src="/images/leftico05.png" /></span>企业管理管理</div>
        <ul class="menuson">
            <li><cite></cite><a href="/company/addCompany" target="rightFrame">添加企业信息</a><i></i></li>
            <li class="active"><cite></cite><a href="/company/companyList" target="rightFrame">管理企业信息</a><i></i></li>
        </ul>
    </dd>
    <dd>
        <div class="title"><span><img src="/images/leftico04.png" /></span>就业信息管理</div>
        <ul class="menuson">
            <li><cite></cite><a href="/recruit/recruitList" target="rightFrame">管理招聘信息</a><i></i></li>
            <li><cite></cite><a href="/employment/postEmployment" target="rightFrame">发布就业信息</a><i></i></li>
            <li><cite></cite><a href="/employment/employmentList" target="rightFrame">管理就业信息</a><i></i></li>
        </ul>
    </dd>
</dl>

</body>
</html>

