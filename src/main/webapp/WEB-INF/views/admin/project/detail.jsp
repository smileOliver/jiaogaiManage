<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/commons/global.jsp" %>
<script type="text/javascript" charset="utf-8" src="${staticPath }/static/jquery-3.2.1.js" ></script>
 <style>
	@font-face{
	font-family:"Times New Roman";
	}
	
	@font-face{
	font-family:"宋体";
	}
	
	@font-face{
	font-family:"Wingdings";
	}
	
	@font-face{
	font-family:"仿宋_GB2312";
	}
	
	@font-face{
	font-family:"黑体";
	}
	
	p.MsoNormal{
	mso-style-name:正文;
	mso-style-parent:"";
	margin:0pt;
	margin-bottom:.0001pt;
	mso-pagination:none;
	text-align:justify;
	text-justify:inter-ideograph;
	font-family:'Times New Roman';
	mso-fareast-font-family:仿宋_GB2312;
	font-size:15.0000pt;
	mso-font-kerning:1.0000pt;
	}
	
	span.10{
	font-family:'Times New Roman';
	}
	
	span.15{
	font-family:'Times New Roman';
	font-weight:bold;
	}
	
	span.16{
	font-family:'Times New Roman';
	}
	
	p.p{
	mso-style-name:"普通\(网站\)";
	margin-top:5.0000pt;
	margin-bottom:5.0000pt;
	mso-margin-top-alt:auto;
	mso-margin-bottom-alt:auto;
	mso-pagination:widow-orphan;
	text-align:left;
	font-family:宋体;
	mso-fareast-font-family:仿宋_GB2312;
	font-size:12.0000pt;
	}
	
	p.MsoAcetate{
	mso-style-name:批注框文本;
	mso-style-noshow:yes;
	margin:0pt;
	margin-bottom:.0001pt;
	mso-pagination:none;
	text-align:justify;
	text-justify:inter-ideograph;
	font-family:'Times New Roman';
	mso-fareast-font-family:仿宋_GB2312;
	font-size:9.0000pt;
	mso-font-kerning:1.0000pt;
	}
	
	p.MsoHeader{
	mso-style-name:页眉;
	margin:0pt;
	margin-bottom:.0001pt;
	border-bottom:1.0000pt solid windowtext;
	mso-border-bottom-alt:0.7500pt solid windowtext;
	padding:0pt 0pt 1pt 0pt ;
	layout-grid-mode:char;
	mso-pagination:none;
	text-align:center;
	font-family:'Times New Roman';
	mso-fareast-font-family:仿宋_GB2312;
	font-size:9.0000pt;
	mso-font-kerning:1.0000pt;
	}
	
	p.MsoBodyText{
	mso-style-name:正文文本;
	margin:0pt;
	margin-bottom:.0001pt;
	mso-pagination:none;
	text-align:justify;
	text-justify:inter-ideograph;
	font-family:'Times New Roman';
	mso-fareast-font-family:仿宋_GB2312;
	font-weight:bold;
	font-size:15.0000pt;
	mso-font-kerning:1.0000pt;
	}
	
	p.MsoFooter{
	mso-style-name:页脚;
	margin:0pt;
	margin-bottom:.0001pt;
	layout-grid-mode:char;
	mso-pagination:none;
	text-align:left;
	font-family:'Times New Roman';
	mso-fareast-font-family:仿宋_GB2312;
	font-size:9.0000pt;
	mso-font-kerning:1.0000pt;
	}
	
	p.MsoBodyTextIndent{
	mso-style-name:正文文本缩进;
	margin-bottom:6.0000pt;
	margin-left:21.0000pt;
	mso-para-margin-left:2.0000gd;
	mso-pagination:none;
	text-align:justify;
	text-justify:inter-ideograph;
	font-family:'Times New Roman';
	mso-fareast-font-family:仿宋_GB2312;
	font-size:15.0000pt;
	mso-font-kerning:1.0000pt;
	}
	
	p.MsoBodyTextIndent2{
	mso-style-name:"正文文本缩进 2";
	margin-bottom:6.0000pt;
	margin-left:21.0000pt;
	mso-para-margin-left:2.0000gd;
	mso-pagination:none;
	text-align:justify;
	text-justify:inter-ideograph;
	line-height:200%;
	font-family:'Times New Roman';
	mso-fareast-font-family:仿宋_GB2312;
	font-size:15.0000pt;
	mso-font-kerning:1.0000pt;
	}
	
	p.24{
	mso-style-name:节标题;
	mso-style-next:小节标题;
	margin:0pt;
	margin-bottom:.0001pt;
	mso-pagination:widow-orphan;
	text-align:center;
	vertical-align:baseline;
	line-height:28.9000pt;
	font-family:'Times New Roman';
	mso-fareast-font-family:仿宋_GB2312;
	color:rgb(0,0,0);
	text-underline:rgb(0,0,0);
	font-size:14.0000pt;
	}
	
	p.25{
	mso-style-name:小节标题;
	mso-style-next:正文;
	margin-top:8.7500pt;
	margin-bottom:5.1000pt;
	mso-pagination:widow-orphan;
	text-align:justify;
	text-justify:inter-ideograph;
	vertical-align:baseline;
	line-height:28.3000pt;
	font-family:'Times New Roman';
	mso-fareast-font-family:黑体;
	color:rgb(0,0,0);
	text-underline:rgb(0,0,0);
	font-size:15.0000pt;
	}
	
	span.msoIns{
	mso-style-type:export-only;
	mso-style-name:"";
	text-decoration:underline;
	text-underline:single;
	color:blue;
	}
	
	span.msoDel{
	mso-style-type:export-only;
	mso-style-name:"";
	text-decoration:line-through;
	color:red;
	}
	
	table.MsoNormalTable{
	mso-style-name:普通表格;
	mso-style-parent:"";
	mso-style-noshow:yes;
	mso-tstyle-rowband-size:0;
	mso-tstyle-colband-size:0;
	mso-padding-alt:0.0000pt 5.4000pt 0.0000pt 5.4000pt;
	mso-para-margin:0pt;
	mso-para-margin-bottom:.0001pt;
	mso-pagination:widow-orphan;
	font-family:'Times New Roman';
	font-size:10.0000pt;
	mso-ansi-language:#0400;
	mso-fareast-language:#0400;
	mso-bidi-language:#0400;
	}
	
	table.MsoTableGrid{
	mso-style-name:网格型;
	mso-tstyle-rowband-size:0;
	mso-tstyle-colband-size:0;
	mso-padding-alt:0.0000pt 5.4000pt 0.0000pt 5.4000pt;
	mso-border-top-alt:0.5000pt solid windowtext;
	mso-border-left-alt:0.5000pt solid windowtext;
	mso-border-bottom-alt:0.5000pt solid windowtext;
	mso-border-right-alt:0.5000pt solid windowtext;
	mso-border-insideh:0.5000pt solid windowtext;
	mso-border-insidev:0.5000pt solid windowtext;
	mso-para-margin:0pt;
	mso-para-margin-bottom:.0001pt;
	mso-pagination:widow-orphan;
	font-family:'Times New Roman';
	font-size:10.0000pt;
	mso-ansi-language:#0400;
	mso-fareast-language:#0400;
	mso-bidi-language:#0400;
	}
	@page{mso-page-border-surround-header:no;
		mso-page-border-surround-footer:no;}@page Section0{
	margin-top:72.0000pt;
	margin-bottom:72.0000pt;
	margin-left:70.9000pt;
	margin-right:70.9000pt;
	size:595.3000pt 841.9000pt;
	layout-grid:29.3500pt;
	}
	div.Section0{page:Section0;}
	.msotitle1{
		text-indent:60.5500pt;
		mso-char-indent-count:3.9200;
		layout-grid-mode:char;
		line-height:150%;
		padding-left:80px;
	}
	.msotitle1 .moSpan1{
		mso-spacerun:'yes';
		font-family:宋体;
		font-size:15.0000pt;
		mso-font-kerning:1.0000pt;
	}
	.msotitle1 .moSpan2{
		mso-spacerun:'yes';
		font-family:宋体;
		text-decoration:underline;
		text-underline:single;
		font-size:15.0000pt;
		mso-font-kerning:1.0000pt;
	}
	table{
		width: 800px;
		height: auto;
	}
</style>
<script type="text/javascript">
	function exportWord(id){
		$.ajax({ 
			type:'POST',
			url:'${path }/project/exportWord?id='+id,
			success:function(result){
				if (result==200) {
	            	 //parent.$.messager.alert('提示', result.msg, 'info');
	            } else {
	            	//parent.$.messager.alert('错误', eval(result.msg), 'error');
	            } 
			}
		});
	}
