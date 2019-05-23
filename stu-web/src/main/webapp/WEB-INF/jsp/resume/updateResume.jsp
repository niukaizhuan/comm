<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/5/14
  Time: 9:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="/layui/css/layui.css">
    <script type="text/javascript" src="/layui/layui.js"></script>
    <script type="text/javascript" src="/js/jquery-3.4.1.min.js"></script>
    <script type="text/javascript" src="/layui/lay/modules/jquery.js"></script>
</head>
<body>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
    <legend>简历表(*为必填项)</legend>
</fieldset>

<form class="layui-form" action="" lay-filter="example">
    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">*姓名</label>
            <div class="layui-input-inline">
                <input type="text" id="title" name="sname" required lay-verify="required" autocomplete="off"
                       class="layui-input">
            </div>
        </div>

        <div class="layui-inline" pane>
            <label class="layui-form-label">*性别</label>
            <div class="layui-input-inline">
                <input type="radio" name="sex" value="男" title="男">
                <input type="radio" name="sex" value="女" title="女" checked>
            </div>
        </div>
    </div>

    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">*出生日期</label>
            <div class="layui-input-inline">
                <input type="text" name="birthday" id="date" lay-verify="date" placeholder="yyyy-MM-dd"
                       autocomplete="off"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">*民族</label>
            <div class="layui-input-inline">
                <select id="nation" name="nation" lay-filter="aihao">
                    <option value=""></option>
                    <option value="汉族" selected="">汉族</option>
                    <option value="彝族">彝族</option>
                    <option value="苗族">苗族</option>
                    <option value="布依族">布依族</option>
                    <option value="傣族">傣族</option>
                </select>
            </div>
        </div>
    </div>

    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">*政治面貌</label>
            <div class="layui-input-inline">
                <select id="politics" name="politics" lay-filter="aihao">
                    <option value=""></option>
                    <option value="群众" selected="">群众</option>
                    <option value="共青团员">共青团员</option>
                    <option value="预备党员">预备党员</option>
                    <option value="党员">党员</option>
                </select>
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">毕业时间</label>
            <div class="layui-input-inline">
                <input type="text" name="graduation" id="date1" lay-verify="date" placeholder="yyyy-MM-dd"
                       autocomplete="off"
                       class="layui-input">
            </div>
        </div>
    </div>

    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">*毕业院校</label>
            <div class="layui-input-inline">
                <input type="text" id="school" name="school" required lay-verify="required" autocomplete="off"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">*所学专业</label>
            <div class="layui-input-inline">
                <input type="text" id="major" name="major" required lay-verify="required" autocomplete="off"
                       class="layui-input">
            </div>
        </div>
    </div>
    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">*学历</label>
            <div class="layui-input-inline">
                <select id="education" name="education" lay-filter="aihao">
                    <option value=""></option>
                    <option value="本科" selected="">本科</option>
                    <option value="专科">专科</option>
                    <option value="硕士研究生">硕士研究生</option>
                    <option value="博士研究生">博士研究生</option>

                </select>
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">*邮箱</label>
            <div class="layui-input-inline">
                <input type="text" id="email" name="email" lay-verify="email" autocomplete="off"
                       class="layui-input">
            </div>
        </div>
    </div>

    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">*联系电话</label>
            <div class="layui-input-inline">
                <input type="text" id="phone" name="phone" lay-verify="required|phone" autocomplete="off"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">*外语水平</label>
            <div class="layui-input-inline">
                <select id="foreignlanguage" name="foreignlanguage" lay-filter="aihao">
                    <option value=""></option>
                    <option value="CET4" selected="">CET4</option>
                    <option value="CET6">CET6</option>
                    <option value="CET8">CET8</option>
                </select>
            </div>
        </div>
    </div>

    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label">特长及爱好</label>
        <div class="layui-input-block">
            <textarea id="hobby" name="hobby" placeholder="请输入内容" class="layui-textarea"></textarea>
        </div>
    </div>

    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label">社会实践经历</label>
        <div class="layui-input-block">
            <textarea class="layui-textarea layui-hide" name="practice" lay-verify="content"
                      id="LAY_demo_editor"></textarea>
        </div>
    </div>
    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label">在校担任职务</label>
        <div class="layui-input-block">
            <textarea id="position" name="position" placeholder="请输入内容" class="layui-textarea"></textarea>
        </div>
    </div>
    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label">在校期间获奖</label>
        <div class="layui-input-block">
            <textarea class="layui-textarea layui-hide" name="honor" lay-verify="content"
                      id="LAY_demo_editor1"></textarea>
        </div>
    </div>
    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label">科研成果</label>
        <div class="layui-input-block">
            <textarea class="layui-textarea layui-hide" name="research" lay-verify="content"
                      id="LAY_demo_editor2"></textarea>
        </div>
    </div>
    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label">自我评价</label>
        <div class="layui-input-block">
            <textarea class="layui-textarea layui-hide" name="selfevaluation" lay-verify="content"
                      id="LAY_demo_editor3"></textarea>
        </div>
    </div>
    <div class="layui-form-item">
        <div class="layui-input-block">
            <button class="layui-btn" lay-submit="" lay-filter="demo1">提交</button>
            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
        </div>
    </div>

</form>

<script>
    layui.use(['form', 'layedit', 'laydate', 'layer', 'jquery', 'upload'], function () {
        var form = layui.form,
            layer = layui.layer,
            layedit = layui.layedit,
            laydate = layui.laydate,
            jquery = layui.jquery,
            upload = layui.upload;

        //日期
        laydate.render({
            elem: '#date'
        });
        laydate.render({
            elem: '#date1'
        });
        //文件上传
        // upload.render({
        //     elem:"",
        //     url:'fileUpload',
        //     multipe:true,
        //
        // });
        //创建一个编辑器
        var editIndex = layedit.build('LAY_demo_editor');
        var editIndex = layedit.build('LAY_demo_editor1');
        var editIndex = layedit.build('LAY_demo_editor2');
        var editIndex = layedit.build('LAY_demo_editor3');

        //表单赋值
        form.val("example", {
            "sname": "${resume.sname}" // "name": "value"
            , "sex": "${resume.sex}"
            , "birthday": "${resume.birthday}"
            , "nation": "${resume.nation}"
            , "politics": "${resume.politics}"
            , "graduation": "${resume.graduation}"
            , "school": "${resume.school}"
            , "major": "${resume.major}"
            , "education": "${resume.education}"
            , "email": "${resume.email}"
            , "phone": "${resume.phone}"
            , "foreignlanguage": "${resume.foreignlanguage}"
            , "hobby": "${resume.hobby}"
            , "practice": "${resume.practice}"
            , "position": "${resume.position}"
            , "honor": "${resume.honor}"
            , "research": "${resume.research}"
            , "selfevaluation": "${resume.selfevaluation}"
            , "check[write]": true
            // ,"open": false
            // ,"desc": "我爱layui"
        })
        //监听提交
        form.on('submit(demo1)', function (data) {
            // layer.alert(JSON.stringify(data.field), {
            //     title: '最终的提交信息'
            // })
            console.log(JSON.stringify(data.field))


            $.ajax({
                url: '/resume/updateResume',
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

            //return false;


        });
    });
</script>
</body>
</html>
