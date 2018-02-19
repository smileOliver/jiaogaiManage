package com.jiaogai.service;

import com.baomidou.mybatisplus.service.IService;
import com.jiaogai.model.Basics;

public interface IBasicsService extends IService<Basics>{
	Basics selectByProjectId(long id);
}
