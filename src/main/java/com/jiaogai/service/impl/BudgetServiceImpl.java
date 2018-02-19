package com.jiaogai.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.jiaogai.mapper.BudgetMapper;
import com.jiaogai.model.Budget;
import com.jiaogai.service.IBudgetService;

@Service
public class BudgetServiceImpl extends ServiceImpl<BudgetMapper, Budget>
	implements IBudgetService{

	@Autowired
	private BudgetMapper budgetMapper;
	@Override
	public List<Budget> selectByProjectId(long id) {
		// TODO Auto-generated method stub
		return budgetMapper.selectByProjectId(id);
	}

}
