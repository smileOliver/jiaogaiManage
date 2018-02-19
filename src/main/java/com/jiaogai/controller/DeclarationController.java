package com.jiaogai.controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jiaogai.commons.base.BaseController;
import com.jiaogai.commons.result.PageInfo;
import com.jiaogai.model.Declaration;
import com.jiaogai.model.User;
import com.jiaogai.service.IDeclarationService;

@Controller
@RequestMapping("/declaration")
public class DeclarationController extends BaseController{

	@Autowired
	private IDeclarationService declarationService;
	/**
	 * 进入公告信息管理页
	 * @return
	 */
	@GetMapping("/manager")
	public String manager(){
		return "/admin/declaration/declaration";
	}
	
	 @PostMapping("/dataGrid")
	 @ResponseBody
	 public Object dataGrid(Integer page, Integer rows, String sort, String order,
			 HttpServletRequest request) {
	    PageInfo pageInfo = new PageInfo(page, rows, sort, order);
	    declarationService.selectDataGrid(pageInfo); 
	    return pageInfo;
	 }
	 /**
	  * 进入添页
	  * @return
	  */
	 @GetMapping("/addPage")
	 public String addPage(){
		 return "/admin/declaration/declarationAdd";
	 }
	 /**
	  * 添加权限
	  * @param declaration
	  * @return
	  */
	 @PostMapping("/add")
	 @ResponseBody
	 public Object add(@Valid Declaration declaration){
		 //特殊字符转换
		 String value=declaration.getDeclarationContent();
		 if(value!=null && !value.isEmpty()){
			value = value.replaceAll("&lt;", "<").replaceAll("&gt;", ">");
	        value = value.replaceAll("&quot;", "\"");
	        value=value.replaceAll("&amp;", "&");
	        value=value.replaceAll("&copy;", "©");
		 }
		 declaration.setDeclarationContent(value);
		 //获取session数据
	     Subject subject = SecurityUtils.getSubject();
         User user=(User) subject.getSession().getAttribute("user");
         declaration.setUserId(user.getId());
         declaration.setUserName(user.getName());
         declaration.setCreateTime(new Date());
         declarationService.insert(declaration);
         return renderSuccess("添加成功！");
	 }
	 /**
	  * 详情页
	  */
	 @GetMapping("/detailPage")
	 public String detailPage(long id,Model model){
		 Declaration declaration=declarationService.selectById(id);
		 model.addAttribute("declaration", declaration);
		 return "/admin/declaration/declarationDetail";
	 }
	 /**
	  * 修改页
	  */
	 @GetMapping("/editPage")
	 public String editPage(long id,Model model){
		 Declaration declaration=declarationService.selectById(id);
		 model.addAttribute("declaration", declaration);
		 return "/admin/declaration/declarationEdit";
	 }
	 /**
	  * 修改权限
	  */
	 @RequestMapping("/edit")
	 @ResponseBody
	 public Object edit(@Valid Declaration declaration){
		 String value=declaration.getDeclarationContent();
		 if(value!=null && !value.isEmpty()){
			value = value.replaceAll("&lt;", "<").replaceAll("&gt;", ">");
	        value = value.replaceAll("&quot;", "\"");
	        value=value.replaceAll("&amp;", "&");
	        value=value.replaceAll("&copy;", "©");
		 }
		 declaration.setDeclarationContent(value);
		 declarationService.updateById(declaration);
		 return renderSuccess("编辑成功");
	 }
	 /**
	  * 删除权限
	  */
	 @RequestMapping("/delete")
	 @ResponseBody
	 public Object delete(long id){
		 declarationService.deleteById(id);
		 return renderSuccess("删除成功");
	 }
	 
}
