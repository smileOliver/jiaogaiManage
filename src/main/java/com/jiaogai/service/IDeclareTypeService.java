package com.jiaogai.service;

import java.util.List;

import com.baomidou.mybatisplus.service.IService;
import com.jiaogai.commons.result.Tree;
import com.jiaogai.model.DeclareType;

public interface IDeclareTypeService extends IService<DeclareType> {

    List<Tree> selectAllTree();
    
    void updateTypeProfessor(Long id, String typeIds);
}