</script>
<div class="easyui-layout" data-options="fit:true,border:false">
    <div>
       <button onclick="exportWord('${project.id}')">导出成word文档</button>
    </div>   
    <div data-options="region:'center',border:false" title="" style="border:1px solid black;width:900px;height:auto;margin-left: 10%;margin-right: 10%;">
  <!--StartFragment-->
  <div class="Section0" style="layout-grid:29.3500pt;height: auto;width: 100%;">
   <p class="MsoNormal" style="margin-bottom:5.0000pt;mso-margin-bottom-alt:auto;layout-grid-mode:char;line-height:25.5000pt;"><b><span style="mso-spacerun:'yes';font-family:宋体;font-weight:bold;font-size:14.0000pt;mso-font-kerning:1.0000pt;">
      </span></b></p>
   <p class="MsoNormal" align="center" style="layout-grid-mode:char;text-align:center;"><b><span style="mso-spacerun:'yes';font-family:宋体;font-weight:bold;font-size:24.0000pt;mso-font-kerning:1.0000pt;"><font face="宋体">中原工学院</font></span></b><b><span style="mso-spacerun:'yes';font-family:宋体;font-weight:bold;font-size:24.0000pt;mso-font-kerning:1.0000pt;">
      </span></b></p>
   <p class="MsoNormal" align="center" style="layout-grid-mode:char;text-align:center;"><b><span style="mso-spacerun:'yes';font-family:宋体;font-weight:bold;font-size:24.0000pt;mso-font-kerning:1.0000pt;">
      
       &nbsp;
      </span></b></p>
   <p class="MsoNormal" align="center" style="layout-grid-mode:char;text-align:center;"><b><span style="mso-spacerun:'yes';font-family:宋体;font-weight:bold;font-size:24.0000pt;mso-font-kerning:1.0000pt;"><font face="宋体">教学改革与研究项目申请书</font></span></b><b><span style="mso-spacerun:'yes';font-family:宋体;font-weight:bold;font-size:24.0000pt;mso-font-kerning:1.0000pt;">
      </span></b></p>
   <p class="MsoNormal" align="center" style="layout-grid-mode:char;text-align:center;line-height:12.1500pt;"><span style="mso-spacerun:'yes';font-family:宋体;font-size:15.0000pt;mso-font-kerning:1.0000pt;">
     
      &nbsp;
     </span></p>
   <p class="MsoNormal" align="center" style="layout-grid-mode:char;text-align:center;line-height:12.1500pt;"><span style="mso-spacerun:'yes';font-family:宋体;font-size:15.0000pt;mso-font-kerning:1.0000pt;">
     
      &nbsp;
     </span></p>
   <p class="MsoNormal" style="layout-grid-mode:char;text-align:left;line-height:12.1500pt;"><span style="mso-spacerun:'yes';font-family:'Times New Roman';mso-fareast-font-family:仿宋_GB2312;font-size:15.0000pt;mso-font-kerning:1.0000pt;"> </span><span style="mso-spacerun:'yes';font-family:'Times New Roman';mso-fareast-font-family:仿宋_GB2312;font-size:15.0000pt;mso-font-kerning:1.0000pt;">
     </span></p>
   <p class="MsoNormal" align="center" style="layout-grid-mode:char;text-align:center;line-height:12.1500pt;"><span style="mso-spacerun:'yes';font-family:仿宋_GB2312;font-size:15.0000pt;mso-font-kerning:1.0000pt;">
     
      &nbsp;
     </span></p>
   <p class="MsoNormal" align="center" style="layout-grid-mode:char;text-align:center;line-height:12.1500pt;"><span style="mso-spacerun:'yes';font-family:仿宋_GB2312;font-size:15.0000pt;mso-font-kerning:1.0000pt;">
     
      &nbsp;
     </span></p>
   <p class="MsoNormal" align="center" style="layout-grid-mode:char;text-align:center;line-height:12.1500pt;"><span style="mso-spacerun:'yes';font-family:仿宋_GB2312;font-size:15.0000pt;mso-font-kerning:1.0000pt;">
      &nbsp;
     </span></p>
   <p class="MsoNormal" align="center" style="layout-grid-mode:char;text-align:center;line-height:12.1500pt;"><span style="mso-spacerun:'yes';font-family:仿宋_GB2312;font-size:15.0000pt;mso-font-kerning:1.0000pt;">
     
      &nbsp;
     </span></p>
   <p class="MsoNormal" align="center" style="layout-grid-mode:char;text-align:center;line-height:12.1500pt;"><span style="mso-spacerun:'yes';font-family:仿宋_GB2312;font-size:15.0000pt;mso-font-kerning:1.0000pt;">
     
      &nbsp;
     </span></p>
   <p class="MsoNormal" align="center" style="layout-grid-mode:char;text-align:center;line-height:12.1500pt;"><span style="mso-spacerun:'yes';font-family:仿宋_GB2312;font-size:15.0000pt;mso-font-kerning:1.0000pt;">
     
      &nbsp;
     </span></p>
   <p class="MsoNormal msotitle1" >
   		<span class="moSpan1">
   			<font face="宋体">项目名称：</font>
   		</span>
   		<u><span class="moSpan2">&nbsp;${project.pTitle }&nbsp;</span></u>
   </p>		
   <p class="MsoNormal msotitle1" >
   		<span class="moSpan1">
   			<font face="宋体">项目主持人：</font>
   		</span>
   		<u><span class="moSpan2">&nbsp;${project.teacherName }&nbsp;</span></u>
   </p>	
   <p class="MsoNormal msotitle1" >
   		<span class="moSpan1">
   			<font face="宋体">项目成员：</font>
   		</span>
   		<u><span class="moSpan2">&nbsp;${project.groups }&nbsp;&nbsp;</span></u>
   </p>	
   <p class="MsoNormal msotitle1" >
   		<span class="moSpan1">
   			<font face="宋体">申请部门：</font>
   		</span>
   		<u><span class="moSpan2">&nbsp;${project.departmentName }&nbsp;</span></u>
   </p>	
   <p class="MsoNormal msotitle1" >
   		<span class="moSpan1">
   			<font face="宋体">申报类别：</font>
   		</span>
   		<u><span class="moSpan2">&nbsp;${project.typeName }&nbsp;</span></u>
   </p>	
   <p class="MsoNormal msotitle1" >
   		<span class="moSpan1">
   			<font face="宋体">完成时间：</font>
   		</span>
   		<u><span class="moSpan2">&nbsp;${project.endTime }&nbsp;</span></u>
   </p>	
   
   <p class="MsoNormal " style="layout-grid-mode:char;line-height:26.6000pt;"><span style="mso-spacerun:'yes';font-family:仿宋_GB2312;font-size:14.0000pt;mso-font-kerning:1.0000pt;">
      &nbsp;
     </span></p>
   <p class="MsoNormal" style="layout-grid-mode:char;line-height:26.6000pt;"><span style="mso-spacerun:'yes';font-family:仿宋_GB2312;font-size:14.0000pt;mso-font-kerning:1.0000pt;">
     
      &nbsp;
     </span></p>
   <p class="MsoNormal" align="center" style="layout-grid-mode:char;text-align:center;line-height:27.2000pt;"><span style="mso-spacerun:'yes';font-family:仿宋_GB2312;font-size:15.0000pt;mso-font-kerning:1.0000pt;">
     
      &nbsp;
     </span></p>
   <p class="MsoNormal" style="padding-left:100px;margin-top:17.6000pt;mso-para-margin-top:0.6000gd;text-indent:175.0500pt;mso-char-indent-count:9.0000;"><span style="mso-spacerun:'yes';font-family:宋体;letter-spacing:2.0000pt;font-size:15.0000pt;mso-font-kerning:1.0000pt;"><font face="宋体">${project.applyTime }</font>
     </span></p>
   <p class="MsoNormal" align="center" style="margin-top:17.6000pt;mso-para-margin-top:0.6000gd;text-align:center;"><span style="mso-spacerun:'yes';font-family:仿宋_GB2312;letter-spacing:2.0000pt;font-size:15.0000pt;mso-font-kerning:1.0000pt;">&nbsp;&nbsp;</span><span style="mso-spacerun:'yes';font-family:仿宋_GB2312;letter-spacing:2.0000pt;font-size:15.0000pt;mso-font-kerning:1.0000pt;">
     </span></p>
   <p class="MsoNormal" align="center" style="margin-top:17.6000pt;mso-para-margin-top:0.6000gd;text-align:center;"><span style="mso-spacerun:'yes';font-family:仿宋_GB2312;letter-spacing:2.0000pt;font-size:15.0000pt;mso-font-kerning:1.0000pt;">&nbsp;</span><span style="mso-spacerun:'yes';font-family:仿宋_GB2312;letter-spacing:2.0000pt;font-size:15.0000pt;mso-font-kerning:1.0000pt;">
     </span></p>
   <p class="MsoNormal"><span style="padding-left:60px;mso-spacerun:'yes';font-family:仿宋_GB2312;font-size:16.0000pt;mso-font-kerning:1.0000pt;"><font face="仿宋_GB2312">一、简表</font></span><span style="mso-spacerun:'yes';font-family:仿宋_GB2312;font-size:16.0000pt;mso-font-kerning:1.0000pt;">
     </span></p>
   <table class="MsoNormalTable" align="center" style="border-collapse:collapse;fixed;mso-padding-alt:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;">
    <tbody>
     <tr style="height:28.7000pt;page-break-inside:avoid;">
      <td width="42" valign="center" rowspan="2" style="width:31.9500pt;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:1.0000pt solid windowtext;mso-border-left-alt:0.5000pt solid windowtext;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;border-top:1.0000pt solid windowtext;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;mso-border-bottom-alt:0.5000pt solid windowtext;"><p class="25" align="center" style="margin-top:0.0000pt;margin-bottom:0.0000pt;layout-grid-mode:char;mso-pagination:none;text-align:center;"><span style="font-family:仿宋_GB2312;color:rgb(0,0,0);text-underline:rgb(0,0,0);font-size:10.5000pt;mso-font-kerning:0.0000pt;">项</span><span style="font-family:仿宋_GB2312;color:rgb(0,0,0);text-underline:rgb(0,0,0);font-size:10.5000pt;mso-font-kerning:0.0000pt;">
         </span></p><p class="MsoNormal" align="center" style="layout-grid-mode:char;text-align:center;"><span style="font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">目</span><span style="font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
         </span></p><p class="MsoNormal" align="center" style="layout-grid-mode:char;text-align:center;"><span style="font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">简</span><span style="font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
         </span></p><p class="MsoNormal" align="center" style="layout-grid-mode:char;text-align:center;"><span style="font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">况</span><span style="font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
         </span></p></td>
      <td width="91" valign="center" style="width:68.4500pt;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:none;;mso-border-left-alt:none;;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;border-top:1.0000pt solid windowtext;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;mso-border-bottom-alt:0.5000pt solid windowtext;"><p class="MsoNormal" align="center" style="layout-grid-mode:char;text-align:center;"><span style="mso-spacerun:'yes';font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">项目名称</span><span style="font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
         </span></p></td>
      <td width="487" valign="center" colspan="12" style="width:365.7500pt;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:none;;mso-border-left-alt:none;;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;border-top:1.0000pt solid windowtext;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;mso-border-bottom-alt:0.5000pt solid windowtext;"><p class="MsoNormal" align="center" style="layout-grid-mode:char;text-align:center;"><span style="font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
         ${project.pTitle }
         </span></p></td>
     </tr>
     <tr style="height:29.6000pt;page-break-inside:avoid;">
      <td width="91" valign="center" style="width:68.4500pt;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:none;;mso-border-left-alt:none;;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;border-top:none;;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;mso-border-bottom-alt:0.5000pt solid windowtext;"><p class="MsoNormal" align="center" style="layout-grid-mode:char;text-align:center;"><span style="mso-spacerun:'yes';font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">起止年月</span><span style="font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
         </span></p></td>
      <td width="487" valign="center" colspan="12" style="width:365.7500pt;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:none;;mso-border-left-alt:none;;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;border-top:none;;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;mso-border-bottom-alt:0.5000pt solid windowtext;"><p class="MsoNormal" style="text-indent:65.7000pt;mso-char-indent-count:6.0000;layout-grid-mode:char;"><span style="mso-spacerun:'yes';font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">年&nbsp;&nbsp;&nbsp;&nbsp;月至&nbsp;&nbsp;&nbsp;&nbsp;年&nbsp;&nbsp;&nbsp;&nbsp;月</span><span style="font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
         </span></p></td>
     </tr>
     <tr style="page-break-inside:avoid;">
      <td width="42" valign="center" rowspan="12" style="width:31.9500pt;height:auto;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:1.0000pt solid windowtext;mso-border-left-alt:0.5000pt solid windowtext;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;border-top:none;;mso-border-top-alt:none;;border-bottom:1.0000pt solid windowtext;mso-border-bottom-alt:0.5000pt solid windowtext;"><p class="MsoNormal" align="center" style="layout-grid-mode:char;text-align:center;"><span style="font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">项</span><span style="font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
         </span></p><p class="MsoNormal" align="center" style="layout-grid-mode:char;text-align:center;"><span style="font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">目</span><span style="font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
         </span></p><p class="MsoNormal" align="center" style="layout-grid-mode:char;text-align:center;"><span style="mso-spacerun:'yes';font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">主</span><span style="font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
         </span></p><p class="MsoNormal" align="center" style="layout-grid-mode:char;text-align:center;"><span style="mso-spacerun:'yes';font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">持</span><span style="font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
         </span></p><p class="MsoNormal" align="center" style="layout-grid-mode:char;text-align:center;"><span style="font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">人</span><span style="font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
         </span></p></td>
      <td width="91" valign="center" style="width:68.4500pt;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:none;;mso-border-left-alt:none;;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;border-top:none;;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;mso-border-bottom-alt:0.5000pt solid windowtext;"><p class="MsoNormal" align="center" style="layout-grid-mode:char;text-align:center;"><span style="mso-spacerun:'yes';font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">姓名</span><span style="font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
         </span></p></td>
      <td width="123" valign="center" colspan="4" style="width:92.3000pt;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:none;;mso-border-left-alt:none;;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;border-top:none;;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;mso-border-bottom-alt:0.5000pt solid windowtext;"><p class="MsoNormal" align="center" style="layout-grid-mode:char;text-align:center;"><span style="font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
         ${project.teacherName }
         </span></p></td>
      <td width="54" valign="center" style="width:40.5500pt;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:none;;mso-border-left-alt:none;;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;border-top:1.0000pt solid windowtext;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;mso-border-bottom-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;mso-border-bottom-alt:0.5000pt solid windowtext;"><p class="MsoNormal" align="center" style="layout-grid-mode:char;text-align:center;"><span style="mso-spacerun:'yes';font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">性别</span><span style="font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
         </span></p></td>
      <td width="100" valign="center" colspan="3" style="width:75.1000pt;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:none;;mso-border-left-alt:none;;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;border-top:1.0000pt solid windowtext;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;mso-border-bottom-alt:0.5000pt solid windowtext;"><p class="MsoNormal" align="center" style="layout-grid-mode:char;text-align:center;"><span style="font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
         ${teacher.tSex }
         </span></p></td>
      <td width="67" valign="center" colspan="2" style="width:50.5000pt;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:none;;mso-border-left-alt:none;;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;border-top:1.0000pt solid windowtext;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;mso-border-bottom-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;mso-border-bottom-alt:0.5000pt solid windowtext;"><p class="MsoNormal" align="center" style="layout-grid-mode:char;text-align:center;"><span style="mso-spacerun:'yes';font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">出生</span><span style="font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
         </span></p><p class="MsoNormal" align="center" style="layout-grid-mode:char;text-align:center;"><span style="mso-spacerun:'yes';font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">年月</span><span style="font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
         </span></p></td>
      <td width="143" valign="center" colspan="2" style="width:107.3000pt;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:none;;mso-border-left-alt:none;;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;border-top:1.0000pt solid windowtext;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;mso-border-bottom-alt:0.5000pt solid windowtext;"><p class="MsoNormal" align="center" style="layout-grid-mode:char;text-align:center;"><span style="font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
         ${teacher.tBirthday }
         </span></p></td>
     </tr>
     <tr style="page-break-inside:avoid;">
      <td width="176" valign="center" colspan="4" style="width:132.5000pt;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:none;;mso-border-left-alt:none;;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;border-top:none;;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;mso-border-bottom-alt:0.5000pt solid windowtext;"><p class="MsoNormal" align="center" style="layout-grid-mode:char;text-align:center;"><span style="mso-spacerun:'yes';font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">专业技术职务</span><span style="font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
         </span></p><p class="MsoNormal" align="center" style="layout-grid-mode:char;text-align:center;"><span style="mso-spacerun:'yes';font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">/行政职务</span><span style="font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
         </span></p></td>
      <td width="91" valign="center" colspan="2" style="width:68.8000pt;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:none;;mso-border-left-alt:none;;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;border-top:none;;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;mso-border-bottom-alt:0.5000pt solid windowtext;"><p class="MsoNormal" align="center" style="layout-grid-mode:char;text-align:center;"><span style="font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">/</span><span style="font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
         </span></p></td>
      <td width="167" valign="center" colspan="5" style="width:125.6000pt;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:none;;mso-border-left-alt:none;;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;border-top:none;;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;mso-border-bottom-alt:0.5000pt solid windowtext;"><p class="MsoNormal" align="center" style="layout-grid-mode:char;text-align:center;"><span style="mso-spacerun:'yes';font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">最终学位</span><span style="font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
         </span></p><p class="MsoNormal" align="center" style="layout-grid-mode:char;text-align:center;"><span style="mso-spacerun:'yes';font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">/毕业院校</span><span style="font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
         </span></p></td>
      <td width="143" valign="center" colspan="2" style="width:107.3000pt;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:none;;mso-border-left-alt:none;;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;border-top:none;;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;mso-border-bottom-alt:0.5000pt solid windowtext;"><p class="MsoNormal" align="center" style="layout-grid-mode:char;text-align:center;"><span style="font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">/</span><span style="font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
         </span></p></td>
     </tr>
     <tr style="height:27.4500pt;page-break-inside:avoid;">
      <td width="91" valign="center" rowspan="3" style="width:68.4500pt;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:none;;mso-border-left-alt:none;;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;border-top:none;;mso-border-top-alt:none;;border-bottom:1.0000pt solid windowtext;mso-border-bottom-alt:0.5000pt solid windowtext;"><p class="MsoNormal" align="center" style="layout-grid-mode:char;text-align:center;"><span style="mso-spacerun:'yes';font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">所在部门</span><span style="font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
         </span></p></td>
      <td width="85" valign="center" colspan="3" rowspan="2" style="width:64.0500pt;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:none;;mso-border-left-alt:none;;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;border-top:none;;mso-border-top-alt:none;;border-bottom:1.0000pt solid windowtext;mso-border-bottom-alt:0.5000pt solid windowtext;"><p class="MsoNormal" align="center" style="layout-grid-mode:char;text-align:center;"><span style="mso-spacerun:'yes';font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">部门名称</span><span style="font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
         </span></p></td>
      <td width="91" valign="center" colspan="2" rowspan="2" style="width:68.8000pt;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:none;;mso-border-left-alt:none;;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;border-top:none;;mso-border-top-alt:none;;border-bottom:1.0000pt solid windowtext;mso-border-bottom-alt:0.5000pt solid windowtext;"><p class="MsoNormal" align="center" style="layout-grid-mode:char;text-align:center;"><span style="font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
         ${department.dName }
         </span></p></td>
      <td width="167" valign="center" colspan="5" style="width:125.6000pt;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:none;;mso-border-left-alt:none;;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;border-top:none;;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;mso-border-bottom-alt:0.5000pt solid windowtext;"><p class="MsoNormal" align="center" style="layout-grid-mode:char;text-align:center;"><span style="mso-spacerun:'yes';font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">办公电话</span><span style="font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
         </span></p></td>
      <td width="143" valign="center" colspan="2" style="width:107.3000pt;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:none;;mso-border-left-alt:none;;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;border-top:1.0000pt solid windowtext;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;mso-border-bottom-alt:0.5000pt solid windowtext;"><p class="MsoNormal" align="center" style="layout-grid-mode:char;text-align:center;"><span style="font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
         ${department.dPhone }
         </span></p></td>
     </tr>
     <tr style="height:26.1000pt;page-break-inside:avoid;">
      <td width="167" valign="center" colspan="5" style="width:125.6000pt;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:none;;mso-border-left-alt:none;;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;border-top:none;;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;mso-border-bottom-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;mso-border-bottom-alt:0.5000pt solid windowtext;"><p class="MsoNormal" align="center" style="layout-grid-mode:char;text-align:center;"><span style="mso-spacerun:'yes';font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">手机</span><span style="font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
         </span></p></td>
      <td width="143" valign="center" colspan="2" style="width:107.3000pt;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:none;;mso-border-left-alt:none;;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;border-top:none;;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;mso-border-bottom-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;mso-border-bottom-alt:0.5000pt solid windowtext;"><p class="MsoNormal" align="center" style="layout-grid-mode:char;text-align:center;"><span style="font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
         ${department.dTel }
         </span></p></td>
     </tr>
     <tr style="height:28.1500pt;page-break-inside:avoid;">
      <td width="85" valign="center" colspan="3" style="width:64.0500pt;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:none;;mso-border-left-alt:none;;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;border-top:none;;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;mso-border-bottom-alt:0.5000pt solid windowtext;"><p class="MsoNormal" align="center" style="layout-grid-mode:char;text-align:center;"><span style="mso-spacerun:'yes';font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">电子邮箱</span><span style="font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
         </span></p></td>
      <td width="402" valign="center" colspan="9" style="width:301.7000pt;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:none;;mso-border-left-alt:none;;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;border-top:none;;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;mso-border-bottom-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;mso-border-bottom-alt:0.5000pt solid windowtext;"><p class="MsoNormal" align="center" style="layout-grid-mode:char;text-align:center;"><span style="font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
         ${department.dEmail }
         </span></p></td>
     </tr>
     <tr style="height:140.6500pt;page-break-inside:avoid;">
      <td width="91" valign="center" style="width:68.4500pt;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:none;;mso-border-left-alt:none;;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;border-top:none;;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;mso-border-bottom-alt:0.5000pt solid windowtext;"><p class="MsoNormal" align="center" style="layout-grid-mode:char;text-align:center;"><span style="mso-spacerun:'yes';font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">主要教学</span><span style="font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
         </span></p><p class="MsoNormal" align="center" style="layout-grid-mode:char;text-align:center;"><span style="mso-spacerun:'yes';font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">工作简历</span><span style="font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
         </span></p></td>
      <td width="487" valign="center" colspan="12" style="width:365.7500pt;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:none;;mso-border-left-alt:none;;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;border-top:none;;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;mso-border-bottom-alt:0.5000pt solid windowtext;"><p class="MsoNormal" align="center" style="layout-grid-mode:char;text-align:center;"><span style="font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
         ${teacher.resume }
         </span></p></td>
     </tr>
     <tr style="height:19.8500pt;page-break-inside:avoid;">
      <td width="91" valign="center" rowspan="6" style="width:68.4500pt;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:none;;mso-border-left-alt:none;;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;border-top:none;;mso-border-top-alt:none;;border-bottom:1.0000pt solid windowtext;mso-border-bottom-alt:0.5000pt solid windowtext;"><p class="MsoNormal" align="center" style="layout-grid-mode:char;text-align:center;"><span style="mso-spacerun:'yes';font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">主要教学</span><span style="font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
         </span></p><p class="MsoNormal" align="center" style="layout-grid-mode:char;text-align:center;"><span style="mso-spacerun:'yes';font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">改&nbsp;革&nbsp;和</span><span style="font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
         </span></p><p class="MsoNormal" align="center" style="layout-grid-mode:char;text-align:center;"><span style="mso-spacerun:'yes';font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">研究成果</span><span style="font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
         </span></p></td>
      <td width="80" valign="center" colspan="2" style="width:60.0500pt;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:none;;mso-border-left-alt:none;;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;border-top:none;;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;mso-border-bottom-alt:0.5000pt solid windowtext;"><p class="MsoNormal" align="center" style="layout-grid-mode:char;text-align:center;"><span style="mso-spacerun:'yes';font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">时&nbsp;间</span><span style="font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
         </span></p></td>
      <td width="131" valign="center" colspan="4" style="width:98.8000pt;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:none;;mso-border-left-alt:none;;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;border-top:1.0000pt solid windowtext;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;mso-border-bottom-alt:0.5000pt solid windowtext;"><p class="MsoNormal" align="center" style="layout-grid-mode:char;text-align:center;"><span style="mso-spacerun:'yes';font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">项目名称</span><span style="font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
         </span></p></td>
      <td width="96" valign="center" colspan="3" style="width:72.0000pt;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:none;;mso-border-left-alt:none;;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;border-top:1.0000pt solid windowtext;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;mso-border-bottom-alt:0.5000pt solid windowtext;"><p class="MsoNormal" align="center" style="layout-grid-mode:char;text-align:center;"><span style="mso-spacerun:'yes';font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">颁发部门</span><span style="font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
         </span></p></td>
      <td width="110" valign="center" colspan="2" style="width:82.5500pt;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:none;;mso-border-left-alt:none;;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;border-top:1.0000pt solid windowtext;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;mso-border-bottom-alt:0.5000pt solid windowtext;"><p class="MsoNormal" align="center" style="layout-grid-mode:char;text-align:center;"><span style="mso-spacerun:'yes';font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">获奖等次</span><span style="font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
         </span></p></td>
      <td width="69" valign="center" style="width:52.3500pt;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:none;;mso-border-left-alt:none;;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;border-top:1.0000pt solid windowtext;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;mso-border-bottom-alt:0.5000pt solid windowtext;"><p class="MsoNormal" align="center" style="layout-grid-mode:char;text-align:center;"><span style="mso-spacerun:'yes';font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">名次</span><span style="font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
         </span></p></td>
     </tr>
     <c:forEach var="result" items="${results }"  >
     
     <tr style="height:19.8500pt;page-break-inside:avoid;" >
      <td width="80" valign="center" colspan="2" style="width:60.0500pt;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:none;;mso-border-left-alt:none;;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;border-top:none;;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;mso-border-bottom-alt:0.5000pt solid windowtext;"><p class="MsoNormal" align="center" style="layout-grid-mode:char;text-align:center;"><span style="font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
         ${result.resultTime } 
         </span></p></td>
      <td width="131" valign="center" colspan="4" style="width:98.8000pt;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:none;;mso-border-left-alt:none;;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;border-top:none;;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;mso-border-bottom-alt:0.5000pt solid windowtext;"><p class="MsoNormal" align="center" style="layout-grid-mode:char;text-align:center;"><span style="font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
         ${result.projectTitle }
         </span></p></td>
      <td width="96" valign="center" colspan="3" style="width:72.0000pt;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:none;;mso-border-left-alt:none;;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;border-top:none;;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;mso-border-bottom-alt:0.5000pt solid windowtext;"><p class="MsoNormal" align="center" style="layout-grid-mode:char;text-align:center;"><span style="font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
         ${result.departmentName }
         </span></p></td>
      <td width="110" valign="center" colspan="2" style="width:82.5500pt;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:none;;mso-border-left-alt:none;;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;border-top:none;;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;mso-border-bottom-alt:0.5000pt solid windowtext;"><p class="MsoNormal" align="center" style="layout-grid-mode:char;text-align:center;"><span style="font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
         ${result.award }
         </span></p></td>
      <td width="69" valign="center" style="width:52.3500pt;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:none;;mso-border-left-alt:none;;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;border-top:none;;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;mso-border-bottom-alt:0.5000pt solid windowtext;"><p class="MsoNormal" align="center" style="layout-grid-mode:char;text-align:center;"><span style="font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
         ${result.grade }
         </span></p></td>
     </tr>
     </c:forEach>
     <c:if test="${results.size()<=5 }">
      <c:forEach  begin="0" end="${4-results.size() }" step="1" >
     
     <tr style="height:19.8500pt;page-break-inside:avoid;" >
      <td width="80" valign="center" colspan="2" style="width:60.0500pt;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:none;;mso-border-left-alt:none;;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;border-top:none;;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;mso-border-bottom-alt:0.5000pt solid windowtext;"><p class="MsoNormal" align="center" style="layout-grid-mode:char;text-align:center;"><span style="font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
         &nbsp;
         </span></p></td>
      <td width="131" valign="center" colspan="4" style="width:98.8000pt;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:none;;mso-border-left-alt:none;;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;border-top:none;;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;mso-border-bottom-alt:0.5000pt solid windowtext;"><p class="MsoNormal" align="center" style="layout-grid-mode:char;text-align:center;"><span style="font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
         &nbsp;
         </span></p></td>
      <td width="96" valign="center" colspan="3" style="width:72.0000pt;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:none;;mso-border-left-alt:none;;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;border-top:none;;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;mso-border-bottom-alt:0.5000pt solid windowtext;"><p class="MsoNormal" align="center" style="layout-grid-mode:char;text-align:center;"><span style="font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
         &nbsp;
         </span></p></td>
      <td width="110" valign="center" colspan="2" style="width:82.5500pt;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:none;;mso-border-left-alt:none;;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;border-top:none;;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;mso-border-bottom-alt:0.5000pt solid windowtext;"><p class="MsoNormal" align="center" style="layout-grid-mode:char;text-align:center;"><span style="font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
         &nbsp;
         </span></p></td>
      <td width="69" valign="center" style="width:52.3500pt;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:none;;mso-border-left-alt:none;;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;border-top:none;;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;mso-border-bottom-alt:0.5000pt solid windowtext;"><p class="MsoNormal" align="center" style="layout-grid-mode:char;text-align:center;"><span style="font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
         &nbsp;
         </span></p></td>
     </tr>
     </c:forEach>
     </c:if>
     <tr style="height:26.1000pt;page-break-inside:avoid;">
      <td width="42" valign="center" rowspan="7" style="width:31.9500pt;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:1.0000pt solid windowtext;mso-border-left-alt:0.5000pt solid windowtext;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;border-top:none;;mso-border-top-alt:none;;border-bottom:1.0000pt solid windowtext;mso-border-bottom-alt:0.5000pt solid windowtext;"><p class="MsoNormal" align="center" style="layout-grid-mode:char;text-align:center;"><span style="font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">项</span><span style="font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
         </span></p><p class="MsoNormal" align="center" style="layout-grid-mode:char;text-align:center;"><span style="font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">目</span><span style="font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
         </span></p><p class="MsoNormal" align="center" style="layout-grid-mode:char;text-align:center;"><span style="font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">组</span><span style="font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
         </span></p></td>
      <td width="91" valign="center" rowspan="7" style="width:68.4500pt;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:none;;mso-border-left-alt:none;;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;border-top:none;;mso-border-top-alt:none;;border-bottom:1.0000pt solid windowtext;mso-border-bottom-alt:0.5000pt solid windowtext;"><p class="MsoNormal" align="center" style="layout-grid-mode:char;text-align:center;"><span style="mso-spacerun:'yes';font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">主要成员</span><span style="font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
         </span></p></td>
      <td width="65" valign="center" style="width:49.2000pt;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:none;;mso-border-left-alt:none;;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;border-top:none;;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;mso-border-bottom-alt:0.5000pt solid windowtext;"><p class="MsoNormal" align="center" style="layout-grid-mode:char;text-align:center;"><span style="mso-spacerun:'yes';font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">姓名</span><span style="font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
         </span></p></td>
      <td width="57" valign="center" colspan="3" style="width:43.1000pt;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:none;;mso-border-left-alt:none;;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;border-top:none;;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;mso-border-bottom-alt:0.5000pt solid windowtext;"><p class="MsoNormal" align="center" style="layout-grid-mode:char;text-align:center;"><span style="mso-spacerun:'yes';font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">出生</span><span style="font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
         </span></p><p class="MsoNormal" align="center" style="layout-grid-mode:char;text-align:center;"><span style="mso-spacerun:'yes';font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">年月</span><span style="font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
         </span></p></td>
      <td width="54" valign="center" style="width:40.5500pt;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:none;;mso-border-left-alt:none;;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;border-top:none;;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;mso-border-bottom-alt:0.5000pt solid windowtext;"><p class="MsoNormal" align="center" style="layout-grid-mode:char;text-align:center;"><span style="mso-spacerun:'yes';font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">职称</span><span style="font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
         </span></p></td>
      <td width="93" valign="center" colspan="2" style="width:69.7500pt;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:none;;mso-border-left-alt:none;;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;border-top:none;;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;mso-border-bottom-alt:0.5000pt solid windowtext;"><p class="MsoNormal" align="center" style="layout-grid-mode:char;text-align:center;"><span style="mso-spacerun:'yes';font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">工作单位</span><span style="font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
         </span></p></td>
      <td width="147" valign="center" colspan="4" style="width:110.8000pt;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:none;;mso-border-left-alt:none;;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;border-top:none;;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;mso-border-bottom-alt:0.5000pt solid windowtext;"><p class="MsoNormal" align="center" style="layout-grid-mode:char;text-align:center;"><span style="mso-spacerun:'yes';font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">分工</span><span style="font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
         </span></p></td>
      <td width="69" valign="center" style="width:52.3500pt;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:none;;mso-border-left-alt:none;;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;border-top:1.0000pt solid windowtext;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;mso-border-bottom-alt:0.5000pt solid windowtext;"><p class="MsoNormal" align="center" style="layout-grid-mode:char;text-align:center;"><span style="mso-spacerun:'yes';font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">签章</span><span style="font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
         </span></p></td>
     </tr>
     <c:forEach var="group" items="${groups }">
     <tr style="height:21.2000pt;page-break-inside:avoid;">
      <td width="65" valign="center" style="width:49.2000pt;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:none;;mso-border-left-alt:none;;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;border-top:none;;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;mso-border-bottom-alt:0.5000pt solid windowtext;"><p class="MsoNormal" align="center" style="mso-layout-grid-align:none;layout-grid-mode:char;text-align:center;"><span style="font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
         ${group.gName }
         </span></p></td>
      <td width="57" valign="center" colspan="3" style="width:43.1000pt;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:none;;mso-border-left-alt:none;;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;border-top:none;;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;mso-border-bottom-alt:0.5000pt solid windowtext;"><p class="MsoNormal" align="center" style="mso-layout-grid-align:none;layout-grid-mode:char;text-align:center;"><span style="font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
         ${group.birthday }
         </span></p></td>
      <td width="54" valign="center" style="width:40.5500pt;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:none;;mso-border-left-alt:none;;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;border-top:none;;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;mso-border-bottom-alt:0.5000pt solid windowtext;"><p class="MsoNormal" align="center" style="mso-layout-grid-align:none;layout-grid-mode:char;text-align:center;"><span style="font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
         ${group.jobTitle }
         </span></p></td>
      <td width="93" valign="center" colspan="2" style="width:69.7500pt;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:none;;mso-border-left-alt:none;;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;border-top:none;;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;mso-border-bottom-alt:0.5000pt solid windowtext;"><p class="MsoNormal" align="center" style="mso-layout-grid-align:none;layout-grid-mode:char;text-align:center;"><span style="font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
         ${group.workUnit }
         </span></p></td>
      <td width="147" valign="center" colspan="4" style="width:110.8000pt;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:none;;mso-border-left-alt:none;;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;border-top:none;;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;mso-border-bottom-alt:0.5000pt solid windowtext;"><p class="MsoNormal" align="center" style="mso-layout-grid-align:none;layout-grid-mode:char;text-align:center;"><span style="font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
         ${group.fengong }
         </span></p></td>
      <td width="69" valign="center" style="width:52.3500pt;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:none;;mso-border-left-alt:none;;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;border-top:none;;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;mso-border-bottom-alt:0.5000pt solid windowtext;"><p class="MsoNormal" align="center" style="mso-layout-grid-align:none;layout-grid-mode:char;text-align:center;"><span style="font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
         ${group.qianzhang }
         </span></p></td>
     </tr>
     </c:forEach>
     <c:forEach begin="0" end="${5-groups.size() }" step="1">
     <tr style="height:20.5000pt;page-break-inside:avoid;">
      <td width="65" valign="center" style="width:49.2000pt;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:none;;mso-border-left-alt:none;;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;border-top:none;;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;mso-border-bottom-alt:0.5000pt solid windowtext;"><p class="MsoNormal" align="center" style="mso-layout-grid-align:none;layout-grid-mode:char;text-align:center;"><span style="font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
         
          &nbsp;
         </span></p></td>
      <td width="57" valign="center" colspan="3" style="width:43.1000pt;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:none;;mso-border-left-alt:none;;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;border-top:none;;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;mso-border-bottom-alt:0.5000pt solid windowtext;"><p class="MsoNormal" align="center" style="mso-layout-grid-align:none;layout-grid-mode:char;text-align:center;"><span style="font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
         
          &nbsp;
         </span></p></td>
      <td width="54" valign="center" style="width:40.5500pt;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:none;;mso-border-left-alt:none;;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;border-top:none;;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;mso-border-bottom-alt:0.5000pt solid windowtext;"><p class="25" align="center" style="margin-top:0.0000pt;margin-bottom:0.0000pt;mso-layout-grid-align:none;layout-grid-mode:char;mso-pagination:none;text-align:center;"><span style="font-family:仿宋_GB2312;color:rgb(0,0,0);text-underline:rgb(0,0,0);font-size:10.5000pt;mso-font-kerning:0.0000pt;">
         
          &nbsp;
         </span></p></td>
      <td width="93" valign="center" colspan="2" style="width:69.7500pt;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:none;;mso-border-left-alt:none;;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;border-top:none;;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;mso-border-bottom-alt:0.5000pt solid windowtext;"><p class="MsoNormal" align="center" style="mso-layout-grid-align:none;layout-grid-mode:char;text-align:center;"><span style="font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
         
          &nbsp;
         </span></p></td>
      <td width="147" valign="center" colspan="4" style="width:110.8000pt;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:none;;mso-border-left-alt:none;;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;border-top:none;;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;mso-border-bottom-alt:0.5000pt solid windowtext;"><p class="MsoNormal" align="center" style="mso-layout-grid-align:none;layout-grid-mode:char;text-align:center;"><span style="font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
         
          &nbsp;
         </span></p></td>
      <td width="69" valign="center" style="width:52.3500pt;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:none;;mso-border-left-alt:none;;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;border-top:none;;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;mso-border-bottom-alt:0.5000pt solid windowtext;"><p class="MsoNormal" align="center" style="mso-layout-grid-align:none;layout-grid-mode:char;text-align:center;"><span style="font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
         
          &nbsp;
         </span></p></td>
     </tr>
     </c:forEach>
    </tbody>
   </table>
   <p class="MsoNormal"><span style="mso-spacerun:'yes';font-family:仿宋_GB2312;font-size:16.0000pt;mso-font-kerning:1.0000pt;">
     
      &nbsp;
     </span></p>
   <p class="MsoNormal"><span style="padding-left:60px;mso-spacerun:'yes';font-family:仿宋_GB2312;font-size:16.0000pt;mso-font-kerning:1.0000pt;"><font face="仿宋_GB2312">二、立项依据：（项目的意义、现状分析）</font></span><span style="mso-spacerun:'yes';font-family:仿宋_GB2312;font-size:16.0000pt;mso-font-kerning:1.0000pt;">
     </span></p>
   <table class="MsoNormalTable" align="center" style="collapse;mso-table-layout-alt:fixed;mso-padding-alt:0.0000pt 0.0000pt 0.0000pt 0.0000pt ;">
    <tbody>
     <tr style="height:599.0500pt;">
      <td width="592" valign="top" style="width:444.2000pt;padding:0.0000pt 0.0000pt 0.0000pt 0.0000pt ;border-left:1.0000pt solid rgb(0,0,0);mso-border-left-alt:0.2500pt solid rgb(0,0,0);border-right:1.0000pt solid rgb(0,0,0);mso-border-right-alt:0.2500pt solid rgb(0,0,0);border-top:1.0000pt solid windowtext;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid rgb(0,0,0);mso-border-bottom-alt:0.2500pt solid rgb(0,0,0);"><p class="MsoNormal" style="text-indent:15.4500pt;mso-char-indent-count:1.0000;text-align:left;"><span style="font-family:仿宋_GB2312;font-size:15.0000pt;mso-font-kerning:1.0000pt;">
         ${project.according }
      </td>
     </tr>
    </tbody>
   </table>
   <p class="MsoNormal"><span style="mso-spacerun:'yes';font-family:仿宋_GB2312;font-size:16.0000pt;mso-font-kerning:1.0000pt;">
     
      &nbsp;
     </span></p>
   <p class="MsoNormal"><span style="padding-left:60px;mso-spacerun:'yes';font-family:仿宋_GB2312;font-size:16.0000pt;mso-font-kerning:1.0000pt;"><font face="仿宋_GB2312">三、</font></span><span style="mso-spacerun:'yes';font-family:'Times New Roman';mso-fareast-font-family:仿宋_GB2312;font-size:16.0000pt;mso-font-kerning:1.0000pt;"><font face="仿宋_GB2312">项目</font></span><span style="mso-spacerun:'yes';font-family:仿宋_GB2312;font-size:16.0000pt;mso-font-kerning:1.0000pt;"><font face="仿宋_GB2312">实施方案及实施计划</font></span><span style="mso-spacerun:'yes';font-family:仿宋_GB2312;font-size:16.0000pt;mso-font-kerning:1.0000pt;">
     </span></p>
   <table class="MsoNormalTable" align="center" style="border-collapse:collapse;mso-table-layout-alt:fixed;mso-padding-alt:0.0000pt 0.0000pt 0.0000pt 0.0000pt ;">
    <tbody>
     <tr style="height:609.1500pt;">
      <td width="588" valign="top" style="width:441.4500pt;padding:0.0000pt 0.0000pt 0.0000pt 0.0000pt ;border-left:1.0000pt solid rgb(0,0,0);mso-border-left-alt:0.2500pt solid rgb(0,0,0);border-right:1.0000pt solid rgb(0,0,0);mso-border-right-alt:0.2500pt solid rgb(0,0,0);border-top:1.0000pt solid rgb(0,0,0);mso-border-top-alt:0.2500pt solid rgb(0,0,0);border-bottom:1.0000pt solid rgb(0,0,0);mso-border-bottom-alt:0.2500pt solid rgb(0,0,0);"><p class="MsoNormal" style="text-indent:12.4500pt;mso-char-indent-count:1.0000;text-align:left;"><span style="mso-spacerun:'yes';font-family:仿宋_GB2312;font-size:12.0000pt;mso-font-kerning:1.0000pt;">1.<font face="仿宋_GB2312">具体改革内容、改革目标和拟解决的关键问题</font></span><span style="font-family:'Times New Roman';mso-fareast-font-family:仿宋_GB2312;font-size:12.0000pt;mso-font-kerning:1.0000pt;">
         </span></p>
        ${print.printOne }  
       </td>
     </tr>
     <tr style="height:645.2500pt;">
      <td width="588" valign="top" style="width:441.4500pt;padding:0.0000pt 0.0000pt 0.0000pt 0.0000pt ;border-left:1.0000pt solid rgb(0,0,0);mso-border-left-alt:0.2500pt solid rgb(0,0,0);border-right:1.0000pt solid rgb(0,0,0);mso-border-right-alt:0.2500pt solid rgb(0,0,0);border-top:none;;mso-border-top-alt:0.2500pt solid rgb(0,0,0);border-bottom:1.0000pt solid rgb(0,0,0);mso-border-bottom-alt:0.2500pt solid rgb(0,0,0);"><p class="MsoNormal" style="text-indent:12.4500pt;mso-char-indent-count:1.0000;text-align:left;"><span style="mso-spacerun:'yes';font-family:仿宋_GB2312;font-size:12.0000pt;mso-font-kerning:1.0000pt;">2.<font face="仿宋_GB2312">实施方案、实施方法、具体实施计划（含年度进展情况）及可行性分析</font></span><span style="font-family:仿宋_GB2312;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
         </span></p>
        ${print.printTwo }
       </td>
     </tr>
     <tr style="height:645.2500pt;">
      <td width="588" valign="top" style="width:441.4500pt;padding:0.0000pt 0.0000pt 0.0000pt 0.0000pt ;border-left:1.0000pt solid rgb(0,0,0);mso-border-left-alt:0.2500pt solid rgb(0,0,0);border-right:1.0000pt solid rgb(0,0,0);mso-border-right-alt:0.2500pt solid rgb(0,0,0);border-top:none;;mso-border-top-alt:0.2500pt solid rgb(0,0,0);border-bottom:1.0000pt solid rgb(0,0,0);mso-border-bottom-alt:0.2500pt solid rgb(0,0,0);"><p class="MsoNormal" style="text-indent:12.4500pt;mso-char-indent-count:1.0000;text-align:left;"><span style="mso-spacerun:'yes';font-family:仿宋_GB2312;font-size:12.0000pt;mso-font-kerning:1.0000pt;">3.<font face="仿宋_GB2312">项目预期的成果和效果（包括成果形式、实施范围、受益学生数等）</font></span><span style="font-family:仿宋_GB2312;font-size:12.0000pt;mso-font-kerning:1.0000pt;">
         </span></p>
       ${print.printThree }  
       </td>
     </tr>
     <tr style="height:645.2500pt;">
      <td width="588" valign="top" style="width:441.4500pt;padding:0.0000pt 0.0000pt 0.0000pt 0.0000pt ;border-left:1.0000pt solid rgb(0,0,0);mso-border-left-alt:0.2500pt solid rgb(0,0,0);border-right:1.0000pt solid rgb(0,0,0);mso-border-right-alt:0.2500pt solid rgb(0,0,0);border-top:none;;mso-border-top-alt:0.2500pt solid rgb(0,0,0);border-bottom:1.0000pt solid rgb(0,0,0);mso-border-bottom-alt:0.2500pt solid rgb(0,0,0);"><p class="MsoNormal" style="text-indent:12.4500pt;mso-char-indent-count:1.0000;text-align:left;"><span style="mso-spacerun:'yes';font-family:仿宋_GB2312;font-size:12.0000pt;mso-font-kerning:1.0000pt;">4.<font face="仿宋_GB2312">本项目的特色与创新之处</font></span><span style="font-family:仿宋_GB2312;font-size:12.0000pt;mso-font-kerning:1.0000pt;">
         </span></p>
         ${print.printFour }
      </td>
     </tr>
    </tbody>
   </table>
   <p class="MsoNormal"><span style="mso-spacerun:'yes';font-family:仿宋_GB2312;font-size:16.0000pt;mso-font-kerning:1.0000pt;">
     
      &nbsp;
     </span></p>
   <p class="MsoNormal"><span style="padding-left:70px;mso-spacerun:'yes';font-family:仿宋_GB2312;font-size:16.0000pt;mso-font-kerning:1.0000pt;"><font face="仿宋_GB2312">四、教学改革基础</font></span><span style="mso-spacerun:'yes';font-family:仿宋_GB2312;font-size:16.0000pt;mso-font-kerning:1.0000pt;">
     </span></p>
   <table class="MsoNormalTable" align="center" style="border-collapse:collapse;mso-table-layout-alt:fixed;mso-padding-alt:0.0000pt 0.0000pt 0.0000pt 0.0000pt ;">
    <tbody>
     <tr style="height:608.4500pt;">
      <td width="588" valign="top" style="width:441.4500pt;padding:0.0000pt 0.0000pt 0.0000pt 0.0000pt ;border-left:1.0000pt solid rgb(0,0,0);mso-border-left-alt:0.2500pt solid rgb(0,0,0);border-right:1.0000pt solid rgb(0,0,0);mso-border-right-alt:0.2500pt solid rgb(0,0,0);border-top:1.0000pt solid rgb(0,0,0);mso-border-top-alt:0.2500pt solid rgb(0,0,0);border-bottom:1.0000pt solid rgb(0,0,0);mso-border-bottom-alt:0.2500pt solid rgb(0,0,0);"><p class="MsoNormal" style="text-indent:12.4500pt;mso-char-indent-count:1.0000;text-align:left;"><span style="mso-spacerun:'yes';font-family:仿宋_GB2312;font-size:12.0000pt;mso-font-kerning:1.0000pt;">1.<font face="仿宋_GB2312">与本项目有关的教学改革工作积累和已取得的教学改革工作成绩（成绩须注明时间、颁发部门、获奖等次、名次等详细信息）</font></span><span style="font-family:仿宋_GB2312;font-size:12.0000pt;mso-font-kerning:1.0000pt;">
         </span></p>
         ${basics.basicsOne }
       </td>
     </tr>
     <tr style="height:648.8000pt;">
      <td width="588" valign="top" style="width:441.4500pt;padding:0.0000pt 0.0000pt 0.0000pt 0.0000pt ;border-left:1.0000pt solid rgb(0,0,0);mso-border-left-alt:0.2500pt solid rgb(0,0,0);border-right:1.0000pt solid rgb(0,0,0);mso-border-right-alt:0.2500pt solid rgb(0,0,0);border-top:none;;mso-border-top-alt:0.2500pt solid rgb(0,0,0);border-bottom:1.0000pt solid rgb(0,0,0);mso-border-bottom-alt:0.2500pt solid rgb(0,0,0);"><p class="MsoNormal" style="text-indent:12.4500pt;mso-char-indent-count:1.0000;text-align:left;"><span style="mso-spacerun:'yes';font-family:仿宋_GB2312;font-size:12.0000pt;mso-font-kerning:1.0000pt;">2.<font face="仿宋_GB2312">申请者和项目组成员所承担的教学改革和科研项目情况（注明承担项目立项时间、立项单位、参与名次及承担的主要工作）</font></span><span style="font-family:仿宋_GB2312;font-size:12.0000pt;mso-font-kerning:1.0000pt;">
         </span></p>
       ${basics.basicsTwo}
       </td>
     </tr>
    </tbody>
   </table>
   <p class="MsoNormal"><span style="mso-spacerun:'yes';font-family:仿宋_GB2312;font-size:16.0000pt;mso-font-kerning:1.0000pt;">
     
      &nbsp;
     </span></p>
   <p class="MsoNormal"><span style="padding-left:70px;mso-spacerun:'yes';font-family:仿宋_GB2312;font-size:16.0000pt;mso-font-kerning:1.0000pt;"><font face="仿宋_GB2312">五、经费预算</font></span><span style="mso-spacerun:'yes';font-family:仿宋_GB2312;font-size:16.0000pt;mso-font-kerning:1.0000pt;">
     </span></p>
   <table class="MsoNormalTable" align="center" style="border-collapse:collapse;mso-table-layout-alt:fixed;mso-padding-alt:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;">
    <tbody>
   
     <tr>
      <td width="193" valign="center" style="width:145.3000pt;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:1.0000pt solid windowtext;mso-border-left-alt:0.5000pt solid windowtext;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;border-top:1.0000pt solid windowtext;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;mso-border-bottom-alt:0.5000pt solid windowtext;"><p class="MsoNormal" align="center" style="text-align:center;"><span style="mso-spacerun:'yes';font-family:仿宋_GB2312;font-size:12.0000pt;mso-font-kerning:1.0000pt;">支出科目（含配套经费）</span><span style="font-family:仿宋_GB2312;font-size:12.0000pt;mso-font-kerning:1.0000pt;">
         </span></p>
        
       </td>
      <td width="137" valign="center" style="width:103.1000pt;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:none;;mso-border-left-alt:none;;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;border-top:1.0000pt solid windowtext;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;mso-border-bottom-alt:0.5000pt solid windowtext;"><p class="MsoNormal" align="center" style="text-align:center;"><span style="mso-spacerun:'yes';font-family:仿宋_GB2312;font-size:12.0000pt;mso-font-kerning:1.0000pt;">金额（元）</span><span style="font-family:仿宋_GB2312;font-size:12.0000pt;mso-font-kerning:1.0000pt;">
         </span></p>
      
       </td>
      <td width="250" valign="center" style="width:187.5500pt;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:none;;mso-border-left-alt:none;;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;border-top:1.0000pt solid windowtext;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;mso-border-bottom-alt:0.5000pt solid windowtext;"><p class="MsoNormal" align="center" style="text-align:center;"><span style="mso-spacerun:'yes';font-family:仿宋_GB2312;font-size:12.0000pt;mso-font-kerning:1.0000pt;">计算根据及理由</span><span style="font-family:仿宋_GB2312;font-size:12.0000pt;mso-font-kerning:1.0000pt;">
         </span></p>
      
       </td>
     </tr>
     
     <tr>
      <td width="193" valign="center" style="width:145.3000pt;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:1.0000pt solid windowtext;mso-border-left-alt:0.5000pt solid windowtext;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;border-top:none;;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;mso-border-bottom-alt:0.5000pt solid windowtext;"><p class="MsoNormal" align="center" style="text-align:center;"><span style="mso-spacerun:'yes';font-family:仿宋_GB2312;font-size:12.0000pt;mso-font-kerning:1.0000pt;">合&nbsp;计</span><span style="font-family:仿宋_GB2312;font-size:12.0000pt;mso-font-kerning:1.0000pt;">
         </span></p></td>
      <td width="137" valign="center" style="width:103.1000pt;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:none;;mso-border-left-alt:none;;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;border-top:none;;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;mso-border-bottom-alt:0.5000pt solid windowtext;"><p class="MsoNormal" align="center" style="text-align:center;"><span style="font-family:仿宋_GB2312;font-size:12.0000pt;mso-font-kerning:1.0000pt;">
          &nbsp;
         </span></p></td>
      <td width="250" valign="center" style="width:187.5500pt;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:none;;mso-border-left-alt:none;;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;border-top:none;;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;mso-border-bottom-alt:0.5000pt solid windowtext;"><p class="MsoNormal" align="center" style="text-align:center;"><span style="font-family:仿宋_GB2312;font-size:12.0000pt;mso-font-kerning:1.0000pt;">
         
          &nbsp;
         </span></p></td>
     </tr>
    
      <c:forEach var="budget" items="${budgets }" varStatus="status">
     <tr>
      <td width="193" valign="top" style="width:145.3000pt;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:1.0000pt solid windowtext;mso-border-left-alt:0.5000pt solid windowtext;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;border-top:none;;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;mso-border-bottom-alt:0.5000pt solid windowtext;"><p class="MsoNormal"><span style="mso-spacerun:'yes';font-family:仿宋_GB2312;font-size:12.0000pt;mso-font-kerning:1.0000pt;">${status.index+1 }.</span><span style="font-family:仿宋_GB2312;font-size:12.0000pt;mso-font-kerning:1.0000pt;">
          ${budget.subject }</span></p></td>
      <td width="137" valign="top" style="width:103.1000pt;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:none;;mso-border-left-alt:none;;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;border-top:none;;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;mso-border-bottom-alt:0.5000pt solid windowtext;"><p class="MsoNormal" align="center" style="text-align:center;"><span style="font-family:仿宋_GB2312;font-size:12.0000pt;mso-font-kerning:1.0000pt;">
          ${budget.money }  
         </span></p></td>
      <td width="250" valign="top" style="width:187.5500pt;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:none;;mso-border-left-alt:none;;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;border-top:none;;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;mso-border-bottom-alt:0.5000pt solid windowtext;"><p class="MsoNormal" align="center" style="text-align:center;"><span style="font-family:仿宋_GB2312;font-size:12.0000pt;mso-font-kerning:1.0000pt;">
          ${budget.reason }  
         </span></p></td>
     </tr>
      </c:forEach>
      <c:forEach varStatus="status" begin="0" end="${5-budgets.size() }" step="1">
     <tr>
      <td width="193" valign="center" style="width:145.3000pt;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:1.0000pt solid windowtext;mso-border-left-alt:0.5000pt solid windowtext;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;border-top:none;;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;mso-border-bottom-alt:0.5000pt solid windowtext;"><p class="MsoNormal"><span style="mso-spacerun:'yes';font-family:仿宋_GB2312;font-size:12.0000pt;mso-font-kerning:1.0000pt;">${status.index+1+budgets.size() }.</span><span style="font-family:仿宋_GB2312;font-size:12.0000pt;mso-font-kerning:1.0000pt;">
         </span></p></td>
      <td width="137" valign="center" style="width:103.1000pt;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:none;;mso-border-left-alt:none;;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;border-top:none;;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;mso-border-bottom-alt:0.5000pt solid windowtext;"><p class="MsoNormal" align="center" style="text-align:center;"><span style="font-family:仿宋_GB2312;font-size:12.0000pt;mso-font-kerning:1.0000pt;">
         
          &nbsp;
         </span></p></td>
      <td width="250" valign="center" style="width:187.5500pt;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:none;;mso-border-left-alt:none;;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;border-top:none;;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;mso-border-bottom-alt:0.5000pt solid windowtext;"><p class="MsoNormal" align="center" style="text-align:center;"><span style="font-family:仿宋_GB2312;font-size:12.0000pt;mso-font-kerning:1.0000pt;">
         
          &nbsp;
         </span></p></td>
     </tr>
     </c:forEach>
    </tbody>
   </table>
   <p class="MsoNormal"><span style="padding-left:70px;mso-spacerun:'yes';font-family:仿宋_GB2312;font-size:16.0000pt;mso-font-kerning:1.0000pt;"><font face="仿宋_GB2312">六、审批</font></span><span style="mso-spacerun:'yes';font-family:仿宋_GB2312;font-size:16.0000pt;mso-font-kerning:1.0000pt;">
     </span></p>
   <table class="MsoNormalTable" align="center" style="border-collapse:collapse;mso-table-layout-alt:fixed;mso-padding-alt:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;">
    <tbody>
     <tr style="height:118.5000pt;">
      <td width="585" valign="top" style="width:439.4500pt;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:1.0000pt solid windowtext;mso-border-left-alt:0.5000pt solid windowtext;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;border-top:1.0000pt solid windowtext;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;mso-border-bottom-alt:0.5000pt solid windowtext;"><p class="MsoNormal" style="margin-top:17.6000pt;mso-para-margin-top:0.6000gd;"><span style="mso-spacerun:'yes';font-family:仿宋_GB2312;font-size:14.0000pt;mso-font-kerning:1.0000pt;">系（教研室）意见：&nbsp;&nbsp;</span><span style="font-family:仿宋_GB2312;font-size:14.0000pt;mso-font-kerning:1.0000pt;">
         </span></p><p class="MsoNormal" style="margin-top:17.6000pt;mso-para-margin-top:0.6000gd;"><span style="font-family:仿宋_GB2312;font-size:14.0000pt;mso-font-kerning:1.0000pt;">
         
          &nbsp;
         </span></p><p class="MsoNormal" style="margin-top:17.6000pt;mso-para-margin-top:0.6000gd;"><span style="font-family:仿宋_GB2312;font-size:14.0000pt;mso-font-kerning:1.0000pt;">
         
          &nbsp;
         </span></p><p class="MsoNormal" style="margin-top:17.6000pt;mso-para-margin-top:0.6000gd;"><span style="mso-spacerun:'yes';font-family:仿宋_GB2312;font-size:14.0000pt;mso-font-kerning:1.0000pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="font-family:仿宋_GB2312;font-size:14.0000pt;mso-font-kerning:1.0000pt;">
         </span></p><p class="MsoNormal" style="margin-top:17.6000pt;mso-para-margin-top:0.6000gd;"><span style="font-family:仿宋_GB2312;font-size:14.0000pt;mso-font-kerning:1.0000pt;">
         
          &nbsp;
         </span></p><p class="MsoNormal" style="margin-top:17.6000pt;mso-para-margin-top:0.6000gd;"><span style="mso-spacerun:'yes';font-family:仿宋_GB2312;font-size:14.0000pt;mso-font-kerning:1.0000pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;　　　　　　　　　　　　　　&nbsp;&nbsp;签字</span><span style="font-family:仿宋_GB2312;font-size:14.0000pt;mso-font-kerning:1.0000pt;">
         </span></p><p class="MsoNormal" style="margin-top:17.6000pt;mso-para-margin-top:0.6000gd;text-indent:289.0000pt;mso-char-indent-count:20.0000;"><span style="mso-spacerun:'yes';font-family:仿宋_GB2312;font-size:14.0000pt;mso-font-kerning:1.0000pt;">年&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;月&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;日</span><span style="font-family:仿宋_GB2312;font-size:14.0000pt;mso-font-kerning:1.0000pt;">
         </span></p></td>
     </tr>
     <tr style="height:118.5000pt;">
      <td width="585" valign="top" style="width:439.4500pt;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:1.0000pt solid windowtext;mso-border-left-alt:0.5000pt solid windowtext;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;border-top:none;;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;mso-border-bottom-alt:0.5000pt solid windowtext;"><p class="MsoNormal" style="margin-top:17.6000pt;mso-para-margin-top:0.6000gd;"><span style="mso-spacerun:'yes';font-family:仿宋_GB2312;font-size:14.0000pt;mso-font-kerning:1.0000pt;">院（部）意见：</span><span style="font-family:仿宋_GB2312;font-size:14.0000pt;mso-font-kerning:1.0000pt;">
         </span></p><p class="MsoNormal" style="margin-top:17.6000pt;mso-para-margin-top:0.6000gd;"><span style="mso-spacerun:'yes';font-family:仿宋_GB2312;font-size:14.0000pt;mso-font-kerning:1.0000pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="font-family:仿宋_GB2312;font-size:14.0000pt;mso-font-kerning:1.0000pt;">
         </span></p><p class="MsoNormal" style="margin-top:17.6000pt;mso-para-margin-top:0.6000gd;"><span style="mso-spacerun:'yes';font-family:仿宋_GB2312;font-size:14.0000pt;mso-font-kerning:1.0000pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;签字&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="font-family:仿宋_GB2312;font-size:14.0000pt;mso-font-kerning:1.0000pt;">
         </span></p><p class="MsoNormal" style="margin-top:17.6000pt;mso-para-margin-top:0.6000gd;text-indent:289.0000pt;mso-char-indent-count:20.0000;"><span style="mso-spacerun:'yes';font-family:仿宋_GB2312;font-size:14.0000pt;mso-font-kerning:1.0000pt;">（盖章）</span><span style="font-family:仿宋_GB2312;font-size:14.0000pt;mso-font-kerning:1.0000pt;">
         </span></p><p class="MsoNormal" style="margin-top:17.6000pt;mso-para-margin-top:0.6000gd;text-indent:274.5500pt;mso-char-indent-count:19.0000;"><span style="mso-spacerun:'yes';font-family:仿宋_GB2312;font-size:14.0000pt;mso-font-kerning:1.0000pt;">年&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;月&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;日</span><span style="font-family:仿宋_GB2312;font-size:14.0000pt;mso-font-kerning:1.0000pt;">
         </span></p></td>
     </tr>
     <tr style="height:136.8500pt;">
      <td width="585" valign="top" style="width:439.4500pt;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:1.0000pt solid windowtext;mso-border-left-alt:0.5000pt solid windowtext;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;border-top:none;;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;mso-border-bottom-alt:0.5000pt solid windowtext;"><p class="MsoNormal" style="margin-top:17.6000pt;mso-para-margin-top:0.6000gd;"><span style="mso-spacerun:'yes';font-family:仿宋_GB2312;mso-ascii-font-family:宋体;mso-hansi-font-family:宋体;font-size:14.0000pt;mso-font-kerning:1.0000pt;">专家组评审</span><span style="mso-spacerun:'yes';font-family:仿宋_GB2312;font-size:14.0000pt;mso-font-kerning:1.0000pt;">意见：</span><span style="font-family:仿宋_GB2312;font-size:14.0000pt;mso-font-kerning:1.0000pt;">
         </span></p><p class="MsoNormal" style="margin-top:17.6000pt;mso-para-margin-top:0.6000gd;text-indent:310.6500pt;mso-char-indent-count:21.5000;"><span style="font-family:仿宋_GB2312;font-size:14.0000pt;mso-font-kerning:1.0000pt;">
         
          &nbsp;
         </span></p><p class="MsoNormal" style="margin-top:17.6000pt;mso-para-margin-top:0.6000gd;text-indent:310.6500pt;mso-char-indent-count:21.5000;"><span style="mso-spacerun:'yes';font-family:仿宋_GB2312;font-size:14.0000pt;mso-font-kerning:1.0000pt;">签字</span><span style="font-family:仿宋_GB2312;font-size:14.0000pt;mso-font-kerning:1.0000pt;">
         </span></p><p class="MsoNormal" style="margin-top:17.6000pt;mso-para-margin-top:0.6000gd;text-indent:274.5500pt;mso-char-indent-count:19.0000;"><span style="mso-spacerun:'yes';font-family:仿宋_GB2312;font-size:14.0000pt;mso-font-kerning:1.0000pt;">年&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;月&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;日</span><span style="font-family:仿宋_GB2312;font-size:14.0000pt;mso-font-kerning:1.0000pt;">
         </span></p></td>
     </tr>
     <tr style="height:188.7500pt;">
      <td width="585" valign="top" style="width:439.4500pt;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:1.0000pt solid windowtext;mso-border-left-alt:0.5000pt solid windowtext;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;border-top:none;;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;mso-border-bottom-alt:0.5000pt solid windowtext;"><p class="MsoNormal" style="margin-top:17.6000pt;mso-para-margin-top:0.6000gd;"><span style="mso-spacerun:'yes';font-family:仿宋_GB2312;font-size:14.0000pt;mso-font-kerning:1.0000pt;">主管院长审批意见：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="font-family:仿宋_GB2312;font-size:14.0000pt;mso-font-kerning:1.0000pt;">
         </span></p><p class="MsoNormal" style="margin-top:17.6000pt;mso-para-margin-top:0.6000gd;"><span style="mso-spacerun:'yes';font-family:仿宋_GB2312;font-size:14.0000pt;mso-font-kerning:1.0000pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="font-family:仿宋_GB2312;font-size:14.0000pt;mso-font-kerning:1.0000pt;">
         </span></p><p class="MsoNormal" style="margin-top:17.6000pt;mso-para-margin-top:0.6000gd;text-indent:310.6500pt;mso-char-indent-count:21.5000;"><span style="mso-spacerun:'yes';font-family:仿宋_GB2312;font-size:14.0000pt;mso-font-kerning:1.0000pt;">签字<font face="Times New Roman">:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font></span><span style="font-family:仿宋_GB2312;font-size:14.0000pt;mso-font-kerning:1.0000pt;">
         </span></p><p class="MsoNormal" style="margin-top:17.6000pt;mso-para-margin-top:0.6000gd;text-indent:310.6500pt;mso-char-indent-count:21.5000;"><span style="mso-spacerun:'yes';font-family:仿宋_GB2312;font-size:14.0000pt;mso-font-kerning:1.0000pt;">公章&nbsp;：</span><span style="font-family:仿宋_GB2312;font-size:14.0000pt;mso-font-kerning:1.0000pt;">
         </span></p><p class="MsoNormal" style="margin-top:17.6000pt;mso-para-margin-top:0.6000gd;text-indent:274.5500pt;mso-char-indent-count:19.0000;"><span style="mso-spacerun:'yes';font-family:仿宋_GB2312;font-size:14.0000pt;mso-font-kerning:1.0000pt;">年&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;月&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;日</span><span style="font-family:仿宋_GB2312;font-size:14.0000pt;mso-font-kerning:1.0000pt;">
         </span></p></td>
     </tr>
    </tbody>
   </table>
  </div>
    </div>
</div>