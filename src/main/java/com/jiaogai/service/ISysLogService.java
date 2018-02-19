package com.jiaogai.service;

import com.baomidou.mybatisplus.service.IService;
import com.jiaogai.commons.result.PageInfo;
import com.jiaogai.model.SysLog;

/**
 *
 * SysLog 表数据服务层接口
 *
 */
public interface ISysLogService extends IService<SysLog> {

    void selectDataGrid(PageInfo pageInfo);

}