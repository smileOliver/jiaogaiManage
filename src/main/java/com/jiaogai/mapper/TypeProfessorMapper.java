package com.jiaogai.mapper;

import java.util.List;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.jiaogai.model.TypeProfessor;

public interface TypeProfessorMapper extends BaseMapper<TypeProfessor>{
    List<TypeProfessor> selectByTeacherId(long teacherId);
    void deleteTypeProfessor(TypeProfessor typeProfessor);
}
