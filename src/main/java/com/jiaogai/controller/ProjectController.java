package com.jiaogai.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.druid.support.jconsole.model.GroupableTableHeaderUI;
import com.hg.xdoc.XDocService;
import com.jiaogai.commons.base.BaseController;
import com.jiaogai.commons.ftl.DocUtil;
import com.jiaogai.commons.ftl.WordGenerator;
import com.jiaogai.commons.result.PageInfo;
import com.jiaogai.model.Basics;
import com.jiaogai.model.Budget;
import com.jiaogai.model.Department;
import com.jiaogai.model.Group;
import com.jiaogai.model.Print;
import com.jiaogai.model.Project;
import com.jiaogai.model.Result;
import com.jiaogai.model.Teacher;
import com.jiaogai.service.IBasicsService;
import com.jiaogai.service.IBudgetService;
import com.jiaogai.service.IDepartmentService;
import com.jiaogai.service.IGroupService;
import com.jiaogai.service.IPrintService;
import com.jiaogai.service.IProjectService;
import com.jiaogai.service.IResultService;
import com.jiaogai.service.ITeacherService;

@Controller
@RequestMapping("/project")
public class ProjectController extends BaseController {

	@Autowired
	private IProjectService projectService;
	@Autowired
	private ITeacherService teacherService;
	@Autowired
	private IDepartmentService departmentService;
	@Autowired
	private IResultService resultService;
	@Autowired
	private IGroupService groupService;
	@Autowired
	private IPrintService printService;
	@Autowired
	private IBasicsService basicsService;
	@Autowired
	private IBudgetService budgetService;
	/**
	 * 项目管理页
	 */
	@GetMapping("/manager")
	public String manager(){
		return "/admin/project/project";
	}
	@PostMapping("/dataGrid")
	@ResponseBody
	public Object dataGrid(Project project,Integer page, Integer rows, String sort, String order,
			 HttpServletRequest request) {
	  PageInfo pageInfo = new PageInfo(page, rows, sort, order);
	  Map<String, Object> condition = new HashMap<String, Object>();
	  if(project.getpTitle()!=null && project.getpTitle()!=""){
		  condition.put("pTitle", project.getpTitle());
	  }
	  if(project.getTeacherName()!=null && project.getTeacherName()!=""){
		  condition.put("teacherName", project.getTeacherName());
	  }
	  if(project.getTypeName()!=null && project.getTypeName()!=""){
		  condition.put("typeName", project.getTypeName());
	  }
	  if(project.getStatus()!=null){
		  condition.put("status", project.getStatus());
	  }
	  pageInfo.setCondition(condition);
	  projectService.selectDataGrid(pageInfo); 
	  return pageInfo;
	}
	/**
	 * 进入详情页
	 */
	@GetMapping("/detail")
	public String detail(long id,Model model){
		//项目信息
		Project project=projectService.selectDetailById(id);
		model.addAttribute("project", project);
		//主持人信息
		Teacher teacher=teacherService.selectById(project.gettId());
		model.addAttribute("teacher", teacher);
		//所在部门的信息
		Department department=departmentService.selectById(teacher.getDepartmentId());
		model.addAttribute("department", department);
		//主要教学改 革 和研究成果
		List<Result> results=resultService.selectByTeacherId(teacher.getId());
		model.addAttribute("results", results);
		//小组成员
		List<Group> groups=groupService.selectByProjectId(project.getId());
		model.addAttribute("groups", groups);
		//项目实施方案及实施计划
		Print print=printService.selectByProjectId(project.getId());
		model.addAttribute("print", print);
		//教学改革基础
		Basics basics=basicsService.selectByProjectId(project.getId());
		model.addAttribute("basics", basics);
		//经费预算
		List<Budget> budgets=budgetService.selectByProjectId(project.getId());
		model.addAttribute("budgets", budgets);
		/*ProjectVo projectVo=projectService.selectProjectById(id);
		model.addAttribute("projectVo", projectVo);*/
		return "/admin/project/detail";
	}
	/**
	 * 进入经费审批页
	 */
	@GetMapping("/editPage")
	public String editPage(long id,Model model){
		Project project=projectService.selectDetailById(id);
		model.addAttribute("project", project);
		return "/admin/project/edit";
	}
	/**
	 * 修改经费
	 */
	@RequestMapping("/edit")
	@ResponseBody
	public Object edit(Project project){
		projectService.updateRealMoney(project);
		return renderSuccess("修改成功！");
	}
	/**
	 * 删除
	 */
	@RequestMapping("/delete")
	@ResponseBody
	public Object delete(long id){
		projectService.deleteById(id);
		return renderSuccess("删除成功！");
	}
	/**
	 * 导出成word文档
	 */
	@RequestMapping("/exportWord")
	public void exportWord(long id,HttpServletResponse resp)
			throws ServletException, IOException {
		Map<String, Object> map = new HashMap<String, Object>();  
		//将对应的值添加到map中
		//项目信息
		Project project=projectService.selectDetailById(id);
		map.put("pTitle", project.getpTitle());
		map.put("groups", project.getGroups());
		map.put("endTime", project.getEndTime());
		map.put("according", project.getAccording());
		map.put("delareY", "2017");
		map.put("delareM", "05");
		map.put("delareD", "01");
		map.put("typeName", project.getTypeName());
		map.put("endY", "2018");
		map.put("endM", "05");
  		
		//主持人信息
		Teacher teacher=teacherService.selectById(project.gettId());
		map.put("teacherName", teacher.gettName());
		map.put("tSex", teacher.gettSex());
		//map.put("tBirthday", teacher.gettBirthday());
		//map.put("resume", teacher.getResume());
		//所在部门的信息
		Department department=departmentService.selectById(teacher.getDepartmentId());
		map.put("departmentname", department.getdName());
		//map.put("dPhone", department.getdPhone());
		map.put("dTel", department.getdTel());
		//map.put("dEmail", department.getdEmail());
		//主要教学改 革 和研究成果
		List<Result> results=resultService.selectByTeacherId(teacher.getId());
		if(results.size()!=0){
			for (Result result : results) {
				for(int i=1;i<=results.size();i++){
				  map.put("resultime"+i, result.getResultTime());
				  map.put("resultTitle"+i, result.getProjectTitle());
				  map.put("departmentName"+i, result.getDepartmentName());
				  map.put("award"+i, result.getAward());
				  map.put("grade"+i, result.getGrade());
				}
				if(results.size()<5){
					for(int i=results.size()+1;i<=5;i++){
						  map.put("resultime"+i, "");
						  map.put("resultTitle"+i, "");
						  map.put("departmentName"+i, "");
						  map.put("award"+i, "");
						  map.put("grade"+i, "");
					}
				}
			}
		}
		//小组成员
		List<Group> groups=groupService.selectByProjectId(project.getId());
		if(groups.size()!=0){
			for (Group group : groups) {
				for(int i=1;i<=groups.size();i++){
					map.put("gName"+i, group.getgName());
					map.put("gBirthday"+i, group.getBirthday());
					map.put("jobTitle"+i, group.getJobTitle());
					map.put("workUnit"+i, group.getWorkUnit());
					map.put("fengong"+i, group.getFengong());
					map.put("qianzhang"+i, group.getQianzhang());
				}
				if(groups.size()<6){
					for(int i=groups.size()+1;i<=6;i++){
						map.put("gName"+i, "");
						map.put("gBirthday"+i, "");
						map.put("jobTitle"+i,"");
						map.put("workUnit"+i, "");
						map.put("fengong"+i, "");
						map.put("qianzhang"+i, "");
					}
				}
			}
		}
		//项目实施方案及实施计划
		Print print=printService.selectByProjectId(project.getId());
		map.put("printOne", print.getPrintOne());
		map.put("printTwo", print.getPrintTwo());
		map.put("printThree", print.getPrintThree());
		map.put("printFour", print.getPrintFour());
		//教学改革基础
		Basics basics=basicsService.selectByProjectId(project.getId());
		map.put("basicsOne", basics.getBasicsOne());
		map.put("basicsTwo", basics.getBasicsTwo());
		//经费预算
		List<Budget> budgets=budgetService.selectByProjectId(project.getId());
		map.put("countMoney", project.getBudgetMoney());
		if(budgets.size()!=0){
			for (Budget budget : budgets) {
				for(int i=1;i<=budgets.size();i++){
					map.put("subject"+i, budget.getSubject());
					map.put("money"+i, budget.getMoney());
					map.put("reason"+i, budget.getReason());
				}
				if(budgets.size()<6){
					for(int i=budgets.size()+1;i<=6;i++){
						map.put("subject"+i,"");
						map.put("money"+i, "");
						map.put("reason"+i, "");
					}
				}
			}
		}
        // 提示：在调用工具类生成Word文档之前应当检查所有字段是否完整  
        // 否则Freemarker的模板引擎在处理时可能会因为找不到值而报错 这里暂时忽略这个步骤了  
        File file = null;  
        InputStream fin = null;  
        ServletOutputStream out = null;  
    	try {  
    		// 调用工具类WordGenerator的createDoc方法生成Word文档  
    		file = WordGenerator.createDoc(map, "resume");  
    		fin = new FileInputStream(file);  
    		
    		resp.setCharacterEncoding("utf-8");  
    		resp.setContentType("application/msword");  
    		// 设置浏览器以下载的方式处理该文件默认名为resume.doc  
    		resp.addHeader("Content-Disposition", "attachment;filename=resume.doc");  
    		
    		out = resp.getOutputStream();  
    		byte[] buffer = new byte[512];  // 缓冲区  
    		int bytesToRead = -1;  
    		// 通过循环将读入的Word文件的内容输出到浏览器中  
    		while((bytesToRead = fin.read(buffer)) != -1) {  
    			out.write(buffer, 0, bytesToRead);  
    		}  
    	} finally {  
    		if(fin != null) fin.close();  
    		if(out != null) out.close();  
    		if(file != null) file.delete(); // 删除临时文件  
    	}  
	}
}
