package com.jiaogai.mapper;

import java.util.List;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.jiaogai.model.Budget;

public interface BudgetMapper extends BaseMapper<Budget>{
	List<Budget> selectByProjectId(long id);
}