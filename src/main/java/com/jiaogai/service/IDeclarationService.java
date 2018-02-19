package com.jiaogai.service;

import com.baomidou.mybatisplus.service.IService;
import com.jiaogai.commons.result.PageInfo;
import com.jiaogai.model.Declaration;

public interface IDeclarationService  extends IService<Declaration>{
	void selectDataGrid(PageInfo pageInfo);
}
