package com.jiaogai.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.jiaogai.mapper.ResultMapper;
import com.jiaogai.model.Result;
import com.jiaogai.service.IResultService;

@Service
public class ResultServiceImpl  extends ServiceImpl<ResultMapper, Result>
  implements IResultService{

	@Autowired
	private ResultMapper resultMapper;
	@Override
	public List<Result> selectByTeacherId(long id) {
		// TODO Auto-generated method stub
		return resultMapper.selectByTeacherId(id);
	}

}
