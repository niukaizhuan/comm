<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/5/4
  Time: 11:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" import="java.util.*" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>学生基本信息</title>
</head>
<body bgcolor="#2f4f4f">
<form action="" method="post">
    <table width="100%" border="0">
        <tr bgcolor="#DCDCDC">
            <th width="10%" height="30px">姓名</th>
            <th width="10%" height="30px">性别</th>
            <th width="10%" height="30px">身份证号</th>
            <th width="10%" height="30px">学校</th>
            <th width="10%" height="30px">院系</th>
            <th width="10%" height="30px">专业</th>
            <th width="10%" height="30px">学历</th>
            <th width="10%" height="30px">入学时间</th>
            <th width="10%" height="30px">籍贯</th>
        </tr>
        <%--<c:forEach var="student" items="${sid}">--%>
            <tr>
                <td align="center" height="26px">
                    ${student.sname}
                </td>
                <td align="center" height="26px">
                    ${student.sex}
                </td>
                <td align="center" height="26px">
                    ${student.idnumber}
                </td>
                <td align="center" height="26px">
                    ${student.school}
                </td>
                <td align="center" height="26px">
                    ${student.department}
                </td>
                <td align="center" height="26px">
                    ${student.major}
                </td>
                <td align="center" height="26px">
                    ${student.education}
                </td>
                <td align="center" height="26px">
                    ${student.entrancedate}
                </td>
                <td align="center" height="26px">
                    ${student.nativeplace}
                </td>
            </tr>
        <%--</c:forEach>--%>
    </table>
</form>


</body>
</html>
