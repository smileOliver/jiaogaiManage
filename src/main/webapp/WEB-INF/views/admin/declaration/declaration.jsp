<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/commons/global.jsp" %>
<script type="text/javascript">
    var declarationDataGrid;
    $(function() {
        declarationDataGrid = $('#declarationDataGrid').datagrid({
            url : '${path }/declaration/dataGrid',
            fit : true,
            border: false,
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
                width : '80',/* 宽度 */
                title : '标题',/* 标题 */
                field : 'declarationTitle',/* 参数 */
                sortable : true/* 是否可整理 */
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
	                    <shiro:hasPermission name="/declaration/detail"> 
	                    	str += $.formatString('<a href="javascript:void(0)" class="declaration-easyui-linkbutton-detail" data-options="plain:true,iconCls:\'fi-eye icon-green\'" onclick="detaildeclarationFun(\'{0}\');" >详情</a>', row.id);
	                	</shiro:hasPermission>  
                        <shiro:hasPermission name="/declaration/edit">
                        str += '&nbsp;&nbsp;|&nbsp;&nbsp;';
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

    /* function adddeclarationFun() {
    	
        parent.$.modalDialog({
        	
            title : '添加',
            width : 1200,
            height : 500,
            resizable:true,
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
    } */
   	var jq = top.jQuery;    //可以使用该函数获取父页面id
    function adddeclarationFun(){
    	 var title="添加申报信息";
    	 var url='${path }/declaration/addPage';
    	 /* var win = window.opener;
         var text_fu = win.document.getElementById("index_tabs"); */
         if (jq("#index_tabs").tabs('exists', title)){    
             jq("#index_tabs").tabs('select', title);  
         } else {  
               var content = '<iframe scrolling="auto" frameborder="0" src="'+url+'" style="width:100%;height:100%;"></iframe>';     
                jq("#index_tabs").tabs('add',{    
                                   title:title,    
                                   content:content,    
                                   closable:true,
                                 });    
          }    
    }
    function detaildeclarationFun(id) {
    	 if (id == undefined) {//点击右键菜单才会触发这个
             var rows = declarationDataGrid.datagrid('getSelections');
             id = rows[0].id;
         } else {//点击操作里面的删除图标会触发这个
             declarationDataGrid.datagrid('unselectAll').datagrid('uncheckAll');
         }
    	var title="申报信息详情";
   	    var url='${path }/declaration/detailPage?id='+id;
     
	     if (jq("#index_tabs").tabs('exists', title)){    
	         jq("#index_tabs").tabs('select', title);
	         refreshTab({tabTitle:title,url:url});
	     } else {  
           var content = '<iframe scrolling="auto" frameborder="0"  src="'+url+'" style="width:100%;height:100%;"></iframe>';     
            jq("#index_tabs").tabs('add',{
                               title:title,    
                               content:content,    
                               closable:true,
                               iconCls:'fi-eye icon-green'
           });    
      }    
    }
     
    function editdeclarationFun(id) {
    	 if (id == undefined) {//点击右键菜单才会触发这个
             var rows = declarationDataGrid.datagrid('getSelections');
             id = rows[0].id;
         } else {//点击操作里面的删除图标会触发这个
             declarationDataGrid.datagrid('unselectAll').datagrid('uncheckAll');
         }
    	var title="编辑申报信息";
   	    var url='${path }/declaration/editPage?id='+id;
   	 	var jq = top.jQuery;    
     
	     if (jq("#index_tabs").tabs('exists', title)){ //如果tab已经存在,则选中并刷新该tab     
	         jq("#index_tabs").tabs('select', title); 
	         refreshTab({tabTitle:title,url:url});
	     } else {  
	           var content = '<iframe scrolling="auto" frameborder="0"  src="'+url+'" style="width:100%;height:100%;"></iframe>';     
	            jq("#index_tabs").tabs('add',{  
	                               title:title,    
	                               content:content,    
	                               closable:true,
	                               iconCls:'fi-page-edit icon-blue'
           });    
      }    
    }

    /**       
     * 刷新tab   
     * @cfg    
     *example: {tabTitle:'tabTitle',url:'refreshUrl'}   
     *如果tabTitle为空，则默认刷新当前选中的tab   
     *如果url为空，则默认以原来的url进行reload   
     */    
    function refreshTab(cfg){    
        var refresh_tab = cfg.tabTitle?jq("#index_tabs").tabs('getTab',cfg.tabTitle):jq("#index_tabs").tabs('getSelected');    
        if(refresh_tab && refresh_tab.find('iframe').length > 0){    
        var _refresh_ifram = refresh_tab.find('iframe')[0];    
        var refresh_url = cfg.url?cfg.url:_refresh_ifram.src;    
        //_refresh_ifram.src = refresh_url;    
        _refresh_ifram.contentWindow.location.href=refresh_url;    
        }    
    }    
    function deletedeclarationFun(id) {
        if (id == undefined) {//点击右键菜单才会触发这个
            var rows = declarationDataGrid.datagrid('getSelections');
            id = rows[0].id;
        } else {//点击操作里面的删除图标会触发这个
            declarationDataGrid.datagrid('unselectAll').datagrid('uncheckAll');
        }
        parent.$.messager.confirm('询问', '您是否要删除当前申报信息？', function(b) {
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
    <div data-options="region:'center',border:false"  style="overflow: auto;">
        <table id="declarationDataGrid"></table>
    </div>
	<div id="declarationToolbar" style="display: none;">
	    <shiro:hasPermission name="/declaration/add">
	        <a  onclick="adddeclarationFun();" href="javascript:void(0);" class="easyui-linkbutton" data-options="plain:true,iconCls:'fi-plus icon-green'">添加</a>
	    </shiro:hasPermission>
	</div>
</div>