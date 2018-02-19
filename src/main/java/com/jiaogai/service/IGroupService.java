package com.jiaogai.service;

import java.util.List;

import com.baomidou.mybatisplus.service.IService;
import com.jiaogai.model.Group;

public interface IGroupService extends IService<Group>{
	List<Group> selectByProjectId(long id);
}
