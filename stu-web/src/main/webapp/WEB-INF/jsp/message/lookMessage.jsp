<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/5/14
  Time: 21:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>查看留言</title>
    <link rel="stylesheet" type="text/css" href="/layui/css/layui.css">
    <script type="text/javascript" src="/layui/layui.js"></script>
</head>
<body>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
    <legend>留言回复</legend>
</fieldset>

<form class="layui-form" action="" lay-filter="example">
    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">留言用户</label>
            <div class="layui-input-inline">
                <input type="text" name="username" required lay-verify="required" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">留言标题:</label>
            <div class="layui-input-inline">
                <input type="text" name="title" required lay-verify="required" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">留言时间:</label>
            <div class="layui-input-inline">
                <input type="text" name="msgtime" required lay-verify="required" autocomplete="off" class="layui-input">
            </div>
        </div>
    </div>
    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label">留言内容</label>
        <div class="layui-input-block">
            <textarea placeholder="" name="content" class="layui-textarea"></textarea>
        </div>
    </div>
    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label">留言回复</label>
        <div class="layui-input-block">
            <textarea placeholder="" name="reply" class="layui-textarea"></textarea>
        </div>
    </div>
    <div class="layui-form-item">
        <div class="layui-input-block">
            <button class="layui-btn" lay-submit="" lay-filter="demo1">回复留言</button>
        </div>
    </div>
    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label">留言</label>
        <div class="layui-input-block">
            <textarea class="layui-textarea layui-hide" name="content" lay-verify="content" id="LAY_demo_editor"></textarea>
        </div>
    </div>
</form>
<script>
    layui.use(['form', 'layedit','layer'], function() {
        var form = layui.form,
            layer = layui.layer,
            layedit = layui.layedit

        //创建一个编辑器
        var editIndex = layedit.build('LAY_demo_editor');

        //监听提交
        form.on('submit(demo1)', function(data) {
            layer.alert(JSON.stringify(data.field), {
                title: '最终的提交信息'
            })
            return false;
        });

        //表单初始赋值
        form.val('example', {
            "username": "${message.username}", // "name": "value"
            "title": "${message.title}",
            "msgtime": "${message.msgtime}",
            "content": "${message.content}",
            "reply": "${message.reply}"
        });

    });
</script>
</body>
</html>
