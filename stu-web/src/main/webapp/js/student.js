var vCourseInfo = new Vue({
    el: '#courseInfo',
    data: function () {
        return {
            firstPath: '/courseInfo',// 请求一级路径
            nowData: [], column: [], loading: true,// 表格参数
            totalNum: 0, pageNum: 1, pageSize: 10,  // 分页参数
            loadingMsg: '',// 加载提示
            notice: '',// 提醒对象
            courseInfo: {
                id: '', courseCode: '', courseName: '', scord: '', theoryDur: '', expDur: '',
                totalDur: '', outsideDru: '', periodDru: '', remark: '', state: '',
            },// 实体类
            sCourseInfo: {
                courseCode: '', courseName: ''
            },// 搜索信息
            addCourseInfoModal: false,// 新增课程信息模态框
            editCourseInfoModal: false,// 编辑课程信息模态框
        }
    },
    mounted() {
        messageConfig(this);
        noticeConfig(this);
        this.initPage();
        this.filter();
    },
    methods: {
        /**
         * 页面初始化加载项
         * 表格表头
         */
        initPage() {
            var data = {tableName: "course_info"};
            var url = methodUrl + '/tableTitle/listByTableName';
            callAjaxPost(url, data, this.getTableHeadSuc);
        },
        /**
         * 获取表头回调函数
         * @param data  请求返回参数
         */
        getTableHeadSuc(data) {
            this.column = showCol(data.key, data.title);
            this.column.push(headAction(false, null, true, this.editCourseInfo, true, this.removeCourseInfo));
        },

        /**
         * 表格过滤查询
         */
        filter() {
            var data = {
                pageNum: this.pageNum,
                pageSize: this.pageSize,
                courseCode: this.sCourseInfo.courseCode,
                courseName: this.sCourseInfo.courseName
            };
            var url = methodUrl + this.firstPath + '/filter';
            callAjaxPost(url, data, this.filterSuc);
            // 显示加载
            this.loading = true;
        },
        /**
         * 表格过滤查询回调函数
         * @param data 请求返回参数
         */
        filterSuc(data) {
            //取消显示加载
            this.loading = false;
            this.nowData = data.nowData;
            this.totalNum = data.totalNum;
        },
        /**
         * 改变页码
         * @param pageNum 改变后的页码
         */
        onPageChange(pageNum) {
            this.pageNum = pageNum;
            this.filter();
        },
        /**
         * 切换每页条数
         * @param pageSize 换后的每页条数
         */
        onPageSizeChange(pageSize) {
            this.pageSize = pageSize;
            this.filter();
        },

        /**
         * 新增课程信息
         */
        addCourseInfo() {
            var data = {
                courseCode: this.courseInfo.courseCode,
                courseName: this.courseInfo.courseName,
                scord: this.courseInfo.scord,
                theoryDur: this.courseInfo.theoryDur,
                expDur: this.courseInfo.expDur,
                totalDur: this.courseInfo.totalDur,
                outsideDru: this.courseInfo.outsideDru,
                periodDru: this.courseInfo.periodDru,
                remark: this.courseInfo.remark,
            };
            var url = methodUrl + this.firstPath + '/insert';
            callAjaxPost(url, data, this.addCourseInfoSuc);
            // 打开加载提示
            this.loadingMsg = messageLoading(this);
        },
        /**
         * 新增课程信息回调函数
         * @param data 请求返回参数
         */
        addCourseInfoSuc(data) {
            // 关闭加载提示
            closeMessageLoading(this.loadingMsg);
            if (data.info === 'success') {
                messageSuccess(this, '新增课程信息成功！');
            } else if (data.info === 'fail') {
                messageError(this, '新增课程信息失败！', false);
            }
            // 重新查询数据
            this.filter();
            // 关闭模态框
            this.addCourseInfoModal = false;
            // 清除数据
            this.clearCourseInfo();
        },
        /**
         * 取消新增课程
         */
        cancelAddCourseInfo() {
            // 关闭模态框
            this.addCourseInfoModal = false;
            // 清除课程信息
            this.clearCourseInfo();
        },

        /**
         * 编辑课程信息
         * @param index 当前数据索引
         */
        editCourseInfo(index) {
            console.log(this.nowData[index]);
            this.courseInfo.id = this.nowData[index].id;
            this.courseInfo.courseCode = this.nowData[index].courseCode;
            this.courseInfo.courseName = this.nowData[index].courseName;
            this.courseInfo.scord = this.nowData[index].scord;
            this.courseInfo.theoryDur = this.nowData[index].theoryDur;
            this.courseInfo.expDur = this.nowData[index].expDur;
            this.courseInfo.totalDur = this.nowData[index].totalDur;
            this.courseInfo.outsideDru = this.nowData[index].outsideDru;
            this.courseInfo.periodDru = this.nowData[index].periodDru;
            this.courseInfo.remark = this.nowData[index].remark;
            // 打开模态框
            this.editCourseInfoModal = true;
        },
        /**
         * 修改课程信息
         */
        modifyCourseInfo() {
            var data = {
                id: this.courseInfo.id,
                courseCode: this.courseInfo.courseCode,
                courseName: this.courseInfo.courseName,
                scord: this.courseInfo.scord,
                theoryDur: this.courseInfo.theoryDur,
                expDur: this.courseInfo.expDur,
                totalDur: this.courseInfo.totalDur,
                outsideDru: this.courseInfo.outsideDru,
                periodDru: this.courseInfo.periodDru,
                remark: this.courseInfo.remark,
            };
            var url = methodUrl + this.firstPath + '/update';
            callAjaxPost(url, data, this.modifyCourseInfoSuc);
            // 打开加载提示
            this.loadingMsg = messageLoading(this);
        },
        modifyCourseInfoSuc(data) {
            // 关闭加载提示
            closeMessageLoading(this.loadingMsg);
            if (data.info === 'success') {
                messageSuccess(this, '修改课程信息成功！');
            } else if (data.info === 'fail') {
                messageError(this, '修改课程信息失败！', false);
            }
            // 重新查询数据
            this.filter();
            // 关闭模态框
            this.editCourseInfoModal = false;
            // 清除课程信息
            this.clearCourseInfo();
        },
        /**
         * 取消修改课程信息
         */
        cancelEditCourseInfo() {
            // 关闭模态框
            this.editCourseInfoModal = false;
            // 清除课程信息
            this.clearCourseInfo();
        },
        /**
         * 清除课程信息
         */
        clearCourseInfo() {
            this.courseInfo.id = '';
            this.courseInfo.courseCode = '';
            this.courseInfo.courseName = '';
            this.courseInfo.scord = '';
            this.courseInfo.theoryDur = '';
            this.courseInfo.expDur = '';
            this.courseInfo.totalDur = '';
            this.courseInfo.outsideDru = '';
            this.courseInfo.periodDru = '';
            this.courseInfo.remark = '';
            this.courseInfo.state = '';
        },

        /**
         * 删除课程信息
         * @param index
         */
        removeCourseInfo(index) {
            var data = this.nowData[index].id;
            var url = methodUrl + this.firstPath + '/delete';
            callAjaxPost(url, data, this.removeCourseInfoSuc);
            // 打开加载提示
            this.loadingMsg = messageLoading(this);
        },
        removeCourseInfoSuc(data) {
            // 关闭加载提示
            closeMessageLoading(this.loadingMsg);
            if (data.info === 'success') {
                messageSuccess(this, '课程信息删除成功！');
            } else if (data.info === 'fail') {
                messageError(this, '课程信息删除失败！', false);
            }
            // 重新查询数据
            this.filter();
        },

        /**
         * 清除搜索条件
         */
        clearSCourseInfo() {
            this.sCourseInfo.courseCode = '';
            this.sCourseInfo.courseName = '';
        }


    }
});
