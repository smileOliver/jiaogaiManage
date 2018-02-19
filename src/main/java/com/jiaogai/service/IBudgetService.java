package com.jiaogai.service;

import java.util.List;

import com.baomidou.mybatisplus.service.IService;
import com.jiaogai.model.Budget;

public interface IBudgetService extends IService<Budget>{
	List<Budget> selectByProjectId(long id);
}
