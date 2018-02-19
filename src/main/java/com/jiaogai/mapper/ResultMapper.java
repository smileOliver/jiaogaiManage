package com.jiaogai.mapper;

import java.util.List;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.jiaogai.model.Result;

public interface ResultMapper extends BaseMapper<Result>{
    List<Result> selectByTeacherId(long id);
}