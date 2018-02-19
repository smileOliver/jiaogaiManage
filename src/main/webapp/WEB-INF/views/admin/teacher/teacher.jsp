<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/commons/global.jsp" %>
<script type="text/javascript">
    var teacherDataGrid;
    $(function() {
        teacherDataGrid = $('#teacherDataGrid').datagrid({
            url : '${path }/teacher/dataGrid',
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
                title : '教师名',/* 标题 */
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
            } , {
                width : '80',
                title : '专家',
                field : 'isProfessor',
                sortable : true,
                formatter : function(value, row, index) {
                    switch (value) {
                    case 0:
                        return '否';
                    case 1:
                        return '是';
                    }
               }
            } , {
            width : '80',
            title : '状态',
            field : 'state',
            sortable : true,
            formatter : function(value, row, index) {
                switch (value) {
                case 0:
                    return '未审核';
                case 1:
                    return '审核通过';
                case 2:
                	return '审核未通过';
                }
              }
            }, {
                field : 'action',
                title : '操作',
                width : 300,
                formatter : function(value, row, index) {
                    var str = '';
                        <shiro:hasPermission name="/teacher/edit">
                            str += $.formatString('<a href="javascript:void(0)" class="teacher-easyui-linkbutton-edit" data-options="plain:true,iconCls:\'fi-pencil icon-blue\'" onclick="editteacherFun(\'{0}\');" >查看</a>', row.id);
                        </shiro:hasPermission>
                        <shiro:hasPermission name="/teacher/delete">
                            str += '&nbsp;&nbsp;|&nbsp;&nbsp;';
                            str += $.formatString('<a href="javascript:void(0)" class="teacher-easyui-linkbutton-del" data-options="plain:true,iconCls:\'fi-x icon-red\'" onclick="deleteteacherFun(\'{0}\');" >删除</a>', row.id);
                        </shiro:hasPermission>
                        <shiro:hasPermission name="/teacher/audit">
                        if(row.state==0){
	                       str += '&nbsp;&nbsp;|&nbsp;&nbsp;';
	                       str += $.formatString('<a href="javascript:void(0)" class="teacher-easyui-linkbutton-auditYes" data-options="plain:true,iconCls:\'fi-check icon-green\'" onclick="auditYesFun(\'{0}\');" >通过</a>', row.id);
		                   str += '&nbsp;&nbsp;|&nbsp;&nbsp;';
		                   str += $.formatString('<a href="javascript:void(0)" class="teacher-easyui-linkbutton-auditNo" data-options="plain:true,iconCls:\'fi-x-circle icon-red\'" onclick="auditNoFun(\'{0}\');" >不通过</a>', row.id);
                        }
                        if(row.state==1){
                           str += '&nbsp;&nbsp;|&nbsp;&nbsp;';
 		                   str += $.formatString('<a href="javascript:void(0)" class="teacher-easyui-linkbutton-auditNo" data-options="plain:true,iconCls:\'fi-x-circle icon-red\'" onclick="auditNoFun(\'{0}\');" >不通过</a>', row.id);
 		                  <shiro:hasPermission name="/teacher/isProfessor">
 		                   if(row.isProfessor==0){
 		                  	str += '&nbsp;&nbsp;|&nbsp;&nbsp;';
	                       	str += $.formatString('<a href="javascript:void(0)" class="teacher-easyui-linkbutton-isProfessor" data-options="plain:true,iconCls:\'fi-check icon-yellow\'" onclick="isProfessorFun(\'{0}\');" >专家(是)</a>', row.id);
 		                   }
 		                   if(row.isProfessor==1){
 		                	str += '&nbsp;&nbsp;|&nbsp;&nbsp;';
 		                    str += $.formatString('<a href="javascript:void(0)" class="teacher-easyui-linkbutton-noProfessor" data-options="plain:true,iconCls:\'fi-x icon-gray\'" onclick="noProfessorFun(\'{0}\');" >专家(否)</a>', row.id);
 		                   }
 		                  </shiro:hasPermission>
                        }
                        if(row.state==2){
                           str += '&nbsp;&nbsp;|&nbsp;&nbsp;';
  	                       str += $.formatString('<a href="javascript:void(0)" class="teacher-easyui-linkbutton-auditYes" data-options="plain:true,iconCls:\'fi-check icon-green\'" onclick="auditYesFun(\'{0}\');" >通过</a>', row.id);
                        }
	                	</shiro:hasPermission>
                    return str;
                }
            } ] ],
            onLoadSuccess:function(data){
                $('.teacher-easyui-linkbutton-edit').linkbutton({text:'查看'});
                $('.teacher-easyui-linkbutton-del').linkbutton({text:'删除'});
                $('.teacher-easyui-linkbutton-auditYes').linkbutton({text:'通过'});
                $('.teacher-easyui-linkbutton-auditNo').linkbutton({text:'不通过'});
                $('.teacher-easyui-linkbutton-isProfessor').linkbutton({text:'专家(是)'});
                $('.teacher-easyui-linkbutton-noProfessor').linkbutton({text:'专家(否)'});
            },
            toolbar : '#teacherToolbar'
        });
    });

    function editteacherFun(id) {
        if (id == undefined) {
            var rows = teacherDataGrid.datagrid('getSelections');
            id = rows[0].id;
        } else {
            teacherDataGrid.datagrid('unselectAll').datagrid('uncheckAll');
        }
        parent.$.modalDialog({
            title : '查看',
            width : 400,
            height : 420,
            href : '${path }/teacher/detail?id=' + id
        });
    }

    function deleteteacherFun(id) {
        if (id == undefined) {//点击右键菜单才会触发这个
            var rows = teacherDataGrid.datagrid('getSelections');
            id = rows[0].id;
        } else {//点击操作里面的删除图标会触发这个
            teacherDataGrid.datagrid('unselectAll').datagrid('uncheckAll');
        }
        parent.$.messager.confirm('询问', '您是否要删除当前公告信息？', function(b) {
            if (b) {
                progressLoad();
                $.post('${path }/teacher/delete', {
                    id : id
                }, function(result) {
                    if (result.success) {
                        parent.$.messager.alert('提示', result.msg, 'info');
                        teacherDataGrid.datagrid('reload');
                    }
                    progressClose();
                }, 'JSON');
            }
        });
    }
    function auditYesFun(id){
    	 if (id == undefined) {
             var rows = teacherDataGrid.datagrid('getSelections');
             id = rows[0].id;
         } else {
             teacherDataGrid.datagrid('unselectAll').datagrid('uncheckAll');
         }
    	var yesState=1;
	    /* var rows= teacherDataGrid.datagrid('getRows');
	    var rowIndex= teacherDataGrid.datagrid('getRowIndex',rows[0]);
	    rows[0][columns[0][11].fileId]=newRows[1].state; */
	    
   		$.ajax({
   			type:'post',
   			url:'${path }/teacher/edit',
   			data:{
   				"state":yesState,
   				"id":id
   			},
  			success : function(result) {
  	                if(result==200) {
  	                $('#teacherDataGrid').datagrid('reload'); //在向服务器改变数据之后，更新前台数据。
  	                	parent.$.messager.alert('提示', "修改成功", 'info');
  	                } else {
  	                    parent.$.messager.alert('错误', "修改失败", 'error');
  	                }
  	            }
   		});
    }
    function auditNoFun(id){
    	 if (id == undefined) {
             var rows = teacherDataGrid.datagrid('getSelections');
             id = rows[0].id;
         } else {
             teacherDataGrid.datagrid('unselectAll').datagrid('uncheckAll');
         }
    	 
  	    var noState=2;
   		$.ajax({
   			type:'post',
   			url:'${path }/teacher/edit',
   			data:{
   				"state":noState,
   				"id":id
   			},
  			 success : function(result) {
  	                if (result==200) {
  	                    /* $('#spState').html("审核不通过"); */
  	                	/* $('#teacherDataGrid').datagrid('updateRow',{
  	          		    index: rowIndex,
  	          		    row: {
  	          		        state:'不通过'
  	          		    } 
  	          		});*/
  	          	        $('#teacherDataGrid').datagrid('reload');//在向服务器改变数据之后，更新前台数据。 
  	          			parent.$.messager.alert('提示', "修改成功", 'info');
  	                } else {
  	                    parent.$.messager.alert('错误', "修改失败", 'error');
  	                }
  	            }
   		});
    }
    function isProfessorFun(id){
    	 if (id == undefined) {
             var rows = teacherDataGrid.datagrid('getSelections');
             id = rows[0].id;
         } else {
             teacherDataGrid.datagrid('unselectAll').datagrid('uncheckAll');
         }
    	 var isProfessor=1;
    	 $.ajax({
    			type:'post',
    			url:'${path }/teacher/edit',
    			data:{
    				"isProfessor":isProfessor,
    				"id":id
    			},
   			 success : function(result) {
   	                if (result==200) {
   	          	        $('#teacherDataGrid').datagrid('reload');//在向服务器改变数据之后，更新前台数据。 
   	          			parent.$.messager.alert('提示', "修改成功", 'info');
   	                } else {
   	                    parent.$.messager.alert('错误', "修改失败", 'error');
   	                }
   	            }
    		}); 
    }
    function noProfessorFun(id){
   	 if (id == undefined) {
            var rows = teacherDataGrid.datagrid('getSelections');
            id = rows[0].id;
        } else {
            teacherDataGrid.datagrid('unselectAll').datagrid('uncheckAll');
        }
   	 var isProfessor=0;
   	 $.ajax({
   			type:'post',
   			url:'${path }/teacher/edit',
   			data:{
   				"isProfessor":isProfessor,
   				"id":id
   			},
  			 success : function(result) {
  	                if (result==200) {
  	          	        $('#teacherDataGrid').datagrid('reload');//在向服务器改变数据之后，更新前台数据。 
  	          			parent.$.messager.alert('提示', "修改成功", 'info');
  	                } else {
  	                    parent.$.messager.alert('错误', "修改失败", 'error');
  	                }
  	            }
   		}); 
   }
    function searchTeacherFun() {
    	teacherDataGrid.datagrid('load', $.serializeObject($('#searchTeacherForm')));
    }
    function cleanTeacherFun() {
        $('#searchTeacherForm input').val('');
        teacherDataGrid.datagrid('load', {});
    }
    $("input:radio").click(function(){  
        var domName = $(this).attr('isProfessor');//获取当前单选框控件name 属性值   
        var state=$(this).attr('state');
        var checkedState = $(this).attr('checked');//记录当前选中状态  
        $("input:radio[name='" + domName + "']").attr('checked',false);//1. 
        $("input:radio[name='" + state + "']").attr('checked',false);
        $(this).attr('checked',true);//2.  
        if(checkedState == 'checked'){  
            $(this).attr('checked',false); //3.  
        }  
    });
  
