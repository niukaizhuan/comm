<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/5/4
  Time: 22:06
  To change this template use File | Settings | File Templates.
--%>
<<%@ page contentType="text/html;charset=UTF-8" import="java.util.*" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>招聘信息管理</title>
    <script type="text/javascript" src="/js/jquery-3.4.1.min.js"></script>
    <style type="text/css">
        body{
            background-color: #e6e6fa;
        }
        *{
            font-size: 12px;
        }
    </style>
</head>
<body bgcolor="#2f4f4f">
<form action="" method="post">
    <table width="80%" border="0">
        <tr bgcolor="#DCDCDC">
            <th width="20%" height="30px">学生姓名</th>
            <th width="20%" height="30px">学校名字</th>
            <th width="20%" height="30px">就业公司</th>
            <th width="20%" height="30px">就职岗位</th>
            <th width="20%" height="30px">操作</th>
        </tr>
        <c:forEach var="employment" items="${list}">
            <tr>
                <td align="center" height="26px">
                    <c:out value="${employment.studentname}"></c:out>
                </td>
                <td align="center" height="26px">
                    <c:out value="${employment.school}"></c:out>
                </td>
                <td align="center" height="26px">
                    <c:out value="${employment.companyname}"></c:out>
                </td>
                <td align="center" height="26px">
                    <c:out value="${employment.position}"></c:out>
                </td>
                <td align="center" height="26px">
                    <a href="updateEmployment?eid=${employment.eid}">修改|</a>
                    <a onclick="deleteEmploymentInfo(${employment.eid})">删除</a>
                </td>

            </tr>
        </c:forEach>
    </table>
</form>
<script>
    function deleteEmploymentInfo(eid) {
        console.log(eid)
        if (confirm("您确定要删除该记录吗？")) {
            $.ajax({
                //几个参数需要注意一下
                type: "POST",//方法类型
                // contentType: "application/json",
                dataType: "json",//预期服务器返回的数据类型
                url: "/employment/deleteEmployment" ,//url
                data: {
                    eid: eid
                },
                success: function (data) {
                    console.log(data);//打印服务端返回的数据(调试用)
                    if (data.code ==='200') {
                        alert(data.message);
                        location.reload(true);
                        window.location.href="/employment/employmentList"
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
