<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/commons/global.jsp" %>
<script type="text/javascript">
    /* $(function(){
       var yesState=1;
       var noState=2;
       var id=$('#teacherId').val();
    	$('#yesState').click(function(e){
    		$.ajax({
    			type:'post',
    			url:'${path }/teacher/edit',
    			data:{
    				"state":yesState,
    				"id":id
    			},
   			 success : function(result) {
   	                progressClose();
   	                result = $.parseJSON(result);
   	                if (result.success) {
   	                    $('#spState').html("审核通过");
   	                    refreshTab({tabTitle:"教师信息",url:"${path }/teacher/manager"});//刷新申报信息页面，待测试
   	                    parent.$.modalDialog.openner_dataGrid.datagrid('reload');//之所以能在这里调用到parent.$.modalDialog.openner_dataGrid这个对象，是因为user.jsp页面预定义好了
   	                    parent.$.modalDialog.handler.dialog('close');
   	                    //$('#spState').remove();
   	                } else {
   	                    var form = $('#teacherEditForm');
   	                    parent.$.messager.alert('错误', eval(result.msg), 'error');
   	                }
   	            }
    		});
    	});
    	$('#noState').click(function(e){
    		$.ajax({
    			type:'post',
    			url:'${path }/teacher/edit',
    			data:{
    				"state":noState,
    				"id":id
    			},
   			 success : function(result) {
   	                progressClose();
   	                result = $.parseJSON(result);
   	                if (result.success) {
	                    $('#spState').html("审核未通过");
	                    refreshTab({tabTitle:"教师信息",url:"${path }/teacher/manager"});//刷新申报信息页面，待测试
   	                    parent.$.modalDialog.openner_dataGrid.datagrid('reload');//之所以能在这里调用到parent.$.modalDialog.openner_dataGrid这个对象，是因为user.jsp页面预定义好了
   	                    parent.$.modalDialog.handler.dialog('close');
   	                 	//$('#spState').remove();
   	                } else {
   	                    var form = $('#teacherEditForm');
   	                    parent.$.messager.alert('错误', eval(result.msg), 'error');
   	                }
   	            }
    		});
    	});
    }); */
</script>
<div class="easyui-layout" data-options="fit:true,border:false">
    <div data-options="region:'center',border:false" title="" style="overflow: auto;padding: 3px;">
         <table class="grid">
             <tr>
                 <th>教师名</th>
                 <td><input name="id" id="teacherId" type="hidden"  value="${teacher.id}">
                 <span>${teacher.tName}</span>
                 <td rowspan="3" colspan="2">
                 <span>${teacher.idPhone }</span>
                 </td>
             </tr>
             <tr>
                 <th>教师编号</th>
                 <td><span>${teacher.teacherNum}</span></td>
             </tr>
             <tr>
                 <th>教师编号</th>
                 <td><span>${teacher.teacherNum}</span></td>
             </tr>
             <tr>
                 <th>职称</th>
                 <td><span>${teacher.jobTitle}</span></td>
                 <th>状态</th>
                 <td >
                     <span id="spState">
                      <c:if test="${teacher.state==0 }">未审核</c:if>
                      <c:if test="${teacher.state==1 }">审核通过</c:if>
                      <c:if test="${teacher.state==2 }">审核未通过</c:if>
                     </span>
                 </td>
             </tr>
             <tr>
                 <th>性别</th>
                 <td><span>${teacher.tSex}</span></td>
                 <th>出生日期</th>
                 <td><span>${teacher.tBirthday}</span></td>
             </tr>
             <tr>
                 <th>身份证号</th>
                 <td><span>${teacher.idNumber}</span></td>
                 <th>手机号</th>
                 <td><span>${teacher.tTel}</span></td>
             </tr>
             <tr>
                 <th>QQ</th>
                 <td><span>${teacher.tQq}</span></td>
                 <th>电子邮箱</th>
                 <td><span>${teacher.tEmail}</span></td>
             </tr>
             <tr>
                 <th>部门</th>
                 <td><span>${teacher.departmentName}</span></td>
                 <th>系</th>
                 <td><span>${teacher.factionName}</span></td>
             </tr>
             <tr>
                 <th>最高学位</th>
                 <td><span>${teacher.maxDegree}</span></td>
                 <th>专家</th>
                 <td><span>
                 <c:if test="${teacher.isProfessor==0}">否</c:if>
                 <c:if test="${teacher.isProfessor==1}">是</c:if>
                 </span></td>
             </tr>
         </table>
             <div>
              <h3>主要工作简历</h3>
              <div><span style="width:460px;height:261px;">${teacher.resume }</span></div>
             </div>
             <%-- <div id="teacherToolbar" style="display: none;">
	    		<shiro:hasPermission name="/teacher/audit">
	             	<input type="button" id="yesState"  value="审核通过">
	             	<input type="button" id="noState"   value="审核未通过">
             	</shiro:hasPermission>
			</div> --%>
    </div>
</div>