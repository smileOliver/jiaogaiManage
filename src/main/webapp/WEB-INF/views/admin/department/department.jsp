<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/commons/global.jsp" %>
<script type="text/javascript">
    var departmentDataGrid;
    $(function() {
        departmentDataGrid = $('#departmentDataGrid').datagrid({
            url : '${path }/department/dataGrid',
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
                width : '200',
                title : '名称',
                field : 'dName',
                sortable : true
            } , {
                width : '80',
                title : '类别',
                field : 'typeName'
            } ,{
                width : '200',
                title : '描述',
                field : 'dDesc'
            },{
                width : '100',
                title : '地址',
                field : 'dAddress'
            } , {
                width : '80',
                title : '电话',
                field : 'dTel'
            
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
                        <shiro:hasPermission name="/department/edit">
                            str += $.formatString('<a href="javascript:void(0)" class="department-easyui-linkbutton-edit" data-options="plain:true,iconCls:\'fi-pencil icon-blue\'" onclick="editdepartmentFun(\'{0}\');" >编辑</a>', row.id);
                        </shiro:hasPermission>
                        <shiro:hasPermission name="/department/delete">
                            str += '&nbsp;&nbsp;|&nbsp;&nbsp;';
                            str += $.formatString('<a href="javascript:void(0)" class="department-easyui-linkbutton-del" data-options="plain:true,iconCls:\'fi-x icon-red\'" onclick="deletedepartmentFun(\'{0}\');" >删除</a>', row.id);
                        </shiro:hasPermission>
                    return str;
                }
            } ] ],
            onLoadSuccess:function(data){
                $('.department-easyui-linkbutton-edit').linkbutton({text:'编辑'});
                $('.department-easyui-linkbutton-del').linkbutton({text:'删除'});
            },
            toolbar : '#departmentToolbar'
        });
    });

    function adddepartmentFun() {
        parent.$.modalDialog({
        	
            title : '添加',
            width : 500,
            height : 300,
            resizable:true,
            href : '${path }/department/addPage',
            buttons : [ {
                text : '确定',
                handler : function() {
                    parent.$.modalDialog.openner_dataGrid = departmentDataGrid;//因为添加成功之后，需要刷新这个treeGrid，所以先预定义好
                    var f = parent.$.modalDialog.handler.find('#departmentAddForm');
                    f.submit();
                }
            } ]
        });
    }

    function editdepartmentFun(id) {
        if (id == undefined) {
            var rows = departmentDataGrid.datagrid('getSelections');
            id = rows[0].id;
        } else {
            departmentDataGrid.datagrid('unselectAll').datagrid('uncheckAll');
        }
        parent.$.modalDialog({
            title : '编辑',
            width : 500,
            height : 300,
            href : '${path }/department/editPage?id=' + id,
            buttons : [ {
                text : '确定',
                handler : function() {
                    parent.$.modalDialog.openner_dataGrid = departmentDataGrid;//因为添加成功之后，需要刷新这个dataGrid，所以先预定义好
                    var f = parent.$.modalDialog.handler.find('#departmentEditForm');
                    f.submit();
                }
            } ]
        });
    }

    function deletedepartmentFun(id) {
        if (id == undefined) {//点击右键菜单才会触发这个
            var rows = departmentDataGrid.datagrid('getSelections');
            id = rows[0].id;
        } else {//点击操作里面的删除图标会触发这个
            departmentDataGrid.datagrid('unselectAll').datagrid('uncheckAll');
        }
        parent.$.messager.confirm('询问', '您是否要删除当前部门？', function(b) {
            if (b) {
                progressLoad();
                $.post('${path }/department/delete', {
                    id : id
                }, function(result) {
                    if (result.success) {
                        parent.$.messager.alert('提示', result.msg, 'info');
                        departmentDataGrid.datagrid('reload');
                    }
                    progressClose();
                }, 'JSON');
            }
        });
    }

</script>
<div class="easyui-layout" data-options="fit:true,border:false">
    <div data-options="region:'center',border:false" style="overflow: auto;">
        <table id="departmentDataGrid" data-options="fit:true,border:false"></table>
    </div>
</div>
<div id="departmentToolbar" style="display: none;">
    <shiro:hasPermission name="/department/add">
        <a onclick="adddepartmentFun();" href="javascript:void(0);" class="easyui-linkbutton" data-options="plain:true,iconCls:'fi-plus icon-green'">添加</a>
    </shiro:hasPermission>
</div>