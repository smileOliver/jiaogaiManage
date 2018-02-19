package com.jiaogai.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.jiaogai.commons.result.PageInfo;
import com.jiaogai.mapper.ProjectMapper;
import com.jiaogai.model.Notice;
import com.jiaogai.model.Project;
import com.jiaogai.model.vo.ProjectVo;
import com.jiaogai.service.IProjectService;

@Service
public class ProjectServiceImpl extends ServiceImpl<ProjectMapper, Project>
 implements IProjectService{

	@Autowired
	private ProjectMapper projectMapper;
	@Override
	public void selectDataGrid(PageInfo pageInfo) {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
		Page<Map<String, Object>> page = new Page<Map<String, Object>>(pageInfo.getNowpage(), pageInfo.getSize());
        page.setOrderByField(pageInfo.getSort());
        page.setAsc(pageInfo.getOrder().equalsIgnoreCase("asc"));
        List<Map<String, Object>> list = projectMapper.selectProjectPage(page, pageInfo.getCondition());
        pageInfo.setRows(list);
        pageInfo.setTotal(page.getTotal());
	}
	@Override
	public Project selectDetailById(long id) {
		// TODO Auto-generated method stub
		return projectMapper.selectDetailById(id);
	}
	@Override
	public void updateRealMoney(Project project) {
		// TODO Auto-generated method stub
		projectMapper.updateRealMoney(project);
	}
	@Override
	public ProjectVo selectProjectById(Long id) {
		// TODO Auto-generated method stub
		return projectMapper.selectProjectById(id);
	}

}
