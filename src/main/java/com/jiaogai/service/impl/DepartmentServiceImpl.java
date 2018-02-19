package com.jiaogai.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.jiaogai.commons.result.PageInfo;
import com.jiaogai.commons.result.Tree;
import com.jiaogai.mapper.DepartmentMapper;
import com.jiaogai.mapper.DepartmentTypeMapper;
import com.jiaogai.model.Department;
import com.jiaogai.model.DepartmentType;
import com.jiaogai.service.IDepartmentService;

@Service
public class DepartmentServiceImpl extends ServiceImpl<DepartmentMapper, Department>
 implements IDepartmentService{

	@Autowired
	private DepartmentMapper departmentMapper;
	@Autowired
	private DepartmentTypeMapper typeMapper;
	
	@Override
	public void selectDataGrid(PageInfo pageInfo) {
		// TODO Auto-generated method stub
		 Page<Department> page = new Page<Department>(pageInfo.getNowpage(), pageInfo.getSize());
	        
        EntityWrapper<Department> wrapper = new EntityWrapper<Department>();
        wrapper.orderBy(pageInfo.getSort(), pageInfo.getOrder().equalsIgnoreCase("ASC"));
        selectPage(page, wrapper);
        
        pageInfo.setRows(page.getRecords());
         //主要是查询出list集合，然后使用pageHelper包里的pageInfo获取总记录数
        pageInfo.setTotal(page.getTotal());
	}
	@Override
	public Object selectTree() {
		// TODO Auto-generated method stub
		List<Tree> trees=new ArrayList<Tree>();
		List<DepartmentType> departmentTypes=typeMapper.selectAll();
		for (DepartmentType departmentType : departmentTypes) {
			Tree tree = new Tree();
			tree.setId(departmentType.getId());
			tree.setText(departmentType.getTypeName());
			trees.add(tree);
		}
		return trees;
	}
	@Override
	public DepartmentType selectByTypeId(long  id) {
		// TODO Auto-generated method stub
		return typeMapper.selectById(id);
	}
	@Override
	public List<DepartmentType> selectAllType() {
		// TODO Auto-generated method stub
		return typeMapper.selectAll();
	}
	@Override
	public List<Department> selectCollege() {
		// TODO Auto-generated method stub
		return departmentMapper.selectCollege();
	}
	

}
