<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/commons/global.jsp" %>
<script type="text/javascript">
    $(function() {
    	$(document).ready(function(){  
    	     var key=$("#selectRefundReason").val();
    	     //根据值让option选中 
    	     $("#refundReason option[value='"+key+"']").attr("selected","selected"); 
    	}); 
        $('#departmentEditForm').form({
            url : '${path }/department/edit',
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
                    var form = $('#departmentEditForm');
                    parent.$.messager.alert('错误', eval(result.msg), 'error');
                }
            }
        });
        
        $("#departmentEditStatus").val('${department.status}');
    });
</script>
<div class="easyui-layout" data-options="fit:true,border:false">
    <div data-options="region:'center',border:false" title="" style="overflow: auto;padding: 3px;">
        <form id="departmentEditForm" method="post">
            <table class="grid">
                <tr>
                    <td>名称</td>
                    <td><input name="id"  type="hidden"  value="${department.id}">
                    <input name="dName" type="text" placeholder="请输入名称" class="easyui-validatebox" data-options="required:true" value="${department.dName}"></td>
                </tr>
                <tr>
                    <td>描述</td>
                    <td colspan="4"><textarea name="dDesc" style="width: 326px;height:99px; ">${department.dDesc}</textarea></td>
                </tr>
                <tr>
                    <td>地址</td>
                    <td><input name="dAddress" type="text" value="${department.dAddress }"></td>
                    <td>电话</td>
                    <td><input name="dTel" type="text" value="${department.dTel}"></td>
                </tr>
                 <tr>
                    <td>类别</td>
                    <td>
                     <input type="hidden" id ="selectRefundReason" value="${department.typeId}"/>
	                   <select  name="typeId" id="refundReason" class="easyui-combobox"  style="width: 140px; height: 29px;">
	                   <c:forEach items="${departmentTypes}" var="each">
			             <option value="${each.id}">${each.typeName}</option>
			           </c:forEach>
                     </select>
                    </td>
                    <td>状态</td>
                    <td >
                        <select id="departmentEditStatus" name="status" class="easyui-combobox" data-options="width:140,height:29,editable:false,panelHeight:'auto'">
                            <option value="0">正常</option>
                            <option value="1">停用</option>
                        </select>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</div>