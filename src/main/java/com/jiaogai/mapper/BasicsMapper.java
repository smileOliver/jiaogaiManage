package com.jiaogai.mapper;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.jiaogai.model.Basics;

public interface BasicsMapper extends BaseMapper<Basics>{
	Basics selectByProjectId(long id);
}