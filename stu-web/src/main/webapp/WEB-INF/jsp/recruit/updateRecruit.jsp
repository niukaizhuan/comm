<%--
  Created by IntelliJ IDEA.
  recruit: Administrator
  Date: 2019/5/10
  Time: 14:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>

    <title>修改招聘信息</title>
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
                            &nbsp;<span style="font-weight: bold;">修改招聘信息</span>
                        </td>
                        <td colspan="2">&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="2" width="190">
                            <input id="rid" type="hidden" value="${recruit.rid}" name="rid" />
                        </td>
                        <td colspan="2" width="190">
                            <input type="hidden" value="sturegister" name="action" />
                        </td>
                    </tr>
                    <tr>
                        <td align="right" height="30" width="190">招聘单位id:</td>
                        <td width="310" align="left">&nbsp;&nbsp;
                            <input id="cid" type="text" name="cid" value="${recruit.cid}" size="30" />
                        </td>
                    </tr>
                    <tr>
                        <td align="right" height="30" width="190">招聘单位名称:</td>
                        <td width="310" align="left">&nbsp;&nbsp;
                            <input id="companyname" type="text" name="companyname" value="${recruit.companyname}" size="30" />
                        </td>
                    </tr>
                    <tr>
                        <td align="right" height="30">单位地址:</td>
                        <td height="30">&nbsp;&nbsp;
                            <select id="address" name="address" >
                                <option value="南京" ${recruit.address == '南京' ? 'selected="selected"':''}>南京</option>
                                <option value="北京" ${recruit.address == '北京' ? 'selected="selected"':''}>北京</option>
                                <option value="上海" ${recruit.address == '上海' ? 'selected="selected"':''}>上海</option>
                                <option value="深圳" ${recruit.address == '深圳' ? 'selected="selected"':''}>深圳</option>
                                <option value="广东" ${recruit.address == '广东' ? 'selected="selected"':''}>广东</option>
                                <option value="苏州" ${recruit.address == '苏州' ? 'selected="selected"':''}>苏州</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" height="30" width="190">邮编:</td>
                        <td width="310" align="left">&nbsp;&nbsp;
                            <input id="postcode" type="text" name="postcode" value="${recruit.postcode}" size="30" />
                        </td>
                    </tr>
                    <tr>
                        <td align="right" height="30">招聘人数:</td>
                        <td width="310" align="left">&nbsp;&nbsp;
                            <input id="recruitment" type="text" name="recruitment" value="${recruit.recruitment}" size="30" />
                        </td>
                    </tr>
                    <tr>
                        <td align="right" height="30">工作地点:</td>
                        <td height="30">&nbsp;&nbsp;
                            <select id="workingplace" name="workingplace" >
                                <option value="南京" ${recruit.workingplace == '南京' ? 'selected="selected"':''}>南京</option>
                                <option value="北京" ${recruit.workingplace == '北京' ? 'selected="selected"':''}>北京</option>
                                <option value="上海" ${recruit.workingplace == '上海' ? 'selected="selected"':''}>上海</option>
                                <option value="深圳" ${recruit.workingplace == '深圳' ? 'selected="selected"':''}>深圳</option>
                                <option value="广东" ${recruit.workingplace == '广东' ? 'selected="selected"':''}>广东</option>
                                <option value="苏州" ${recruit.workingplace == '苏州' ? 'selected="selected"':''}>苏州</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" height="30">职位性质:</td>
                        <td height="30">&nbsp;&nbsp;
                            <select id="positiontype" name="positiontype" >
                                <option value="全职" ${recruit.positiontype == '全职' ? 'selected="selected"':''}>全职</option>
                                <option value="兼职" ${recruit.positiontype == '兼职' ? 'selected="selected"':''}>兼职</option>
                                <option value="实习" ${recruit.positiontype == '实习' ? 'selected="selected"':''}>实习</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" height="30">学历要求:</td>
                        <td height="30">&nbsp;&nbsp;
                            <select id="edurequire" name="edurequire" >
                                <option value="专科" ${recruit.edurequire == '专科' ? 'selected="selected"':''}>专科</option>
                                <option value="本科" ${recruit.edurequire == '本科' ? 'selected="selected"':''}>本科</option>
                                <option value="硕士研究生" ${recruit.edurequire == '硕士研究生' ? 'selected="selected"':''}>硕士研究生</option>
                                <option value="博士研究生" ${recruit.edurequire == '博士研究生' ? 'selected="selected"':''}>博士研究生</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" height="30">职位描述及要求:</td>
                        <td width="310" align="left">&nbsp;&nbsp;
                            <input id="description" type="text" name="description" value="${recruit.description}" size="30" />
                        </td>
                    </tr>
                    <tr>
                        <td align="right" height="30">使用部门:</td>
                        <td width="310" align="left">&nbsp;&nbsp;
                            <input id="branch" type="text" name="branch" value="${recruit.branch}" size="30" />
                        </td>
                    </tr>
                    <tr>
                        <td align="right" height="30">联系人:</td>
                        <td width="310" align="left">&nbsp;&nbsp;
                            <input id="linkman" type="text" name="linkman" value="${recruit.linkman}" size="30" />
                        </td>
                    </tr>
                    <tr>
                        <td align="right" height="30">联系电话:</td>
                        <td width="310" align="left">&nbsp;&nbsp;
                            <input id="telephone" type="text" name="telephone" value="${recruit.telephone}" size="30" />
                        </td>
                    </tr>
                    <tr>
                        <td align="right" height="30">单位主页:</td>
                        <td width="310" align="left">&nbsp;&nbsp;
                            <input id="hostpage" type="text" name="hostpage" value="${recruit.hostpage}" size="30" />
                        </td>
                    </tr>
                    <tr>
                        <td align="right" height="30">邮箱:</td>
                        <td width="310" align="left">&nbsp;&nbsp;
                            <input id="email" type="text" name="email" value="${recruit.email}" size="30" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</form>
<button onclick="updateRecruitInfo()" style="margin-left: 50px; alignment: center">修改保存</button>

<script>
    function updateRecruitInfo() {
        var recruit = {
            rid: $('#rid').val(),
            cid: $('#cid').val(),
            companyname: $('#companyname').val(),
            address: $('#address option:selected').val(),
            postcode: $('#postcode').val(),
            recruitment: $('#recruitment').val(),
            workingplace: $('#workingplace option:selected').val(),
            positiontype: $('#positiontype option:selected').val(),
            edurequire: $('#edurequire option:selected').val(),
            description: $('#description').val(),
            branch: $('#branch').val(),
            linkman: $('#linkman').val(),
            telephone: $('#telephone').val(),
            hostpage: $('#hostpage').val(),
            email: $('#email').val()
        };
        console.log(recruit)
        $.ajax({
            type:"POST",
            url:"/recruit/updateRecruit",
            contentType: "application/json",
            dataType:"json",
            data: JSON.stringify(recruit),//要提交是json字符串
            success:function (data) {
                if (data.code === '200') {
                    alert(data.message);
                    window.location.href="/recruit/recruitList"
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
