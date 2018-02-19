package com.jiaogai.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.jiaogai.commons.result.PageInfo;
import com.jiaogai.mapper.NoticeMapper;
import com.jiaogai.model.Notice;
import com.jiaogai.model.Role;
import com.jiaogai.service.INoticeService;
@Service
public class NoticeServiceImpl extends ServiceImpl<NoticeMapper, Notice> implements INoticeService{

	@Autowired
	private NoticeMapper noticeMapper;

	@Override
	public void selectDataGrid(PageInfo pageInfo) {
		// TODO Auto-generated method stub
		 Page<Notice> page = new Page<Notice>(pageInfo.getNowpage(), pageInfo.getSize());
	        
        EntityWrapper<Notice> wrapper = new EntityWrapper<Notice>();
        wrapper.orderBy(pageInfo.getSort(), pageInfo.getOrder().equalsIgnoreCase("ASC"));
        selectPage(page, wrapper);
        
        pageInfo.setRows(page.getRecords());
         //主要是查询出list集合，然后使用pageHelper包里的pageInfo获取总记录数
        pageInfo.setTotal(page.getTotal());
	}

}
