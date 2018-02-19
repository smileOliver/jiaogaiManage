package com.jiaogai.mapper;

import java.util.List;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.jiaogai.model.DepartmentType;

public interface DepartmentTypeMapper extends BaseMapper<DepartmentType> {
   List<DepartmentType> selectAll();
   
   DepartmentType selectByTypeId(long id);
}