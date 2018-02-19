<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/commons/global.jsp" %>
<script type="text/javascript">
    var projectDataGrid;
    $(function() {
        projectDataGrid = $('#projectDataGrid').datagrid({
            url : '${path }/project/dataGrid',
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
                width : '120',/* 宽度 */
                title : '标题',/* 标题 */
                field : 'pTitle',/* 参数 */
                sortable : true/* 是否可整理 */
            } ,{
                width : '120',
                title : '项目类别',
                field : 'typeName'
            } , {
                width : '80',
                title : '主持人',
                field : 'teacherName'
            } , {
                width : '120',
                title : '小组成员',
                field : 'groups'
            } , {
                width : '80',
                title : '申请部门',
                field : 'departmentName'
            } , {
                width : '120',
                title : '申请时间',
                field : 'applyTime'
            } , {
                width : '120',
                title : '完成时间',
                field : 'endTime'
            } , {
                width : '80',
                title : '经费预算',
                field : 'budgetMoney'
            } , {
                width : '80',
                title : '审批经费',
                field : 'realMoney'
            } , {
            width : '120',
            title : '状态',
            field : 'status',
            sortable : true,
            formatter : function(value, row, index) {
                switch (value) {
                case 1:
                    return '专家未查看';
                case 2:
                    return '专家已查看';
                case 3:
                	return '审核通过';
                case 4:
                	return '审核未通过';
                case 5:
                	return '经费已审批';
                }
              }
            }, {
                field : 'action',
                title : '操作',
                width : 250,
                formatter : function(value, row, index) {
                    var str = '';
	                    <shiro:hasPermission name="/project/detail"> 
	                    	str += $.formatString('<a href="javascript:void(0)" class="project-easyui-linkbutton-detail" data-options="plain:true,iconCls:\'fi-eye icon-green\'" onclick="detailprojectFun(\'{0}\');" >详情</a>', row.id);
	                	</shiro:hasPermission>  
                        <shiro:hasPermission name="/project/edit">
	                        if(row.status==3){
	                        	str += '&nbsp;&nbsp;|&nbsp;&nbsp;';
	                            str += $.formatString('<a href="javascript:void(0)" class="project-easyui-linkbutton-edit" data-options="plain:true,iconCls:\'fi-pencil icon-blue\'" onclick="editprojectFun(\'{0}\');" >审批经费</a>', row.id);
	                        }
                            </shiro:hasPermission>
                        <shiro:hasPermission name="/project/delete">
                            str += '&nbsp;&nbsp;|&nbsp;&nbsp;';
                            str += $.formatString('<a href="javascript:void(0)" class="project-easyui-linkbutton-del" data-options="plain:true,iconCls:\'fi-x icon-red\'" onclick="deleteprojectFun(\'{0}\');" >删除</a>', row.id);
                        </shiro:hasPermission>
                    return str;
                }
            } ] ],
            onLoadSuccess:function(data){
            	$('.project-easyui-linkbutton-detail').linkbutton({text:'详情'});
                $('.project-easyui-linkbutton-edit').linkbutton({text:'审批经费'});
                $('.project-easyui-linkbutton-del').linkbutton({text:'删除'});
            },
            toolbar : '#projectToolbar'
        });
    });

   	var jq = top.jQuery;    //可以使用该函数获取父页面id
   
    function detailprojectFun(id) {
    	 if (id == undefined) {//点击右键菜单才会触发这个
             var rows = projectDataGrid.datagrid('getSelections');
             id = rows[0].id;
         } else {//点击操作里面的删除图标会触发这个
             projectDataGrid.datagrid('unselectAll').datagrid('uncheckAll');
         }
    	var title="项目详情";
   	    var url='${path }/project/detail?id='+id;
     
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
     
    function editprojectFun(id) {
    	 if (id == undefined) {//点击右键菜单才会触发这个
             var rows = projectDataGrid.datagrid('getSelections');
             id = rows[0].id;
         } else {//点击操作里面的删除图标会触发这个
             projectDataGrid.datagrid('unselectAll').datagrid('uncheckAll');
         }
    	 parent.$.modalDialog({
             title : '审批经费',
             width : 400,
             height : 420,
             href : '${path }/project/editPage?id=' + id,
             buttons : [ {
                 text : '确定',
                 handler : function() {
                     parent.$.modalDialog.openner_dataGrid = projectDataGrid;//因为添加成功之后，需要刷新这个dataGrid，所以先预定义好
                     var f = parent.$.modalDialog.handler.find('#projectEditForm');
                     f.submit();
                 }
             } ]
         });
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
    function deleteprojectFun(id) {
        if (id == undefined) {//点击右键菜单才会触发这个
            var rows = projectDataGrid.datagrid('getSelections');
            id = rows[0].id;
        } else {//点击操作里面的删除图标会触发这个
            projectDataGrid.datagrid('unselectAll').datagrid('uncheckAll');
        }
        parent.$.messager.confirm('询问', '您是否要删除当前申报信息？', function(b) {
            if (b) {
                progressLoad();
                $.post('${path }/project/delete', {
                    id : id
                }, function(result) {
                    if (result.success) {
                        parent.$.messager.alert('提示', result.msg, 'info');
                        projectDataGrid.datagrid('reload');
                    }
                    progressClose();
                }, 'JSON');
            }
        });
    }
    function searchProjectFun() {
    	projectDataGrid.datagrid('load', $.serializeObject($('#searchProjectForm')));
    }
    function cleanProjectFun() {
    	var s = document.getElementById("s1");
    	var ops = s.options;
    	for(var i=0;i<ops.length; i++){
    		var tempValue = ops[i].value;
    		if(tempValue == "")   //这里是你要选的值
    		{
    			ops[i].selected = true;
    			break;
    		}
    	}
        $('#searchProjectForm input').val('');
        projectDataGrid.datagrid('load', {});
    }
  
</script>
<div class="easyui-layout" data-options="fit:true,border:false">
	<div data-options="region:'north',border:false" style="height: 30px; overflow: hidden;background-color: #fff">
        <form id="searchProjectForm">
            <table>
                <tr>
                    <th>标题:</th>
                    <td><input name="pTitle" placeholder="请输入项目标题"/></td>
                    <th>教师名：</th>
                    <td><input name="teacherName" placeholder="请输入教师名"></td>
                    <th>所属类型：</th>
                    <td><input name="typeName" placeholder="类型名"></td>
                    <td>
                    	<select name="status" id="s1">
	                    	<option value="" >请选择</option>
	                    	<option value="1">专家未查看</option>
	                    	<option value="2">专家已查看</option>
	                    	<option value="3">审核已通过</option>
	                    	<option value="4">审核未通过</option>
	                    	<option value="5">经费已审批</option>
                    	</select>
                    </td>
                    <td>
                       <!--  <input name="createdateStart" placeholder="点击选择时间" onclick="WdatePicker({readOnly:true,dateFmt:'yyyy-MM-dd HH:mm:ss'})" readonly="readonly" />至
                        <input  name="createdateEnd" placeholder="点击选择时间" onclick="WdatePicker({readOnly:true,dateFmt:'yyyy-MM-dd HH:mm:ss'})" readonly="readonly" /> -->
                        <a href="javascript:void(0);" class="easyui-linkbutton" data-options="iconCls:'fi-magnifying-glass',plain:true" onclick="searchProjectFun();">查询</a>
                        <a href="javascript:void(0);" class="easyui-linkbutton" data-options="iconCls:'fi-x-circle',plain:true" onclick="cleanProjectFun();">清空</a>
                    </td>
                </tr>
            </table>
        </form>
    </div>
    <div data-options="region:'center',border:false"  style="overflow: auto;">
        <table id="projectDataGrid"></table>
    </div>
	
</div>