<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/5/4
  Time: 15:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加企业信息</title>
    <script type="text/javascript" src="/js/jquery-3.4.1.min.js" ></script>
</head>
<body bgcolor="#2f4f4f">
<form method="post" action="" style="margin: 0px;">
    <%--<jsp:include page="info.jsp"></jsp:include>--%>
    <table class="regtable" width="500" align="center" border="0" cellpadding="5" cellspacing="1">
        <tr>
            <td valign="top" width="500" bgcolor="#f9f9f9" height="350">
                <table width="500" align="center" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td colspan="2" class="tdinfo" height="25">
                            &nbsp;<span style="font-weight: bold;">企业基本信息表</span>
                        </td>
                        <td colspan="2">&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="2" width="190">
                            <input id="cid" type="hidden" value="${company.cid}" name="cid" />
                        </td>
                        <td colspan="2" width="190">
                            <input type="hidden" value="sturegister" name="action" />
                        </td>
                    </tr>
                    <tr>
                        <td align="right" height="30" width="190">公司名称:</td>
                        <td width="310" align="left">&nbsp;&nbsp;
                            <input type="text" id="companyname" name="companyname" size="30" />
                        </td>
                    </tr>
                    <tr>
                        <td align="right" height="30" width="190">单位性质:</td>
                        <td width="310" align="left">&nbsp;&nbsp;
                            <input type="text" id="unitproperty" name="unitproperty" size="30" />
                        </td>
                    </tr>
                    <tr>
                        <td align="right" height="30">营业执照号:</td>
                        <td width="310" align="left">&nbsp;&nbsp;
                            <input type="text" id="licensenumber" name="licensenumber" size="30" />
                        </td>
                    </tr>
                    <tr>
                        <td align="right" height="30">所属行业:</td>
                        <td width="310" align="left">&nbsp;&nbsp;
                            <input type="text" id="industry" name="industry" size="30" />
                        </td>
                    </tr>
                    <tr>
                        <td align="right" height="30">单位规模:</td>
                        <td width="310" align="left">&nbsp;&nbsp;
                            <input type="text" id="unitscale" name="unitscale" size="30" />
                        </td>
                    </tr>
                    <tr>
                        <td align="right" height="30">公司地址:</td>
                        <td width="310" align="left">&nbsp;&nbsp;
                            <input type="text" id="address" name="address" size="30" />
                        </td>
                    </tr>
                    <tr>
                        <td align="right" height="30">公司网址:</td>
                        <td width="310" align="left">&nbsp;&nbsp;
                            <input type="text" id="webaddress" name="webaddress" size="30" />
                        </td>
                    </tr>
                    <tr>
                        <td align="right" height="30">联系人:</td>
                        <td width="310" align="left">&nbsp;&nbsp;
                            <input type="text" id="linkman" name="linkman" size="30" />
                        </td>
                    </tr>
                    <tr>
                        <td align="right" height="30">电话:</td>
                        <td width="310" align="left">&nbsp;&nbsp;
                            <input type="text" id="telephone" name="telephone" size="30" />
                        </td>
                    </tr>
                    <tr>
                        <td align="right" height="30">邮箱:</td>
                        <td width="310" align="left">&nbsp;&nbsp;
                            <input type="text" id="email" name="email" size="30" />
                        </td>
                    </tr>
                    <tr>
                        <td align="right" height="30">邮编:</td>
                        <td width="310" align="left">&nbsp;&nbsp;
                            <input type="text" id="postcode" name="postcode" size="30" />
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
        var company = {
            cid: $('#cid').val(),
            companyname: $('#companyname').val(),
            unitproperty:$('#unitproperty').val(),
            licensenumber: $('#licensenumber').val(),
            industry: $('#industry').val(),
            unitscale: $('#unitscale').val(),
            address: $('#address').val(),
            webaddress: $('#webaddress').val(),
            linkman: $('#linkman').val(),
            telephone: $('#telephone').val(),
            email: $('#email').val(),
            postcode: $('#postcode').val()
        };
        console.log(company)
        $.ajax({
            type:"POST",
            url:"/company/addCompany",
            contentType: "application/json",
            dataType:"json",
            data: JSON.stringify(company),//要提交是json字符串
            success:function (data) {
                if (data.code === '200') {
                    alert(data.message);
                    window.location.href="/company/companyList"
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
