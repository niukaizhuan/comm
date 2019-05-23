<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/5/10
  Time: 17:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改就业信息</title>
    <script type="text/javascript" src="/js/jquery-3.4.1.min.js" ></script>
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
                            &nbsp;<span style="font-weight: bold;">修改就业信息</span>
                        </td>
                        <td colspan="2">&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="2" width="190">
                            <input id="eid" type="hidden" value="${employment.eid}" name="eid" />
                        </td>
                        <td colspan="2" width="190">
                            <input type="hidden" value="sturegister" name="action" />
                        </td>
                    </tr>
                    <tr>
                        <td align="right" height="30" width="190">学生姓名:</td>
                        <td width="310" align="left">&nbsp;&nbsp;
                            <input id="studentname" type="text" name="studentname" value="${employment.studentname}" size="30" />
                        </td>
                    </tr>
                    <tr>
                        <td align="right" height="30" width="190">毕业学校:</td>
                        <td width="310" align="left">&nbsp;&nbsp;
                            <input id="school" type="text" name="school" value="${employment.school}" size="30" />
                        </td>
                    </tr>
                    <tr>
                        <td align="right" height="30">就职公司:</td>
                        <td width="310" align="left">&nbsp;&nbsp;
                            <input id="companyname" type="text" name="companyname" value="${employment.companyname}" size="30" />
                        </td>
                    </tr>
                    <tr>
                        <td align="right" height="30">就职岗位:</td>
                        <td width="310" align="left">&nbsp;&nbsp;
                            <input id="position" type="text" name="position" value="${employment.position}" size="30" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</form>
<button onclick="updateEmploymentInfo()" style="margin-left: 50px; alignment: center">修改保存</button>

<script>
    function updateEmploymentInfo() {
        var employment = {
            eid: $('#eid').val(),
            studentname: $('#studentname').val(),
            school: $('#school').val(),
            companyname: $('#companyname').val(),
            position: $('#position').val()
        };
        console.log(employment)
        $.ajax({
            type:"POST",
            url:"/employment/updateEmployment",
            contentType: "application/json",
            dataType:"json",
            data: JSON.stringify(employment),//要提交是json字符串
            success:function (data) {
                if (data.code === '200') {
                    alert(data.message);
                    window.location.href="/employment/employmentList"
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

