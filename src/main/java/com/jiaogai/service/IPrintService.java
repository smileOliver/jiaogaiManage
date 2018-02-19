package com.jiaogai.service;

import com.baomidou.mybatisplus.service.IService;
import com.jiaogai.model.Print;

public interface IPrintService extends IService<Print>{
	Print selectByProjectId(long id);
}
