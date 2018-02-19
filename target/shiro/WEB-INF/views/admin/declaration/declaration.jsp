<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/commons/global.jsp" %>
<script type="text/javascript">
    var declarationDataGrid;
    $(function() {
        declarationDataGrid = $('#declarationDataGrid').datagrid({
            url : '${path }/declaration/dataGrid',
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
                field : 'declarationTitle',
                sortable : true
            } ,{
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
	                    /* <shiro:hasPermission name="/declaration/detail"> */
	                    	str += $.formatString('<a href="javascript:void(0)" class="declaration-easyui-linkbutton-deatil" data-options="plain:true,iconCls:\'fi-pencil icon-blue\'" onclick="detaildeclarationFun(\'{0}\');" >详情</a>', row.id);
	                	/* </shiro:hasPermission> */ 
                        <shiro:hasPermission name="/declaration/edit">
                            str += $.formatString('<a href="javascript:void(0)" class="declaration-easyui-linkbutton-edit" data-options="plain:true,iconCls:\'fi-pencil icon-blue\'" onclick="editdeclarationFun(\'{0}\');" >编辑</a>', row.id);
                        </shiro:hasPermission>
                        <shiro:hasPermission name="/declaration/delete">
                            str += '&nbsp;&nbsp;|&nbsp;&nbsp;';
                            str += $.formatString('<a href="javascript:void(0)" class="declaration-easyui-linkbutton-del" data-options="plain:true,iconCls:\'fi-x icon-red\'" onclick="deletedeclarationFun(\'{0}\');" >删除</a>', row.id);
                        </shiro:hasPermission>
                    return str;
                }
            } ] ],
            onLoadSuccess:function(data){
            	$('.declaration-easyui-linkbutton-detail').linkbutton({text:'详情'});
                $('.declaration-easyui-linkbutton-edit').linkbutton({text:'编辑'});
                $('.declaration-easyui-linkbutton-del').linkbutton({text:'删除'});
            },
            toolbar : '#declarationToolbar'
        });
    });

    function adddeclarationFun() {
        parent.$.modalDialog({
        	
            title : '添加',
            width : 1000,
            height : 800,
            href : '${path }/declaration/addPage',
            buttons : [ {
                text : '确定',
                handler : function() {
                    parent.$.modalDialog.openner_dataGrid = declarationDataGrid;//因为添加成功之后，需要刷新这个treeGrid，所以先预定义好
                    var f = parent.$.modalDialog.handler.find('#declarationAddForm');
                    f.submit();
                }
            } ]
        });
    }
    function detaildeclarationFun(id) {
        if (id == undefined) {
            var rows = declarationDataGrid.datagrid('getSelections');
            id = rows[0].id;
        } else {
            declarationDataGrid.datagrid('unselectAll').datagrid('uncheckAll');
        }
        parent.$.modalDialog({
            title : '详情',
            width : 1000,
            height : 800,
            href : '${path }/declaration/detailPage?id=' + id
            
        });
    }
    function editdeclarationFun(id) {
        if (id == undefined) {
            var rows = declarationDataGrid.datagrid('getSelections');
            id = rows[0].id;
        } else {
            declarationDataGrid.datagrid('unselectAll').datagrid('uncheckAll');
        }
        parent.$.modalDialog({
            title : '编辑',
            width : 1000,
            height : 800,
            href : '${path }/declaration/editPage?id=' + id,
            buttons : [ {
                text : '确定',
                handler : function() {
                    parent.$.modalDialog.openner_dataGrid = declarationDataGrid;//因为添加成功之后，需要刷新这个dataGrid，所以先预定义好
                    var f = parent.$.modalDialog.handler.find('#declarationEditForm');
                    f.submit();
                }
            } ]
        });
    }

    function deletedeclarationFun(id) {
        if (id == undefined) {//点击右键菜单才会触发这个
            var rows = declarationDataGrid.datagrid('getSelections');
            id = rows[0].id;
        } else {//点击操作里面的删除图标会触发这个
            declarationDataGrid.datagrid('unselectAll').datagrid('uncheckAll');
        }
        parent.$.messager.confirm('询问', '您是否要删除当前公告信息？', function(b) {
            if (b) {
                progressLoad();
                $.post('${path }/declaration/delete', {
                    id : id
                }, function(result) {
                    if (result.success) {
                        parent.$.messager.alert('提示', result.msg, 'info');
                        declarationDataGrid.datagrid('reload');
                    }
                    progressClose();
                }, 'JSON');
            }
        });
    }

</script>
<div class="easyui-layout" data-options="fit:true,border:false">
    <div data-options="region:'center',fit:true,border:false">
        <table id="declarationDataGrid" data-options="fit:true,border:false"></table>
    </div>
</div>
<div id="declarationToolbar" style="display: none;">
    <shiro:hasPermission name="/declaration/add">
        <a onclick="adddeclarationFun();" href="javascript:void(0);" class="easyui-linkbutton" data-options="plain:true,iconCls:'fi-plus icon-green'">添加</a>
    </shiro:hasPermission>
</div>