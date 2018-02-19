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
import com.jiaogai.model.Faction;
import com.jiaogai.service.IDepartmentService;
import com.jiaogai.service.IFactionService;

@Controller
@RequestMapping("/faction")
public class FactionController extends BaseController{

	@Autowired
	private IFactionService factionService;
	@Autowired
	private IDepartmentService departmentService;
	
	/**
	 * 院系管理
	 */
	@GetMapping("/manager")
	public String manager(){
		return "/admin/faction/faction";
	}
	@PostMapping("/dataGrid")
	 @ResponseBody
	 public Object dataGrid(Integer page, Integer rows, String sort, String order,
			 HttpServletRequest request) {
	    PageInfo pageInfo = new PageInfo(page, rows, sort, order);
	    factionService.selectDataGrid(pageInfo); 
	    return pageInfo;
	 }
	/**
	 * 进入添页
	 */
	@GetMapping("/addPage")
	public String addPage(Model model){
		List<Department> list=departmentService.selectCollege();
		for (Department department : list) {
			System.out.println("学院=::::"+department.getdName());
		}
		model.addAttribute("departmets", list);
		return "/admin/faction/add";
	}
	/**
	 * 添加
	 * @param faction
	 * @return
	 */
	@PostMapping("/add")
	@ResponseBody
	public Object add(@Valid Faction faction){
		Department department=departmentService.selectById(faction.getdId());
		faction.setdName(department.getdName());
		factionService.insert(faction);
		return renderSuccess("添加成功！");
	}
	/**
	 * 进入编辑页
	 */
	@GetMapping("/editPage")
	public String editPage(long id,Model model){
		List<Department> list=departmentService.selectCollege();
		model.addAttribute("departmets", list);
		Faction faction=factionService.selectById(id);
		model.addAttribute("faction", faction);
		return "/admin/faction/edit";
	}
	/**
	 * 编辑
	 */
	@RequestMapping("/edit")
	@ResponseBody
	public Object edit(@Valid Faction faction){
		Department department=departmentService.selectById(faction.getdId());
		faction.setdName(department.getdName());
		factionService.updateById(faction);
		return renderSuccess("编辑成功！");
	}
	/**
	 * 删除
	 */
	@RequestMapping("/delete")
	@ResponseBody
	public Object delete(long id){
		factionService.deleteById(id);
		return renderSuccess("删除成功!");
	}
}
