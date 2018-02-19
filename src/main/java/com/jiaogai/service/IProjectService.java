package com.jiaogai.service;

import org.apache.ibatis.annotations.Param;

import com.baomidou.mybatisplus.service.IService;
import com.jiaogai.commons.result.PageInfo;
import com.jiaogai.model.Project;
import com.jiaogai.model.vo.ProjectVo;

public interface IProjectService extends IService<Project>{
	void selectDataGrid(PageInfo pageInfo);
	/**
	 * 根据id 查询详情
	 * @param id
	 * @return
	 */
	Project selectDetailById(long id);
	/**
	 * 修改审批经费
	 * @param realMoney
	 */
	void updateRealMoney(Project project);
	/**
	 * 查询具体项目
	 * @param id
	 * @return
	 */
	ProjectVo selectProjectById(@Param("id") Long id);
}
