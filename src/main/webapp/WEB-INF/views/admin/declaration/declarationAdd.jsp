<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/commons/global.jsp" %>
<script type="text/javascript" charset="utf-8" src="${staticPath }/static/jquery-3.2.1.js" ></script>
<script type="text/javascript">
/*    $(function() {
        $('#declarationAddForm').form({
            url : '${path }/declaration/add',
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
                    var form = $('#declarationAddForm');
                    parent.$.messager.alert('错误', eval(result.msg), 'error');
                }
            }
            
        });
    });  */  
    
   //ajax提交  
  function addDeclaration(){  
	var status=$("#status").val();
	var declarationTitle=$("#declarationTitle").val();
	var ue=UE.getEditor('editor');
	//var editorBox = UE.getEditor('editor');
	var editorContent=ue.getContent();
	var jq = top.jQuery;  //获取页面属性
	
      $.ajax({  
          type :"post",  
          url :"${path}/declaration/add",  
          data :{
        	  "declarationTitle":declarationTitle,
        	  "declarationContent":editorContent,
        	  "status":status
          },
          dataType:"json",
          success : function(result) {  
              if (result.success) {
            	  parent.$.messager.alert('提示', result.msg, 'info');
                  /* 提交成功后清空表单 
                  $("#declarationTitle").val("");
                  editorBox.setContent(''); */
                  jq("#index_tabs").tabs('close','添加申报信息');//添加成功后关闭该tabs
                  refreshTab({tabTitle:"申报信息",url:"${path }/declaration/manager"});//刷新申报信息页面，待测试
              } else {
            	  parent.$.messager.alert('错误', eval(result.msg), 'error');
              }
          }  
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
</script>
<div class="easyui-layout" id="dlg" data-options="fit:true,border:false" >
    <div data-options="region:'center',border:false" style="overflow: hidden;padding: 3px;" >
        <form id="declarationAddForm" method="post">
            <table class="grid">
                <tr>
                    <td style="border-bottom: 1px solid #ADADAD; ">申报信息标题</td>
                    <td><input  type="text" placeholder="请输入申报信息标题" 
                    class="easyui-validatebox span2" data-options="required:true" id="declarationTitle"
                    style="width:400px;height: 30px;"></td>
                </tr>
                <tr>
                    <td style="border-bottom: 1px solid #ADADAD; ">内容</td>
                    <td colspan="10">
                    <div style="overflow:hidden;">
	                    <script id="editor" type="text/plain" 
	                        style="width:1024px;min-height:200px">
					    </script>
                     </div>
                    </td>
                </tr>
                <tr>
                    <td>状态</td>
                    <td >
                        <select name="status" id="status" class="easyui-combobox" data-options="width:140,height:29,editable:false,panelHeight:'auto'">
                            <option value="0">正常</option>
                            <option value="1">停用</option>
                        </select>
                    </td>
                </tr>
                <tr>
                <td><input type="button"  onclick="addDeclaration()" value="提交"></td>
                </tr>
            </table>
        </form>
    </div>
</div>


<script type="text/javascript" charset="utf-8" src="${staticPath }/static/ueditor/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8" src="${staticPath }/static/ueditor/ueditor.all.min.js"> </script>
<script type="text/javascript" charset="utf-8" src="${staticPath }/static/ueditor/lang/zh-cn/zh-cn.js"></script>
<script type="text/javascript">

    //实例化编辑器
    //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
    var ue = UE.getEditor('editor');
</script>