<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/commons/global.jsp" %>
<script type="text/javascript" charset="utf-8" src="${staticPath }/static/jquery-3.2.1.js" ></script>
<script type="text/javascript" charset="utf-8" >
//当前tab  
   alert("执行了")
   var id=$('#declarationId').val;
   var URL'${path }/declaration/detailPage?id='+id;
   var current_tab = $('#declarationDet').tabs('getSelected');  
   $('#declarationDet').tabs('update',{  
        tab:current_tab,  
        options : {  
             content : '<iframe scrolling="auto" frameborder="0"  src="'+URL+'" style="width:100%;height:100%;"></iframe>',  
         //或者 href : '';  
        }  
   });  
</script>
<div class="easyui-layout" data-options="fit:true,border:false" 
style="background-color:#87CEFA;width: 100%;height: 100%;" id="frame_tabs">
    <div data-options="region:'center',border:false" style="overflow: auto;padding: 3px;">
    <input type="hidden" id="declarationId" value="${ declaration.id}">
        <h1 style="text-align: center;">${declaration.declarationTitle}</h1>  <br/>
          ${declaration.declarationContent}
          <br>
          <div>
                 状态:<c:if test="${declaration.status==0 }">正常</c:if>
           <c:if test="${declaration.status==1 }">停用</c:if>
          </div>         
    </div>
</div>
