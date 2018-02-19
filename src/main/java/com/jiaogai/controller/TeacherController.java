package com.jiaogai.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
import com.jiaogai.model.Teacher;
import com.jiaogai.service.ITeacherService;

@Controller
@RequestMapping("/teacher")
public class TeacherController extends BaseController{

	@Autowired
	private ITeacherService teacherService;
	
	/**
	 * 教师信息页
	 */
	@GetMapping("/manager")
	public String manager(){
		return "/admin/teacher/teacher";
	}
	 @PostMapping("/dataGrid")
	 @ResponseBody
	 public Object dataGrid(Teacher teacher,Integer page, Integer rows, String sort, String order,
			 HttpServletRequest request) {
	    PageInfo pageInfo = new PageInfo(page, rows, sort, order);
	    Map<String, Object> condition = new HashMap<String, Object>();
	    if(teacher.gettName() !=null){
	    	condition.put("tName", teacher.gettName());
	    }
	    if(teacher.getTeacherNum()!= null){
	    	condition.put("teacherNum", teacher.getTeacherNum());
	    }
	    if(teacher.getDepartmentName() !=null ){
	    	condition.put("departmentName", teacher.getDepartmentName());
	    }
	    if(teacher.getIsProfessor()!=null){
	    	condition.put("isProfessor", teacher.getIsProfessor());
	    }
	    if(teacher.getState()!=null){
	    	condition.put("state", teacher.getState());
	    }
	    pageInfo.setCondition(condition);
	    teacherService.selectDataGrid(pageInfo); 
	    return pageInfo;
	 }
	/**
	 * 查看
	 */
	@GetMapping("/detail")
	public String detail(long id,Model model){
		Teacher teacher=teacherService.selectById(id);
		model.addAttribute("teacher", teacher);
		return "/admin/teacher/detail";
	}
	/**
	 * 修改状态
	 */
	@RequestMapping("/edit")
	@ResponseBody
	public Integer edit(@Valid Teacher teacher){
		try {
			Teacher t2=teacherService.selectById(teacher.getId());
			//防止状态为空
			if(teacher.getIsProfessor()==null){
				teacher.setIsProfessor(t2.getIsProfessor());
			}
			if(teacher.getState()==null){
				teacher.setState(t2.getState());
			}
			teacherService.updateStatus(teacher);
			return 200;
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return 500;
		}
	}
	
	/**
	 * 删除
	 */
	@RequestMapping("/delete")
	@ResponseBody
	public Object delete(long id){
		teacherService.deleteById(id);
		return renderSuccess("删除成功！");
	}
	/**
	 * 进入专家管理
	 */
	@GetMapping("/prfessorPage")
	public String professorPage(){
		return "/admin/teacher/professor";
	}
	/**
	 * 查询所有专家
	 */
	 @PostMapping("/professor")
	 @ResponseBody
	 public Object selectProfessor(Teacher teacher,Integer page, Integer rows, String sort, String order,
			 HttpServletRequest request) {
	    PageInfo pageInfo = new PageInfo(page, rows, sort, order);
	    Map<String, Object> condition = new HashMap<String, Object>();
	    	condition.put("isProfessor", 1);
	    pageInfo.setCondition(condition);
	    teacherService.selectDataGrid(pageInfo); 
	    return pageInfo;
	 }
	 /**
     * 授权页面
     *
     * @param id
     * @param model
     * @return
     */
    @GetMapping("/grantPage")
    public String grantPage(Model model, Long id) {
        model.addAttribute("id", id);
        return "admin/teacher/professorGrant";
    }
    /**
	  * 根据专家id查询所属申请类型
	  */
	 @RequestMapping("/selectDeclareIdListByTeacherId")
	 @ResponseBody
	 public Object selectDeclareIdListByTeacherId(@Valid long id){
		 List<Long> deLongs=teacherService.selectDeclareIdListByTeacherId(id);
		 return renderSuccess(deLongs);
	 }
}
