package com.jiaogai.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;
import com.jiaogai.model.Project;
import com.jiaogai.model.vo.ProjectVo;

public interface ProjectMapper extends BaseMapper<Project>{
	List<Map<String, Object>> selectProjectPage(Pagination page, Map<String, Object> params);
	
	Project selectDetailById(long id);
	
	void updateRealMoney(Project project);
	
	ProjectVo selectProjectById(@Param("id") Long id);
}