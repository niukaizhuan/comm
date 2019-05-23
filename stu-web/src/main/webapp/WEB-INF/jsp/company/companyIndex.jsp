<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/4/30
  Time: 15:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" import="java.util.*" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>企业管理</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" type="text/css" href="/layui/css/layui.css" media="all">
    <script type="text/javascript" src="/layui/layui.js"></script>

</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
    <div class="layui-header">
        <div class="layui-logo">欢迎使用学生就业管理系统</div>
        <!-- 头部区域（可配合layui已有的水平导航） -->

        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item">
                <a href="javascript:;">
                    <img src="http://t.cn/RCzsdCq" class="layui-nav-img"> ${user.userName}
                </a>
                <dl class="layui-nav-child">
                    <dd>
                        <a href="">基本资料</a>
                    </dd>
                    <dd>
                        <a href="">修改密码</a>
                    </dd>
                </dl>
            </li>
            <li class="layui-nav-item">
                <a href="">退了</a>
            </li>
        </ul>
    </div>

    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll">
            <!-- 左侧垂直导航区域-->
            <ul class="layui-nav layui-nav-tree" lay-filter="test">
                <li class="layui-nav-item">
                    <a class="" href="javascript:;">企业管理</a>
                    <dl class="layui-nav-child">
                        <dd>
                            <a href="javascript:;" data-id="1" data-title="发布招聘信息"
                               data-url="http://localhost:8080/recruit/postRecruit"
                               class="site-demo-active" data-type="tabAdd">发布招聘信息</a>
                        </dd>
                        <dd>
                            <a href="javascript:;" data-id="2" data-title="管理招聘信息"
                               data-url="http://localhost:8080/recruit/recruitList"
                               class="site-demo-active" data-type="tabAdd">管理招聘信息</a>
                        </dd>
                        <dd>
                            <a href="javascript:;" data-id="3" data-title="查看学生简历"
                               data-url="http://localhost:8080/resume/updateResume?sid=${user.id}"
                               class="site-demo-active" data-type="tabAdd">查看学生简历</a>
                        </dd>
                        <dd>
                            <a href="javascript:;" data-id="4" data-title="给管理员留言"
                               data-url="http://localhost:8080/message/addMessage"
                               class="site-demo-active" data-type="tabAdd">给管理员留言</a>
                        </dd>

                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;">信息查看</a>
                    <dl class="layui-nav-child">
                        <dd>
                            <a href="javascript:; " data-id="6" data-title="查看就业信息"
                               data-url="http://localhost:8080/student/stuEmploymentList"
                               class="site-demo-active" data-type="tabAdd">查看就业信息</a>
                        </dd>
                        <dd>
                            <a href="javascript:;" data-id="7" data-title="查看管理员回复"
                               data-url="http://localhost:8080/message/lookMessage?id=${user.id}"
                               class="site-demo-active" data-type="tabAdd">查看管理员回复</a>
                        </dd>
                    </dl>
                </li>
            </ul>
        </div>
    </div>

    <!--tab标签-->
    <div class="layui-tab" lay-filter="demo" lay-allowclose="true" style="margin-left: 200px;">
        <ul class="layui-tab-title"></ul>
        <div class="layui-tab-content"></div>
    </div>

    <div class="layui-footer">
        <!-- 底部固定区域 -->
        © kaizhuan.com - 底部固定区域
    </div>
</div>
<%--<script src="/js/layui.js" type="text/javascript"></script>--%>
<%--<script src="/js/layui.all.js" type="text/javascript"></script>--%>

<script>
    //JavaScript代码区域
    layui.use(['element', 'layer', 'jquery'], function () {
        var element = layui.element;
        // var layer = layui.layer;
        var $ = layui.$;
        // 配置tab实践在下面无法获取到菜单元素
        $('.site-demo-active').on('click', function () {
            var dataid = $(this);
            //这时会判断右侧.layui-tab-title属性下的有lay-id属性的li的数目，即已经打开的tab项数目
            if ($(".layui-tab-title li[lay-id]").length <= 0) {
                //如果比零小，则直接打开新的tab项
                active.tabAdd(dataid.attr("data-url"), dataid.attr("data-id"), dataid.attr("data-title"));
            } else {
                //否则判断该tab项是否以及存在
                var isData = false; //初始化一个标志，为false说明未打开该tab项 为true则说明已有
                $.each($(".layui-tab-title li[lay-id]"), function () {
                    //如果点击左侧菜单栏所传入的id 在右侧tab项中的lay-id属性可以找到，则说明该tab项已经打开
                    if ($(this).attr("lay-id") == dataid.attr("data-id")) {
                        isData = true;
                    }
                })
                if (isData == false) {
                    //标志为false 新增一个tab项
                    active.tabAdd(dataid.attr("data-url"), dataid.attr("data-id"), dataid.attr("data-title"));
                }
            }
            //最后不管是否新增tab，最后都转到要打开的选项页面上
            active.tabChange(dataid.attr("data-id"));
        });

        var active = {
            //在这里给active绑定几项事件，后面可通过active调用这些事件
            tabAdd: function (url, id, name) {
                //新增一个Tab项 传入三个参数，分别对应其标题，tab页面的地址，还有一个规定的id，是标签中data-id的属性值
                //关于tabAdd的方法所传入的参数可看layui的开发文档中基础方法部分
                element.tabAdd('demo', {
                    title: name,
                    content: '<iframe data-frameid="' + id + '" scrolling="auto" frameborder="0" src="' + url + '" style="width:100%;height:99%;"></iframe>',
                    id: id //规定好的id
                })
                FrameWH(); //计算ifram层的大小
            },
            tabChange: function (id) {
                //切换到指定Tab项
                element.tabChange('demo', id); //根据传入的id传入到指定的tab项
            },
            tabDelete: function (id) {
                element.tabDelete("demo", id); //删除
            }
        };

        function FrameWH() {
            var h = $(window).height() - 180;
            $("iframe").css("height", h + "px");
        }
    });
</script>
</body>
</html>
