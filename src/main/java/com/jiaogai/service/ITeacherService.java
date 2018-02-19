package com.jiaogai.service;

import java.util.List;

import com.baomidou.mybatisplus.service.IService;
import com.jiaogai.commons.result.PageInfo;
import com.jiaogai.model.Teacher;

public interface ITeacherService extends IService<Teacher>{
	void selectDataGrid(PageInfo pageInfo);
	
	/**
	 * 修改状态   
	 */
	void updateStatus(Teacher teacher);
	
	/**
	 * 根据专家id查询对应类型权限
	 */
	List<Long> selectDeclareIdListByTeacherId(Long id); 
}
