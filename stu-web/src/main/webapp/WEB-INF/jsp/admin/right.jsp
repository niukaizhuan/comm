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
    <title>学生就业后台管理</title>
    <link href="/css/layout.css" rel="stylesheet" type="text/css" />
    <link href="/css/list.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="/js/jquery-1.x.js"></script>
    <script type="text/javascript" src="/js/tableOperator.js"></script>
</head>
<body bgcolor="#2f4f4f">
<div class="place"> <span>位置：</span>
    <ul class="placeul">
        <li><a href="main.jsp">首页</a></li>
        <li><a href="#">系统管理员管理</a></li>
        <li><a href="#">首页</a></li>
    </ul>
    <div class="date_text"><img src="/images/leftico04.png">&nbsp;今天是2019年5月10日 星期一 12：00</div>
</div>
<div class="rightinfo">
    <div class="tools">
        <ul class="toolbar">
            <li ><span><img src="/images/t01.png" /></span>添加</li>
            <li ><span><img src="/images/t02.png" /></span>修改</li>
            <li class="click"><span><img src="/images/t03.png" /></span>删除</li>
            <li><a href="/jqueryChart.html"><span><img src="/images/t04.png" /></span>统计</a></li>
            <li><span><img src="/images/t05.png" /></span>设置</li>
        </ul>
    </div>
    <table class="tablelist">
        <p style="font-size: 25px;line-height: 30px;height: 30px">欢迎使用学生就业管理系统</p>
        <p>开发周期:2019/5</p>
        <hr>
        <h2>系统环境</h2>
        <p>系统环环境:Windows 10</p>
        <p>开发环境:IDEA</p>
        <p>jdk版本:JDK 1.8</p>
        <p>服务器:Tomcat 9.0</p>
        <p>数据库:5.1</p>
        <p>系统采用技术:ssm+jsp+juqery+Ajax+面向接口编程</p>

    </table>

    <script type="text/javascript">
        function selectAll(){
            var items=$("[name='checkItem']");
            var checkAll=$("#checkAll");
            $("#checkOther").prop("checked",false);
            for(var i=0;i<items.length;i++){
                $(items[i]).prop("checked",checkAll.prop("checked"));
            }
        }
        function selectOther(){
            var items=$("[name='checkItem']");
            $("#checkAll").prop("checked",false);
            for(var i=0;i<items.length;i++){
                $(items[i]).prop("checked",!$(items[i]).prop("checked"));
            }
        }
    </script>
    <div class="pagin">
        <div class="message">共<i class="blue">1256</i>条记录，当前显示第&nbsp;<i class="blue">2&nbsp;</i>页</div>
        <ul class="paginList">
            <li class="paginItem"><a href="#"><span class="pagepre"></span></a></li>
            <li class="paginItem"><a href="#">1</a></li>
            <li class="paginItem current"><a href="#">2</a></li>
            <li class="paginItem"><a href="#">3</a></li>
            <li class="paginItem"><a href="#">4</a></li>
            <li class="paginItem"><a href="#">5</a></li>
            <li class="paginItem more"><a href="#">...</a></li>
            <li class="paginItem"><a href="#">10</a></li>
            <li class="paginItem"><a href="#"><span class="pagenxt"></span></a></li>
        </ul>
    </div>
</div>
</body>
</html>
