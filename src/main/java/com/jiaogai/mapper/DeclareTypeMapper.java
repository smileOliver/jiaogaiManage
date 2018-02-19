package com.jiaogai.mapper;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.jiaogai.model.DeclareType;

public interface DeclareTypeMapper extends BaseMapper<DeclareType>{
	
	
	List<DeclareType> selectAllTypes();
}