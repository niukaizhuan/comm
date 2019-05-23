<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/5/4
  Time: 16:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" import="java.util.*" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>企业基本信息</title>
</head>
<body bgcolor="#2f4f4f">
<form action="" method="post">
    <table width="100%" border="0">
        <tr bgcolor="#DCDCDC">
            <th width="10%" height="30px">公司名称</th>
            <th width="10%" height="30px">单位性质</th>
            <th width="10%" height="30px">营业执照号</th>
            <th width="10%" height="30px">所属行业</th>
            <th width="10%" height="30px">单位规模</th>
            <th width="10%" height="30px">公司地址</th>
            <th width="10%" height="30px">公司网址</th>
            <th width="10%" height="30px">联系人</th>
            <th width="10%" height="30px">电话</th>
            <th width="10%" height="30px">邮箱</th>
            <th width="10%" height="30px">邮编</th>
        </tr>

            <tr>
                <td align="center" height="26px">
                    ${company.companyname}
                </td>
                <td align="center" height="26px">
                    ${company.unitproperty}
                </td>
                <td align="center" height="26px">
                    ${company.licensenumber}
                </td>
                <td align="center" height="26px">
                    ${company.industry}
                </td>
                <td align="center" height="26px">
                    ${company.unitscale}
                </td>
                <td align="center" height="26px">
                    ${company.address}
                </td>
                <td align="center" height="26px">
                    ${company.webaddress}
                </td>
                <td align="center" height="26px">
                    ${company.linkman}
                </td>
                <td align="center" height="26px">
                    ${company.telephone}
                </td>
                <td align="center" height="26px">
                    ${company.email}
                </td>
                <td align="center" height="26px">
                    ${company.postcode}
                </td>
            </tr>
    </table>
</form>
</body>
</html>
