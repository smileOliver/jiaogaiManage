<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/commons/global.jsp" %>
<script type="text/javascript">
    var professorDataGrid;
    $(function() {
        professorDataGrid = $('#professorDataGrid').datagrid({
            url : '${path }/teacher/professor',
            striped : true,
            rownumbers : true,
            pagination : true,
            singleSelect : true,
            idField : 'id',
            sortName : 'id',
            sortOrder : 'asc',
            pageSize : 20,
            pageList : [ 10, 20, 30, 40, 50, 100, 200, 300, 400, 500 ],
            frozenColumns : [ [ {
                width : '80',
                title : '教师编号',
                field : 'teacherNum'
            },{
                width : '100',/* 宽度 */
                title : '专家名',/* 标题 */
                field : 'tName',/* 参数 */
                sortable : true/* 是否可整理 */
            }, {
                width : '60',
                title : '性别',
                field : 'tSex',
                sortable : true
            },{
                width : '100',
                title : '手机号',
                field : 'tTel'
            } , {
                width : '120',
                title : '邮箱',
                field : 'tEmail'
            } , {
                width : '120',
                title : '所属部门',
                field : 'departmentName'
            } , {
                width : '120',
                title : '所属系',
                field : 'factionName'
            } , {
                width : '100',
                title : '最高学历',
                field : 'maxDegree'
            } , {
                width : '80',
                title : '职称',
                field : 'jobTitle'
            }, {
                field : 'action',
                title : '操作',
                width : 80,
                formatter : function(value, row, index) {
                    var str = '';
                        <shiro:hasPermission name="/teacher/grant">
                            str += $.formatString('<a href="javascript:void(0)" class="teacher-easyui-linkbutton-ok" data-options="plain:true,iconCls:\'fi-check icon-green\'" onclick="grantProfessorFun(\'{0}\');" >授权</a>', row.id);
                        </shiro:hasPermission>
                    return str;
                }
            } ] ],
            onLoadSuccess:function(data){
                $('.teacher-easyui-linkbutton-ok').linkbutton({text:'授权'});
            },
            toolbar : '#teacherToolbar'
        });
    });

    function grantProfessorFun(id) {
        if (id == undefined) {
            var rows = professorDataGrid.datagrid('getSelections');
            id = rows[0].id;
        } else {
            professorDataGrid.datagrid('unselectAll').datagrid('uncheckAll');
        }
        
        parent.$.modalDialog({
            title : '授权',
            width : 500,
            height : 500,
            href : '${path }/teacher/grantPage?id=' + id,
            buttons : [ {
                text : '确定',
                handler : function() {
                    parent.$.modalDialog.openner_dataGrid = professorDataGrid;//因为添加成功之后，需要刷新这个dataGrid，所以先预定义好
                    var f = parent.$.modalDialog.handler.find('#professorGrantForm');
                    f.submit();
                }
            } ]
        });
    }

</script>
<div class="easyui-layout" data-options="fit:true,border:false">
    <div data-options="region:'center',border:true,title:'专家列表'" style="overflow: auto;">
        <table id="professorDataGrid" data-options="fit:true,border:false"></table>
    </div>
</div>
