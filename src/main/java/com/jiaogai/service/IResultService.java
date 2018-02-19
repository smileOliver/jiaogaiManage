package com.jiaogai.service;

import java.util.List;

import com.baomidou.mybatisplus.service.IService;
import com.jiaogai.model.Result;
public interface IResultService extends IService<Result>{
	List<Result> selectByTeacherId(long id);
}
