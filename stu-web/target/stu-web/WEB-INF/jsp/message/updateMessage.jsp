<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/5/17
  Time: 13:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>回复留言</title>
    <link rel="stylesheet" type="text/css" href="/layui/css/layui.css">
    <script type="text/javascript" src="/layui/layui.js"></script>
    <script type="text/javascript" src="/js/jquery-3.4.1.min.js"></script>
</head>
<body>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
    <legend>留言回复</legend>
</fieldset>

<form class="layui-form" action="" lay-filter="example">
    <div>
        <input id="id" name="id" style="display: none">
    </div>
    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">留言用户</label>
            <div class="layui-input-inline">
                <input type="text" id="username" name="username" required lay-verify="required" autocomplete="off"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">留言标题:</label>
            <div class="layui-input-inline">
                <input type="text" id="title" name="title" required lay-verify="required" autocomplete="off"
                       class="layui-input">
            </div>
        </div>
        <%--<div class="layui-inline">--%>
        <%--<label class="layui-form-label">留言时间:</label>--%>
        <%--<div class="layui-input-inline">--%>
        <%--<input type="text" name="mid"  autocomplete="off" class="layui-input">--%>
        <%--</div>--%>
        <%--</div>--%>
    </div>
    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label">留言内容</label>
        <div class="layui-input-block">
            <textarea placeholder="" id="content" name="content" class="layui-textarea"></textarea>
        </div>
    </div>
    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label">留言回复</label>
        <div class="layui-input-block">
            <textarea placeholder="" id="reply" name="reply" class="layui-textarea"></textarea>
        </div>
    </div>
    <div class="layui-form-item">
        <div class="layui-input-block">
            <button class="layui-btn" lay-submit="" lay-filter="demo1">回复留言</button>
        </div>
    </div>

</form>
<script>
    layui.use(['form', 'layedit', 'layer'], function () {
        var form = layui.form,
            layer = layui.layer,
            layedit = layui.layedit

        //创建一个编辑器
        var editIndex = layedit.build('LAY_demo_editor');

        //监听提交
        form.on('submit(demo1)', function (data) {
            // layer.alert(JSON.stringify(data.field), {
            //     title: '最终的提交信息'
            // })
            console.log(JSON.stringify(data.field))
            $.ajax({
                url: "/message/updateMessage",
                method: 'post',
                contentType: "application/json",
                data: JSON.stringify(data.field),
                dataType: 'JSON',
                success: function (data) {
                    if (data.code === '200') {
                        alert(data.message);
                        window.location.href = "/message/messageList"
                    } else {
                        alert(data.message);
                    }
                },
                error: function (error) {
                }
            })
            return false;
        });

        //表单初始赋值
        form.val('example', {
            "id": "${message.id}",
            "username": "${message.username}", // "name": "value"
            "title": "${message.title}",
            "content": "${message.content}",
            "reply": "${message.reply}"
        });

        //      function updateMesage() {
        //         var mid = $("#mid").val();
        //         var username = $("#username").val();
        //         var title = $("#title").val();
        //         var msgtime = $("#msgtime").val();
        //         var content = $("#content").val();
        //         var reply = $("#reply").val();
        //         var param = {
        //             mid: "#mid",
        //             username: "#username",
        //             title: "#title",
        //             msgtime: "#msgtime",
        //             content: "#content",
        //             reply: "#reply"
        //         }
        //
        //
        //     $.ajax({
        //         url: "/message/updateMessage",
        //         method: 'post',
        //         contentType: "application/json",
        //         data: JSON.stringify(param),
        //         dataType: 'JSON',
        //         success: function (data) {
        //             if (data.code === '200') {
        //                 alert(data.message);
        //                 window.location.href = "/message/messageList"
        //             } else {
        //                 alert(data.message);
        //             }
        //         },
        //         error: function (error) {
        //         }
        //     })
        //     return false;
        // });
    })
</script>
</body>
</html>
