package com.jiaogai.service;

import java.util.List;

import com.baomidou.mybatisplus.service.IService;
import com.jiaogai.commons.result.PageInfo;
import com.jiaogai.model.Department;
import com.jiaogai.model.DepartmentType;

public interface IDepartmentService extends IService<Department>{
 
	void selectDataGrid(PageInfo pageInfo);
	/**
	 * 查询部门分类
	 * @return
	 */
	Object selectTree();
	/**
	 * 根据类型名查部门
	 */
	DepartmentType selectByTypeId(long id);
	
	/**
	 * 查询全部部门类型
	 */
	List<DepartmentType> selectAllType();
	/**
	 * 查询全部学院
	 */
	List<Department> selectCollege();
}

