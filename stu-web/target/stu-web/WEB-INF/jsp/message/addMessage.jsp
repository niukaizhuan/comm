<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/5/14
  Time: 16:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link type="text/css" rel="stylesheet" href="/layui/css/layui.css"/>
    <script type="text/javascript" src="/layui/layui.js"></script>
    <script type="text/javascript" src="/layui/lay/modules/jquery.js"></script>
    <script type="text/javascript" src="/js/jquery-3.4.1.min.js"></script>
</head>
<body>
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
    <legend>留言</legend>
</fieldset>
<form class="layui-form" action="">
    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">标题</label>
            <div class="layui-input-block">
                <input type="text" name="title" required lay-verify="required" placeholder="请输入标题" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item layui-form-text">
            <label class="layui-form-label">内容</label>
            <div class="layui-input-block">
                <textarea placeholder="" id="content" name="content" class="layui-textarea"></textarea>
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">留言人</label>
            <div class="layui-input-block">
                <input type="text" name="username"  required lay-verify="required" placeholder="请输入名字" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-input-block">
                <button class="layui-btn" lay-submit="" lay-filter="demo1">留言</button>
            </div>
        </div>
    </div>
</form>

<script>
    layui.use(['form', 'layedit', 'laydate'], function() {
        var form = layui.form,
            layer = layui.layer,
            layedit = layui.layedit,
            laydate = layui.laydate;

        //创建一个编辑器
        var editIndex = layedit.build('LAY_demo_editor');

        //监听提交
        form.on('submit(demo1)', function(data) {

            console.log("我是前端的"+JSON.stringify(data.field))

            $.ajax({
                url: '/message/addMessage',
                method: 'post',
                contentType: "application/json",
                data: JSON.stringify(data.field),
                dataType: 'JSON',
                success: function (data) {
                    console.log(data)
                    if (data.code === '200') {
                        alert(data.message);
                        //window.location.href="/resume/main"
                    } else {
                        layer.msg(data.message)
                        alert(data.message);
                    }
                },
                error: function (error) {
                    console.log(error)
                }

            });
        });

        //表单初始赋值
        form.val('example', {
            "username": "${message.username}", // "name": "value"
            "title": "${message.title}",
            "content": "${message.content}",
            "reply": "${message.reply}"
        });
    });
</script>
</body>

</html>
