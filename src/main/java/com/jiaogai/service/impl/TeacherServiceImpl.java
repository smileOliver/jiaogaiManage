package com.jiaogai.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.jiaogai.commons.result.PageInfo;
import com.jiaogai.mapper.TeacherMapper;
import com.jiaogai.model.Teacher;
import com.jiaogai.service.ITeacherService;

@Service
public class TeacherServiceImpl extends ServiceImpl<TeacherMapper, Teacher> implements ITeacherService{

	@Autowired
	private TeacherMapper teacherMapper;
	
	@Override
	public void selectDataGrid(PageInfo pageInfo) {
		// TODO Auto-generated method stub
	/*	Page<Teacher> page = new Page<Teacher>(pageInfo.getNowpage(), pageInfo.getSize());
        EntityWrapper<Teacher> wrapper = new EntityWrapper<Teacher>();
        wrapper.orderBy(pageInfo.getSort(), pageInfo.getOrder().equalsIgnoreCase("ASC"));
        selectPage(page, wrapper);
        
        pageInfo.setRows(page.getRecords());
         //主要是查询出list集合，然后使用pageHelper包里的pageInfo获取总记录数
        pageInfo.setTotal(page.getTotal());*/
		Page<Map<String, Object>> page = new Page<Map<String, Object>>(pageInfo.getNowpage(), pageInfo.getSize());
        page.setOrderByField(pageInfo.getSort());
        page.setAsc(pageInfo.getOrder().equalsIgnoreCase("asc"));
        List<Map<String, Object>> list = teacherMapper.selectTeacherPage(page, pageInfo.getCondition());
        pageInfo.setRows(list);
        pageInfo.setTotal(page.getTotal());
	}

	@Override
	public void updateStatus(Teacher teacher) {
		// TODO Auto-generated method stub
		teacherMapper.updateStatus(teacher);
	}

	@Override
	public List<Long> selectDeclareIdListByTeacherId(Long id) {
		// TODO Auto-generated method stub
		return teacherMapper.selectDeclareIdListByTeacherId(id);
	}

	


}
