package com.jiaogai.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.jiaogai.mapper.GroupMapper;
import com.jiaogai.model.Group;
import com.jiaogai.service.IGroupService;

@Service
public class GroupServiceImpl extends ServiceImpl<GroupMapper, Group>
  implements IGroupService{
	@Autowired
	private GroupMapper groupMapper;

	@Override
	public List<Group> selectByProjectId(long id) {
		// TODO Auto-generated method stub
		return groupMapper.selectByProjectId(id);
	}

}
