package com.jiaogai.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.jiaogai.commons.result.PageInfo;
import com.jiaogai.mapper.DeclarationMapper;
import com.jiaogai.model.Declaration;
import com.jiaogai.service.IDeclarationService;
@Service
public class DeclarationServiceImpl extends ServiceImpl<DeclarationMapper, Declaration>
 implements IDeclarationService{

	@Autowired
	private DeclarationMapper declarationMapper;
	
	@Override
	public void selectDataGrid(PageInfo pageInfo) {
		// TODO Auto-generated method stub
		 Page<Declaration> page = new Page<Declaration>(pageInfo.getNowpage(), pageInfo.getSize());
	        
        EntityWrapper<Declaration> wrapper = new EntityWrapper<Declaration>();
        wrapper.orderBy(pageInfo.getSort(), pageInfo.getOrder().equalsIgnoreCase("ASC"));
        selectPage(page, wrapper);
        
        pageInfo.setRows(page.getRecords());
         //主要是查询出list集合，然后使用pageHelper包里的pageInfo获取总记录数
        pageInfo.setTotal(page.getTotal());
	}

}
