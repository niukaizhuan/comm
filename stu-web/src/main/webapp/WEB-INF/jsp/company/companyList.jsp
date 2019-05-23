<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/5/4
  Time: 15:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" import="java.util.*" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>企业信息管理</title>
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
            <th width="20%" height="30px">公司名称</th>
            <th width="20%" height="30px">单位性质</th>
            <th width="20%" height="30px">营业执照号</th>
            <th width="20%" height="30px">所属行业</th>
            <th width="20%" height="30px">操作</th>
        </tr>
        <c:forEach var="company" items="${list}">
            <tr>
                <td align="center" height="26px">
                    <c:out value="${company.companyname}"></c:out>
                </td>
                <td align="center" height="26px">
                    <c:out value="${company.unitproperty}"></c:out>
                </td>
                <td align="center" height="26px">
                    <c:out value="${company.licensenumber}"></c:out>
                </td>
                <td align="center" height="26px">
                    <c:out value="${company.industry}"></c:out>
                </td>
                <td align="center" height="26px">
                    <a href="/company/companyInformation?action=show&cid=${company.cid}">查看|</a>
                    <a onclick="deleteCompany(${company.cid})">删除|</a>
                    <a href="/recruit/postRecruit?cid=${company.cid}">发布招聘</a>
                </td>

            </tr>
        </c:forEach>
    </table>
</form>
<script>
    function deleteCompany(cid) {
        console.log(cid)
        if (confirm("您确定要删除该记录吗？")) {
            $.ajax({
                //几个参数需要注意一下
                type: "POST",//方法类型
                // contentType: "application/json",
                dataType: "json",//预期服务器返回的数据类型
                url: "/company/deleteCompany" ,//url
                data: {
                    cid: cid
                },
                success: function (data) {
                    console.log(data);//打印服务端返回的数据(调试用)
                    if (data.code ==='200') {
                        alert(data.message);
                        location.reload(true);
                        window.location.href="/company/companyList"
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
