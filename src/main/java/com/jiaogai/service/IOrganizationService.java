package com.jiaogai.service;

import java.util.List;

import com.baomidou.mybatisplus.service.IService;
import com.jiaogai.commons.result.Tree;
import com.jiaogai.model.Organization;

/**
 *
 * Organization 表数据服务层接口
 *
 */
public interface IOrganizationService extends IService<Organization> {

    List<Tree> selectTree();

    List<Organization> selectTreeGrid();

}