<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/5/4
  Time: 14:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<html>
<head>
    <title>添加学生信息</title>
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
                            &nbsp;<span style="font-weight: bold;">基本信息</span>
                        </td>
                        <td colspan="2">&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="2" width="190">
                            <input id="id" type="hidden" value="${student.sid}" name="sid" />
                        </td>
                        <td colspan="2" width="190">
                            <input type="hidden" value="sturegister" name="action" />
                        </td>
                    </tr>
                    <tr>
                        <td align="right" height="30" width="190">姓名:</td>
                        <td width="310" align="left">&nbsp;&nbsp;
                            <input type="text" id="sname" name="sname" size="30" />
                        </td>
                    </tr>
                    <tr>
                        <td align="right"  height="30">性别:</td>
                        <td >&nbsp;&nbsp;
                            <input type="radio" id="sex" name="sex" value="男" data="男" checked="checked" style="border: 0;" />
                            男&nbsp;
                            <input type="radio" id="sex" name="sex" value="女" data="女" style="border: 0;" />
                            女&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td align="right" height="30">身份证号:</td>
                        <td width="310" align="left">&nbsp;&nbsp;
                            <input type="text" id="idnumber" name="idnumber" size="30" />
                        </td>
                    </tr>
                    <tr>
                        <td align="right" height="30">学校:</td>
                        <td width="310" align="left">&nbsp;&nbsp;
                            <input type="text" id="school" name="school" size="30" />
                        </td>
                    </tr>
                    <tr>
                        <td align="right" height="30">院系:</td>
                        <td width="310" align="left">&nbsp;&nbsp;
                            <input type="text" id="department" name="department" size="30" />
                        </td>
                    </tr>
                    <tr>
                        <td align="right" height="30">专业:</td>
                        <td width="310" align="left">&nbsp;&nbsp;
                            <input type="text" id="major" name="major" size="30" />
                        </td>
                    </tr>
                    <tr>
                        <td align="right" height="30">学历:</td>
                        <td height="30">&nbsp;&nbsp;
                            <select id="education" name="education">
                                <option value="00" selected="selected">请选择</option>
                                <option value="专科">专科</option>
                                <option value="本科">本科</option>
                                <option value="硕士研究生">硕士研究生</option>
                                <option value="博士研究生">博士研究生</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" height="30">入学时间:</td>
                        <td width="310" align="left">&nbsp;&nbsp;
                            <input type="text" id="entrancedate" name="entrancedate" style="width: 100px;" />
                        </td>
                    </tr>
                    <tr>
                        <td align="right" height="30">籍贯:</td>
                        <td height="30">&nbsp;&nbsp;
                            <select id="nativeplace" name="nativeplace">
                                <option value="00" selected="selected">请选择</option>
                                <option value="北京">北京</option>
                                <option value="安徽">安徽</option>
                                <option value="贵州">贵州</option>
                                <option value="江苏">江苏</option>
                                <option value="四川">四川</option>
                                <option value="云南">云南</option>
                                <option value="湖南">湖南</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td align="center" height="30">
                            <input name="button" id="button"  type="button" value="添加" onclick="addStudentInfo()" style="margin-left: 50px;"/>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</form>
<script>
    function addStudentInfo() {
        var student = {
            sid: $('#sid').val(),
            sname: $('#sname').val(),
            sex:$("input[name='sex']:checked").attr('data'),
            //sex: $('#sex').val(),
            idnumber: $('#idnumber').val(),
            school: $('#school').val(),
            department: $('#department').val(),
            major: $('#major').val(),
            education: $('#education option:selected').val(),
            entrancedate: $('#entrancedate').val(),
            nativeplace: $('#nativeplace option:selected').val()
        };
        console.log(student)
        $.ajax({
            type:"POST",
            url:"/student/addStudent",
            contentType: "application/json",
            dataType:"json",
            data: JSON.stringify(student),//要提交是json字符串
            success:function (data) {
                if (data.code === '200') {
                    alert(data.message);
                    window.location.href="/student/studentList"
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
