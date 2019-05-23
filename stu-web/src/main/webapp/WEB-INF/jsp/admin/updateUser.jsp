<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/5/5
  Time: 8:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<html>
<head>
    <script type="text/javascript" src="/js/jquery-3.4.1.min.js" ></script>
    <title>修改用户</title>
</head>
<body bgcolor="#2f4f4f">
<form  style="margin: 0px;">
    <%--<jsp:include page="info.jsp"></jsp:include>--%>
    <table class="regtable" width="500" align="center" border="0" cellpadding="5" cellspacing="1">
        <tr>
            <td valign="top" width="500" bgcolor="#f9f9f9" height="350">
                <table width="500" align="center" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td colspan="2" class="tdinfo" height="25">
                            &nbsp;<span style="font-weight: bold;">修改用户信息</span>
                        </td>
                        <td colspan="2">&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="2" width="190">
                            <input id="id" type="hidden" value="${user.id}" name="id" />
                        </td>
                        <td colspan="2" width="190">
                            <input type="hidden" value="sturegister" name="action" />
                        </td>
                    </tr>
                    <tr>
                        <td align="right" height="30" width="190">姓名:</td>
                        <td width="310" align="left">&nbsp;&nbsp;
                            <input id="userName" type="text" name="userName" value="${user.userName}" size="30" />
                        </td>
                    </tr>
                    <tr>
                        <td align="right" height="30" width="190">账号:</td>
                        <td width="310" align="left">&nbsp;&nbsp;
                            <input id="userCode" type="text" name="userCode" value="${user.userCode}" size="30" />
                        </td>
                    </tr>
                    <tr>
                        <td align="right" height="30">密码:</td>
                        <td width="310" align="left">&nbsp;&nbsp;
                            <input id="password" type="text" name="password" value="${user.password}" size="30" />
                        </td>
                    </tr>
                    <tr>
                        <td align="right" height="30">用户类型:</td>
                        <td height="30">&nbsp;&nbsp;
                            <select id="userType" name="education" >
                                <option value="student" ${user.userType == 'student' ? 'selected="selected"':''}>student</option>
                                <option value="admin" ${user.userType == 'admin' ? 'selected="selected"':''}>admin</option>
                                <option value="company" ${user.userType == 'company' ? 'selected="selected"':''}>company</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" height="30">状态:</td>
                        <td height="30">&nbsp;&nbsp;
                            <select id="verify" name="education">
                                <option value="1" ${user.verify == 1 ? 'selected="selected"':''}>未注册</option>
                                <option value="2" ${user.verify == 2 ? 'selected="selected"':''}>已激活</option>
                                <option value="3" ${user.verify == 3 ? 'selected="selected"':''}>未激活</option>
                            </select>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</form>
<button onclick="updateUserInfo()" style="margin-left: 50px; alignment: center">修改保存</button>

<script>
    function updateUserInfo() {
        var user = {
            id: $('#id').val(),
            userName: $('#userName').val(),
            userCode: $('#userCode').val(),
            password: $('#password').val(),
            userType: $('#userType option:selected').val(),
            verify: $('#verify option:selected').val()
        };
        console.log(user)
        $.ajax({
            type:"POST",
            url:"/user/updateUser",
            contentType: "application/json",
            dataType:"json",
            data: JSON.stringify(user),//要提交是json字符串
            success:function (data) {
                if (data.code === '200') {
                    alert(data.message);
                    window.location.href="/user/userList"
                } else {
                    alert(data.message);
                }
            },
            error:function (error) {
            }
        })
    }

</script>

</body>
</html>
