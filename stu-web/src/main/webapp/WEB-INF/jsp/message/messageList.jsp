<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/5/17
  Time: 12:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" import="java.util.*" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>留言管理</title>
    <script type="text/javascript" src="/js/jquery-3.4.1.min.js"></script>
    <style type="text/css">
        body {
            background-color: #e6e6fa;
        }

        * {
            font-size: 12px;
        }
    </style>
</head>
<body bgcolor="#2f4f4f">
<form action="" method="post">
    <table width="80%" border="0">
        <tr bgcolor="#DCDCDC">
            <th width="10%" height="30px">留言人编号</th>
            <th width="10%" height="30px">留言人姓名</th>
            <th width="10%" height="30px">标题</th>
            <th width="10%" height="30px">留言时间</th>
            <th width="20%" height="30px">操作</th>
        </tr>
        <c:forEach var="message" items="${list}">
            <tr>
                <td align="center" height="26px">
                    <c:out value="${message.id}"></c:out>
                </td>
                <td align="center" height="26px">
                    <c:out value="${message.username}"></c:out>
                </td>
                <td align="center" height="26px">
                    <c:out value="${message.title}"></c:out>
                </td>
                <td align="center" height="26px">
                    <c:out value="${message.msgtime}"></c:out>
                </td>

                <td align="center" height="26px">
                        <%--<a href="userList?action=show&id=${user.id}">查看</a>--%>
                    <a href="lookMessage?id=${message.id}">查看|</a>
                    <a href="updateMessage?id=${message.id}">回复|</a>
                    <a onclick="deleteUserInfo(${user.id})">删除</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</form>

<script>
    function deleteUserInfo(id) {
        console.log(id)
        if (confirm("您确定要删除该记录吗？")) {
            // $.post("/user/deleteUser", {id: id}, function (data) {
            //     console.log(data);//打印服务端返回的数据(调试用)
            //     if (data.code === '200') {
            //         alert(data.message);
            //         location.reload(true);
            //         window.location.href = "/user/userList"
            //     } else {
            //         alert(data.message);
            //     }
            // })
            $.ajax({
                //几个参数需要注意一下
                type: "POST",//方法类型
                // contentType: "application/json",
                dataType: "json",//预期服务器返回的数据类型
                url: "/user/deleteUser" ,//url
                data: {
                    id: id
                },
                success: function (data) {
                    console.log(data);//打印服务端返回的数据(调试用)
                    if (data.code ==='200') {
                        alert(data.message);
                        location.reload(true);
                        window.location.href="/user/userList"
                    }else{
                        alert(data.message);
                    }
                },
                error : function(data) {
                    alert(data.message);
                }
            });
        }
    }

</script>
</body>
</html>
