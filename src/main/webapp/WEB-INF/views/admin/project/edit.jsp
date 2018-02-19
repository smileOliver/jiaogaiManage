<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/commons/global.jsp" %>
<script type="text/javascript">
$(function() {
    $('#projectEditForm').form({
        url : '${path }/project/edit',
        onSubmit : function() {
            progressLoad();
            var isValid = $(this).form('validate');
            if (!isValid) {
                progressClose();
            }
            return isValid;
        },
        success : function(result) {
            progressClose();
            result = $.parseJSON(result);
            if (result.success) {
                parent.$.modalDialog.openner_dataGrid.datagrid('reload');//之所以能在这里调用到parent.$.modalDialog.openner_dataGrid这个对象，是因为user.jsp页面预定义好了
                parent.$.modalDialog.handler.dialog('close');
            } else {
                var form = $('#projectEditForm');
                parent.$.messager.alert('错误', eval(result.msg), 'error');
            }
        }
    });
    
    $("#projectEditStatus").val('${project.status}');
});
</script>
<div class="easyui-layout" data-options="fit:true,border:false">
    <div data-options="region:'center',border:false" title="" style="overflow: auto;padding: 3px;">
         <table class="grid">
             <tr>
                 <th>项目标题</th>
                 <td><input name="id" id="projectId" type="hidden"  value="${project.id}">
                 <span>${project.pTitle}</span>
                 <th>项目类型</th>
                 <td>
                 <span>${project.typeName }</span>
                 </td>
             </tr>
             <tr>
                 <th>主持人</th>
                 <td><span>${project.teacherName}</span></td>
                 <th>小组成员</th>
                 <td><span>${project.groups}</span></td>
             </tr>
              <tr>
                 <th>申请时间</th>
                 <td><span>${project.applyTime}</span></td>
                 <th>完成时间</th>
                 <td><span>${project.endTime}</span></td>
             </tr>
             <tr>
                 <th>经费预算</th>
                 <td><span>${project.budgetMoney}元</span></td>
                 <th>状态</th>
                 <td >
                     <span id="spState">
                      <c:if test="${project.status==3 }">审核通过</c:if>
                      <c:if test="${project.status==5 }">经费已审批</c:if>
                     </span>
                 </td>
             </tr>
         </table>
             <div>
              <h3>项目立项依据</h3>
              <div><span >${project.according }</span></div>
             </div>
             <div id="projectToolbar">
             <form id="projectEditForm" method="post">
              <table class="grid">
             	<tr>
                 	<th>审批经费</th>
	                 <td >
		             	<input type="hidden" name="id"  value="${project.id }">
		             	<input type="text" name="realMoney"   placeholder="请输入审批的经费">元
	             	</td>
             	</tr>
             	</table>
             </form>
			</div> 
    </div>
</div>