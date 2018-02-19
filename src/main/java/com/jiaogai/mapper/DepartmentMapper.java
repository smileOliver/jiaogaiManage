package com.jiaogai.mapper;

import java.util.List;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.jiaogai.model.Department;

public interface DepartmentMapper extends BaseMapper<Department>{
	/**
	 * 查询全部学院
	 * @return
	 */
   List<Department> selectCollege();
}