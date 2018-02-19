package com.jiaogai.controller;


import org.apache.shiro.authz.annotation.RequiresRoles;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jiaogai.commons.base.BaseController;
import com.jiaogai.service.IDeclareTypeService;

@Controller
@RequestMapping("/declareType")
public class DeclareTypeController extends BaseController{

	@Autowired
	private IDeclareTypeService declareTypeService;
	
	/**
	 * 获取所有分类
	 */
	@RequestMapping("/allTrees")
	@ResponseBody
	public Object allTrees(){
		return declareTypeService.selectAllTree();
	}
	
	 /**
	  * 授权
	  */
	@RequiresRoles("admin")
    @RequestMapping("/grant")
    @ResponseBody
    public Object grant(Long id, String typeIds) {
		 declareTypeService.updateTypeProfessor(id, typeIds);
        return renderSuccess("授权成功！");
    }
}
