package com.jiaogai.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jiaogai.commons.base.BaseController;
import com.jiaogai.commons.result.PageInfo;
import com.jiaogai.model.Department;
import com.jiaogai.model.DepartmentType;
import com.jiaogai.service.IDepartmentService;

@Controller
@RequestMapping("/department")
public class DepartmentController extends BaseController{

	@Autowired
	private IDepartmentService departmentService;
	
	/**
	 * 进入教师部门管理页
	 */
	@GetMapping("/manager")
	public String manager(){
		return "/admin/department/department";
	}
	 @PostMapping("/dataGrid")
	 @ResponseBody
	 public Object dataGrid(Integer page, Integer rows, String sort, String order,
			 HttpServletRequest request) {
        PageInfo pageInfo = new PageInfo(page, rows, sort, order);
        departmentService.selectDataGrid(pageInfo); 
        return pageInfo;
	 }
	 /**
	  * 添加页面
	  */
	 @GetMapping("/addPage")
	 public String addPage(Model model){
		 List<DepartmentType> list=departmentService.selectAllType();
		 model.addAttribute("departmentTypes", list);
		 return "/admin/department/departmentAdd";
	 }
	 /**
	  * 添加
	  */
	 @PostMapping("/add")
	 @ResponseBody
	 public Object add(@Valid Department department){
		 DepartmentType departmentType=departmentService.selectByTypeId(department.getTypeId());
		 department.setTypeId((int) departmentType.getId());
		 department.setTypeName(departmentType.getTypeName());
		 departmentService.insert(department);
		 return renderSuccess("添加成功！");
	 }
	 /**
	  * 编辑页面
	  */
	 @GetMapping("/editPage")
	 public String edit(long id,Model model){
		 Department department=departmentService.selectById(id);
		 List<DepartmentType> list=departmentService.selectAllType();
		 model.addAttribute("department", department);
		 model.addAttribute("departmentTypes", list);
		 return "/admin/department/departmentEdit";
	 }
	 /**
	  * 编辑
	  */
	 @RequestMapping("/edit")
	 @ResponseBody
	 public Object edit(@Valid Department department){
		 DepartmentType departmentType=departmentService.selectByTypeId(department.getTypeId());
		 department.setTypeId((int) departmentType.getId());
		 department.setTypeName(departmentType.getTypeName());
		 departmentService.updateById(department);
		 return renderSuccess("编辑成功！");
	 }
	 /**
	  *删除 
	  * 
	  */
	 @RequestMapping("/delete")
	 @ResponseBody
	 public Object delete(long id){
		 departmentService.deleteById(id);
		 return renderSuccess("删除成功! ");
	 }
	 /**
	  * 教师部门类型
	  */
	 @PostMapping("/tree")
	 @ResponseBody
	 public Object selectType(){
		 System.out.println("查出来了"+departmentService.selectTree());
		 return departmentService.selectTree();
	 }
}
