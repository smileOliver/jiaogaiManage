<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/commons/global.jsp" %>
<script type="text/javascript">
    $(function() {
      /*   $('#getTypeName').combobox({
            url:'${path}/department/tree',
            required: true,
            editable:false,
            panelHeight : 'auto',
        });  */
        $('#departmentAddForm').form({
            url : '${path }/department/add',
            onSubmit : function() {
	        /* var typeId=$('#getTypeName').combobox('getValue'); */
	       // alert($('#getTypeName').combobox('getText'));
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
                    var form = $('#departmentAddForm');
                    parent.$.messager.alert('错误', eval(result.msg), 'error');
                }
            }
        });
    });
</script>
<div class="easyui-layout" data-options="fit:true,border:false" >
    <div data-options="region:'center',border:false" style="overflow: auto;padding: 3px;" >
        <form id="departmentAddForm" method="post">
            <table class="grid">
                <tr>
                    <td>名称</td>
                    <td><input name="dName" type="text" placeholder="请输入部门名称" class="easyui-validatebox span2" data-options="required:true" value=""></td>
                </tr>
                <tr>
                    <td>描述</td>
                    <td colspan="4"><textarea name="dDesc" style="width: 326px;height:99px; "></textarea></td>
                </tr>
                <tr>
                    <td>地址</td>
                    <td><input name="dAddress" type="text"></td>
                    <td>电话</td>
                    <td><input name="dTel" type="text"></td>
                </tr>
                 <tr>
                    <td>类别</td>
                    <td>
                   <select  name="typeId" class="easyui-combobox" data-options="width:140,height:29,editable:false,panelHeight:'auto'" >
                    <c:forEach items="${departmentTypes}" var="each">
			             <option value="${each.id}">${each.typeName}</option>
			         </c:forEach>
                    </select>
                    <!-- <input   name="typeName" type="text" style="width: 140px; height: 29px;"> -->
                    </td>
                    <td>状态</td>
                    <td >
                        <select name="status" class="easyui-combobox" data-options="width:140,height:29,editable:false,panelHeight:'auto'">
                            <option value="0">正常</option>
                            <option value="1">停用</option>
                        </select>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</div>