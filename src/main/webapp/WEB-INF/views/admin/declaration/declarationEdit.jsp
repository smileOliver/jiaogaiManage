<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/commons/global.jsp" %>
<script type="text/javascript" charset="utf-8" src="${staticPath }/static/jquery-3.2.1.js" ></script>
<script type="text/javascript">
//ajax提交  
function editDeclaration(){  
	/* var status=$("#status").val();
	var declarationTitle=$("#declarationTitle").val();
	var declarationContent=UE.getEditor('editor'); */
	//var editorBox = UE.getEditor('editor');
	var formData=$('#declarationEditForm').serialize(); 
	var jq = top.jQuery;  //获取页面属性
    $.ajax({  
        type :"post",  
        url :"${path}/declaration/edit",  
        data :formData,
        dataType:"json",
        success : function(result) {  
            if (result.success) {
            	 parent.$.messager.alert('提示', result.msg, 'info');
                /* 提交成功后清空表单 
                $("#declarationTitle").val("");
                editorBox.setContent(''); */
                jq("#index_tabs").tabs('close','编辑申报信息');//添加成功后关闭该tabs
            } else {
            	parent.$.messager.alert('错误', eval(result.msg), 'error');
            }
        }  
    });  
 } 
 
</script>
<div class="easyui-layout" data-options="fit:true,border:false">
    <div data-options="region:'center',border:false" title="" style="overflow: auto;padding: 3px;">
        <form id="declarationEditForm" method="post">
            <table class="grid">
                <tr>
                    <td>申报信息标题</td>
                    <td><input name="id" type="hidden"  value="${declaration.id}">
                    <input name="declarationTitle" id="declarationTitle" type="text" placeholder="请输入申报信息标题" class="easyui-validatebox" data-options="required:true" value="${declaration.declarationTitle}"></td>
                </tr>
                <tr>
                    <td>内容</td>
                    <td colspan="3">
	                    <div style="overflow:hidden;">
	                    <script id="editor" type="text/plain"  name="declarationContent"
	                     style="width:1024px;min-height:200px">${declaration.declarationContent}</script>
	                     </div>
                    </td>
                </tr>
                <tr>
                    <td>状态</td>
                    <td >
                        <select id="declarationEditStatus" id="status" name="status" class="easyui-combobox" data-options="width:140,height:29,editable:false,panelHeight:'auto'">
                            <option value="0">正常</option>
                            <option value="1">停用</option>
                        </select>
                    </td>
                </tr>
                <tr>
                <td><input type="button"  onclick="editDeclaration()" value="提交"></td>
                </tr>
            </table>
        </form>
    </div>
</div>
<script type="text/javascript" charset="utf-8" src="${staticPath }/static/ueditor/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8" src="${staticPath }/static/ueditor/ueditor.all.min.js"> </script>
<script type="text/javascript" charset="utf-8" src="${staticPath }/static/ueditor/ueditor.parse.js"></script>
<script type="text/javascript" charset="utf-8" src="${staticPath }/static/ueditor/lang/zh-cn/zh-cn.js"></script>
<script type="text/javascript">

    //实例化编辑器
    //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
    var ue = UE.getEditor('editor');
   
</script>
