<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/commons/global.jsp" %>
<script type="text/javascript">
    $(function() {
        $('#noticeEditForm').form({
            url : '${path }/notice/edit',
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
                    var form = $('#noticeEditForm');
                    parent.$.messager.alert('错误', eval(result.msg), 'error');
                }
            }
        });
        
        $("#noticeEditStatus").val('${notice.status}');
    });
</script>
<div class="easyui-layout" data-options="fit:true,border:false">
    <div data-options="region:'center',border:false" title="" style="overflow: auto;padding: 3px;">
        <form id="noticeEditForm" method="post">
            <table class="grid">
                <tr>
                    <td>公告标题</td>
                    <td><input name="id" type="hidden"  value="${notice.id}">
                    <input name="noticeTitle" type="text" placeholder="请输入公告标题" class="easyui-validatebox" data-options="required:true" value="${notice.noticeTitle}"></td>
                </tr>
                <tr>
                    <td>内容</td>
                    <td colspan="4"><textarea name="noticeContent" style="width: 360px;height:127px;"  placeholder="请输入公告内容">${notice.noticeContent}</textarea></td>
                </tr>
                <tr>
                    <td>状态</td>
                    <td >
                        <select id="noticeEditStatus" name="status" class="easyui-combobox" data-options="width:140,height:29,editable:false,panelHeight:'auto'">
                            <option value="0">正常</option>
                            <option value="1">停用</option>
                        </select>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</div>