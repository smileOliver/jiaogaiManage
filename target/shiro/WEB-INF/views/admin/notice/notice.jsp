<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/commons/global.jsp" %>
<script type="text/javascript">
    var noticeDataGrid;
    $(function() {
        noticeDataGrid = $('#noticeDataGrid').datagrid({
            url : '${path }/notice/dataGrid',
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
                width : '100',/* 宽度 */
                title : 'id',/* 标题 */
                field : 'id',/* 参数 */
                sortable : true/* 是否可整理 */
            }, {
                width : '80',
                title : '标题',
                field : 'noticeTitle',
                sortable : true
            } ,{
                width : '200',
                title : '内容',
                field : 'noticeContent'
            },{
                width : '80',
                title : '发布人',
                field : 'userName'
            } , {
                width : '120',
                title : '发布时间',
                field : 'createTime'
            } , {
            width : '60',
            title : '状态',
            field : 'status',
            sortable : true,
            formatter : function(value, row, index) {
                switch (value) {
                case 0:
                    return '正常';
                case 1:
                    return '停用';
                }
              }
            }, {
                field : 'action',
                title : '操作',
                width : 200,
                formatter : function(value, row, index) {
                    var str = '';
                        <shiro:hasPermission name="/notice/edit">
                            str += $.formatString('<a href="javascript:void(0)" class="notice-easyui-linkbutton-edit" data-options="plain:true,iconCls:\'fi-pencil icon-blue\'" onclick="editnoticeFun(\'{0}\');" >编辑</a>', row.id);
                        </shiro:hasPermission>
                        <shiro:hasPermission name="/notice/delete">
                            str += '&nbsp;&nbsp;|&nbsp;&nbsp;';
                            str += $.formatString('<a href="javascript:void(0)" class="notice-easyui-linkbutton-del" data-options="plain:true,iconCls:\'fi-x icon-red\'" onclick="deletenoticeFun(\'{0}\');" >删除</a>', row.id);
                        </shiro:hasPermission>
                    return str;
                }
            } ] ],
            onLoadSuccess:function(data){
                $('.notice-easyui-linkbutton-edit').linkbutton({text:'编辑'});
                $('.notice-easyui-linkbutton-del').linkbutton({text:'删除'});
            },
            toolbar : '#noticeToolbar'
        });
    });

    function addNoticeFun() {
        parent.$.modalDialog({
        	
            title : '添加',
            width : 500,
            height : 300,
            href : '${path }/notice/addPage',
            buttons : [ {
                text : '确定',
                handler : function() {
                    parent.$.modalDialog.openner_dataGrid = noticeDataGrid;//因为添加成功之后，需要刷新这个treeGrid，所以先预定义好
                    var f = parent.$.modalDialog.handler.find('#noticeAddForm');
                    f.submit();
                }
            } ]
        });
    }

    function editnoticeFun(id) {
        if (id == undefined) {
            var rows = noticeDataGrid.datagrid('getSelections');
            id = rows[0].id;
        } else {
            noticeDataGrid.datagrid('unselectAll').datagrid('uncheckAll');
        }
        parent.$.modalDialog({
            title : '编辑',
            width : 500,
            height : 300,
            href : '${path }/notice/editPage?id=' + id,
            buttons : [ {
                text : '确定',
                handler : function() {
                    parent.$.modalDialog.openner_dataGrid = noticeDataGrid;//因为添加成功之后，需要刷新这个dataGrid，所以先预定义好
                    var f = parent.$.modalDialog.handler.find('#noticeEditForm');
                    f.submit();
                }
            } ]
        });
    }

    function deletenoticeFun(id) {
        if (id == undefined) {//点击右键菜单才会触发这个
            var rows = noticeDataGrid.datagrid('getSelections');
            id = rows[0].id;
        } else {//点击操作里面的删除图标会触发这个
            noticeDataGrid.datagrid('unselectAll').datagrid('uncheckAll');
        }
        parent.$.messager.confirm('询问', '您是否要删除当前公告信息？', function(b) {
            if (b) {
                progressLoad();
                $.post('${path }/notice/delete', {
                    id : id
                }, function(result) {
                    if (result.success) {
                        parent.$.messager.alert('提示', result.msg, 'info');
                        noticeDataGrid.datagrid('reload');
                    }
                    progressClose();
                }, 'JSON');
            }
        });
    }

</script>
<div class="easyui-layout" data-options="fit:true,border:false">
    <div data-options="region:'center',fit:true,border:false">
        <table id="noticeDataGrid" data-options="fit:true,border:false"></table>
    </div>
</div>
<div id="noticeToolbar" style="display: none;">
    <shiro:hasPermission name="/notice/add">
        <a onclick="addNoticeFun();" href="javascript:void(0);" class="easyui-linkbutton" data-options="plain:true,iconCls:'fi-plus icon-green'">添加</a>
    </shiro:hasPermission>
</div>