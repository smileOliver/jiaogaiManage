package com.jiaogai.mapper;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.jiaogai.model.Print;

public interface PrintMapper extends BaseMapper<Print>{
	Print selectByProjectId(long id);
}