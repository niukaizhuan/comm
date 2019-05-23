<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/4/28
  Time: 23:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>登录页</title>
    <link rel="stylesheet" type="text/css" href="/css/login.css"/>
</head>

<script >
    function check() {
        var userName=$(#userName).val();
        var password=$(#password).val();
        if(userName==null||password==null){
            $("#message").text("");
            return false;
        }
        if(userName==""||password==""){
            alert("账号或密码不能为空!");
            return false;
        }else{
            return true;
        }

    }
    //登录
    <%--$("#submitBtn").click(function () {--%>
        <%--var data=$("#form").serialize();--%>
        <%--$.ajax({--%>
            <%--type:"post",--%>
            <%--url:"login",--%>
            <%--data:data,--%>
            <%--dataType:"json", //返回的数据类型--%>
            <%--success:function (data) {--%>
                <%--if("success"==data.type){--%>
                    <%--window.location.href="index";--%>
                <%--} else if("admin"==${USERSESSION.userType}){--%>
                    <%--window.location.href="/admin/adminIndex";--%>
                <%--}else if("student"==${USERSESSION.userType}){--%>
                    <%--window.location.href="/student/studentIndex";--%>
                <%--}else if("company"==${USERSESSION.userType}){--%>
                    <%--window.location.href="/company/companyIndex";--%>
                <%--}--%>
            <%--}--%>
        <%--})--%>

    <%--})--%>
</script>
<body>
<div class="jq22-container" style="padding-top:100px">
    <div class="login-wrap">


        <div class="login-html">
            <input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">登录</label>
            <input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">注册</label>
            <div class="login-form">
                <form id="form" action="/login" method="post" >
                    <font color="red">
                        <span id="message">${msg}</span>
                    </font>
                    <div class="sign-in-htm">
                    <div class="group">
                        <label for="user" class="label">用户名</label>
                        <input id="user" name="userCode" type="text" class="input">
                    </div>
                    <div class="group">
                        <label for="pass" class="label">密码</label>
                        <input id="pass" type="password" name="password" class="input" data-type="password">
                    </div>
                    <div class="group">
                        <label for="pass" class="label">用户身份</label>
                        <input type="radio" value="student" name="userType" checked="checked">
                        <span >学生</span>&nbsp;
                        <input type="radio" value="company" name="userType" >
                        <span >企业</span>&nbsp;
                        <input type="radio" value="admin" name="userType" >
                        <span >管理员</span>
                    </div>
                    <div class="group">
                        <input id="check" type="checkbox" class="check" checked>
                        <label for="check"><span class="icon"></span>保持登陆状态</label>
                    </div>
                    <div class="group">
                        <input id="submitBtn" name="submitBtn" type="submit" class="button" value="登陆" >
                    </div>
                    <div class="hr"></div>
                    <div class="foot-lnk">
                        <a href="#forgot">忘记密码?</a>
                    </div>
                </div>
                </form>
                <form action="/register" method="post" >
                <div class="sign-up-htm">
                    <div class="group">
                        <label for="user" class="label">用户名</label>
                        <input id="user" type="text" class="input">
                    </div>
                    <div class="group">
                        <label for="pass" class="label">密码</label>
                        <input id="pass" type="password" class="input" data-type="password">
                    </div>
                    <div class="group">
                        <label for="pass" class="label">确认密码</label>
                        <input id="pass" type="password" class="input" data-type="password">
                    </div>
                    <div class="group">
                        <label for="pass" class="label">电子邮箱</label>
                        <input id="pass" type="text" class="input">
                    </div>
                    <div class="group">
                        <input type="submit" class="button" value="注册">
                    </div>
                    <div class="hr"></div>
                    <div class="foot-lnk">
                        <label for="tab-1">已经注册?</label>>
                    </div>
                </div>
                </form>
            </div>
        </div>
        </form>
    </div>
</div>

</body>
</html>
