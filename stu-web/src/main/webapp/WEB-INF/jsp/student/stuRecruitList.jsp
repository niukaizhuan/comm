<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/5/16
  Time: 11:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>查询招聘信息</title>
    <link rel="stylesheet" type="text/css" href="/layui/css/layui.css">
    <script type="text/javascript" src="/layui/layui.js"></script>
    <script type="text/javascript" src="/layui/lay/modules/jquery.js"></script>
    <script type="text/javascript" src="/js/jquery-3.4.1.min.js"></script>
    <script type="text/javascript" src="/js/student.js"></script>
</head>

<body style="margin: 10px;">

<table class="layui-hide" id="demo" lay-filter="test"></table>
<div class="layui-form-item">
    <label class="layui-form-label">按公司名称模糊查询</label>
    <div class="layui-input-inline">
        <input type="text" id="companyname" name="companyname" lay-verify="title" autocomplete="off" placeholder="请输入内容" class="layui-input">
    </div>
    <button class="layui-btn">查询</button>
</div>
<script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">查看</a>
    <a class="layui-btn layui-btn-xs" lay-event="edit">投递简历</a>
</script>

<script>
    var recruitList = ${recruitList};

    layui.use(['laypage', 'layer', 'table', 'upload', 'element'], function () {
        var laypage = layui.laypage, //分页
            layer = layui.layer, //弹层
            table = layui.table, //表格
            upload = layui.upload, //上传
            element = layui.element //元素操作

        //向世界问个好
        layer.msg('Hello World');

        //执行一个 table 实例
        table.render({
            elem: '#demo',
            height: 420,
            data: recruitList, //数据
            title: '招聘表',
            page: true, //开启分页
            toolbar: 'default', //开启工具栏，此处显示默认图标，可以自定义模板，详见文档
            cols: [
                [ //表头
                    {
                        type: 'checkbox',
                        fixed: 'left'
                    }, {
                    field: 'companyname',
                    title: '公司名称',
                    width: 100
                }, {
                    field: 'recruitment',
                    title: '招聘人数',
                    width: 100
                }, {
                    field: 'workingplace',
                    title: '工作地点',
                    width: 100
                }, {
                    field: 'positiontype',
                    title: '职业属性',
                    width: 100
                }, {
                    field: 'edurequire',
                    title: '学历要求',
                    width: 100
                }, {
                    fixed: 'right',
                    width: 165,
                    align: 'center',
                    toolbar: '#barDemo'
                }
                ]
            ]
        });

        //监听头工具栏事件
        table.on('toolbar(test)', function (obj) {
            var checkStatus = table.checkStatus(obj.config.id),
                data = checkStatus.data; //获取选中的数据
            switch (obj.event) {
                case 'add':
                    layer.msg('添加');
                    break;
                case 'update':
                    if (data.length === 0) {
                        layer.msg('请选择一行');
                    } else if (data.length > 1) {
                        layer.msg('只能同时编辑一个');
                    } else {
                        layer.alert('编辑 [id]：' + checkStatus.data[0].id);
                    }
                    break;
                case 'delete':
                    if (data.length === 0) {
                        layer.msg('请选择一行');
                    } else {
                        layer.msg('删除');
                    }
                    break;
            }
            ;
        });

        //监听行工具事件
        table.on('tool(test)', function (obj) { //注：tool 是工具条事件名，test 是 table 原始容器的属性 lay-filter="对应的值"
            var data = obj.data, //获得当前行数据
                layEvent = obj.event; //获得 lay-event 对应的值
            if (layEvent === 'detail') {

                layer.msg('查看操作');
            } else if (layEvent === 'del') {
                layer.confirm('真的删除行么', function (index) {
                    obj.del(); //删除对应行（tr）的DOM结构
                    layer.close(index);
                    //向服务端发送删除指令
                });
            } else if (layEvent === 'edit') {
                layer.msg('编辑操作');
                layer.open({
                    type:1,
                    title:"投递简历",
                    area: ['70%','70%'],
                    content: $("addResume")
                });

            }
        });

        //上传
        upload.render({
            elem: '#uploadDemo',
            url: '' //上传接口
            ,
            done: function (res) {
                console.log(res)
            }
        });
    });

</script>
</body>
</html>
