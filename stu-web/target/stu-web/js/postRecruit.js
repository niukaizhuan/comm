var mn=manong={

    initProductCategory:function(){
        function loadSubCategory(value){
            var $box=$("#productAddForm").find('#cbox');
            if(value==0){
                $box.html('').hide();
                return;
            }
            $.getJSON("/product_category/list",{id:value},function (data) {
                var s='';
                s='<select id="cc2" class="easyui-combobox" name="dept2" style="width:200px;">';
                s+='<option value="0">请选二级分类</option>';

                $.each(data,function (idx,item) {
                    s+='<option value="'+item.id+'">'+item.text+'</option>';
                });
                s+='</select>';
                $box.html(s).show();
                $("#productAddForm").find("select[name='dept2']").combobox({
                    onChange:function(){
                        var value=$("#cc2").val();
                        if(value==0){
                            $('#productAddForm').find("input[name='categoryId']").val($('#productAddForm').find("input[name='dept']").val());
                        }else{
                            $('#productAddForm').find("input[name='categoryId']").val(value)
                        }
                    }
                });
            });
        }

        $("#productAddForm").find("select[name='dept']").combobox({
            onChange:function(){
                var value=$("#cc").val();
                $('#productAddForm').find("input[name='categoryId']").val(value);
                loadSubCategory(value);
            }
        });
    },

    initPicUpload:function(){
        $("#fileName").filebox({
            prompt:"选择图片",
            width:"200",
            buttonText:"浏览",
        });

        $(".uploadPic").click(function () {
            $.ajaxFileUpload({
                url:'/uploadfile',
                fileElementId:'filebox_file_id_1',
                type:'post',
                success:function (data) {
                    $("#img").attr("src",""+$(data).find("body").text());
                    $('#productAddForm').find("input[name='image']").val($(data).find("body").text());

                }
            });
        });
    },

    init:function (data) {
        //实例化编辑器
        var ue = UE.getEditor('editor');
        //初始化商品分类
        this.initProductCategory();
        //初始化上传图片
        this.initPicUpload();
    }

}