</script>
<div class="easyui-layout" data-options="fit:true,border:false">
	<div data-options="region:'north',border:false" style="height: 30px; overflow: hidden;background-color: #fff">
        <form id="searchTeacherForm">
            <table>
                <tr>
                    <th>姓名:</th>
                    <td><input name="tName" placeholder="请输入教师姓名"/></td>
                    <th>教师编号：</th>
                    <td><input name="teacherNum" placeholder="请输入教师编号"></td>
                    <th>所属部门：</th>
                    <td><input name="departmentName" placeholder="部门名"></td>
                    <td>
                      <input type="radio" name="isProfessor" value="1">专家
                      <input type="radio" name="isProfessor" value="0">教师
                    </td>   
                    <td>
                    	<input type="radio" name="state" value="0">未审核
                    	<input type="radio" name="state" value="1">审核通过
                    	<input type="radio" name="state" value="2">审核未通过
                    </td>
                    <td>
                       <!--  <input name="createdateStart" placeholder="点击选择时间" onclick="WdatePicker({readOnly:true,dateFmt:'yyyy-MM-dd HH:mm:ss'})" readonly="readonly" />至
                        <input  name="createdateEnd" placeholder="点击选择时间" onclick="WdatePicker({readOnly:true,dateFmt:'yyyy-MM-dd HH:mm:ss'})" readonly="readonly" /> -->
                        <a href="javascript:void(0);" class="easyui-linkbutton" data-options="iconCls:'fi-magnifying-glass',plain:true" onclick="searchTeacherFun();">查询</a>
                        <a href="javascript:void(0);" class="easyui-linkbutton" data-options="iconCls:'fi-x-circle',plain:true" onclick="cleanTeacherFun();">清空</a>
                    </td>
                </tr>
            </table>
        </form>
    </div>
    <div data-options="region:'center',border:true,title:'教师列表'" style="overflow: auto;">
        <table id="teacherDataGrid" data-options="fit:true,border:false"></table>
    </div>
</div>
