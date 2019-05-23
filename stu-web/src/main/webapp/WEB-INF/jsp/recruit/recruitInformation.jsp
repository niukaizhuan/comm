<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/5/10
  Time: 14:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>招聘信息</title>
</head>
<body bgcolor="#2f4f4f">
<form action="" method="post">
    <table width="100%" border="0">
        <tr bgcolor="#DCDCDC">
            <th width="10%" height="30px">招聘单位名称</th>
            <th width="10%" height="30px">单位地址</th>
            <th width="10%" height="30px">邮编</th>
            <th width="10%" height="30px">招聘人数</th>
            <th width="10%" height="30px">工作地点</th>
            <th width="10%" height="30px">职位性质</th>
            <th width="10%" height="30px">学历要求</th>
            <th width="10%" height="30px">职位描述及要求</th>
            <th width="10%" height="30px">使用部门</th>
            <th width="10%" height="30px">联系人</th>
            <th width="10%" height="30px">联系电话</th>
            <th width="10%" height="30px">单位主页</th>
            <th width="10%" height="30px">邮箱</th>
        </tr>

        <tr>
            <td align="center" height="26px">
                ${recruit.companyname}
            </td>
            <td align="center" height="26px">
                ${recruit.address}
            </td>
            <td align="center" height="26px">
                ${recruit.postcode}
            </td>
            <td align="center" height="26px">
                ${recruit.recruitment}
            </td>
            <td align="center" height="26px">
                ${recruit.workingplace}
            </td>
            <td align="center" height="26px">
                ${recruit.positiontype}
            </td>
            <td align="center" height="26px">
                ${recruit.edurequire}
            </td>
            <td align="center" height="26px">
                ${recruit.description}
            </td>
            <td align="center" height="26px">
                ${recruit.branch}
            </td>
            <td align="center" height="26px">
                ${recruit.linkman}
            </td>
            <td align="center" height="26px">
                ${recruit.telephone}
            </td>
            <td align="center" height="26px">
                ${recruit.hostpage}
            </td>
            <td align="center" height="26px">
                ${recruit.email}
            </td>
        </tr>
    </table>
</form>
</body>
</html>
