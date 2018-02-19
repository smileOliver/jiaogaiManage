package com.jiaogai.service;

import com.baomidou.mybatisplus.service.IService;
import com.jiaogai.commons.result.PageInfo;
import com.jiaogai.model.Notice;

public interface INoticeService  extends IService<Notice>{
	
	void selectDataGrid(PageInfo pageInfo);
}
