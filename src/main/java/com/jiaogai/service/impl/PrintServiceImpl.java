package com.jiaogai.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.jiaogai.mapper.PrintMapper;
import com.jiaogai.model.Print;
import com.jiaogai.service.IPrintService;

@Service
public class PrintServiceImpl extends ServiceImpl<PrintMapper, Print>
   implements IPrintService{

	@Autowired
	private PrintMapper printMapper;
	@Override
	public Print selectByProjectId(long id) {
		// TODO Auto-generated method stub
		return printMapper.selectByProjectId(id);
	}

}
