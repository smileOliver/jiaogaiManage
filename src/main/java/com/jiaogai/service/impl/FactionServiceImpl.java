package com.jiaogai.service.impl;

import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.jiaogai.commons.result.PageInfo;
import com.jiaogai.mapper.FactionMapper;
import com.jiaogai.model.Faction;
import com.jiaogai.service.IFactionService;

@Service
public class FactionServiceImpl extends ServiceImpl<FactionMapper, Faction> implements IFactionService{

	@Override
	public void selectDataGrid(PageInfo pageInfo) {
		// TODO Auto-generated method stub
		 Page<Faction> page = new Page<Faction>(pageInfo.getNowpage(), pageInfo.getSize());
	        
        EntityWrapper<Faction> wrapper = new EntityWrapper<Faction>();
        wrapper.orderBy(pageInfo.getSort(), pageInfo.getOrder().equalsIgnoreCase("ASC"));
        selectPage(page, wrapper);
        
        pageInfo.setRows(page.getRecords());
         //主要是查询出list集合，然后使用pageHelper包里的pageInfo获取总记录数
        pageInfo.setTotal(page.getTotal());
	}

}
