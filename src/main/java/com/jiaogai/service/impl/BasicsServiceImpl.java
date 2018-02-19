package com.jiaogai.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.jiaogai.mapper.BasicsMapper;
import com.jiaogai.model.Basics;
import com.jiaogai.service.IBasicsService;

@Service
public class BasicsServiceImpl extends ServiceImpl<BasicsMapper, Basics>
	implements IBasicsService{

	@Autowired
	private BasicsMapper basicsMapper;
	@Override
	public Basics selectByProjectId(long id) {
		// TODO Auto-generated method stub
		return basicsMapper.selectByProjectId(id);
	}

}
