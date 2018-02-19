package com.jiaogai.service;

import com.baomidou.mybatisplus.service.IService;
import com.jiaogai.commons.result.PageInfo;
import com.jiaogai.model.Faction;

public interface IFactionService extends IService<Faction>{
	void selectDataGrid(PageInfo pageInfo);
}
