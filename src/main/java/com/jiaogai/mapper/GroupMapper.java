package com.jiaogai.mapper;

import java.util.List;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.jiaogai.model.Group;

public interface GroupMapper extends BaseMapper<Group>{
	List<Group> selectByProjectId(long id);
}