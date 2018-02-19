package com.jiaogai.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;
import com.jiaogai.model.Teacher;

public interface TeacherMapper extends BaseMapper<Teacher>{
	List<Map<String, Object>> selectTeacherPage(Pagination page, Map<String, Object> params);
    void  updateStatus(Teacher teacher);
    List<Long> selectDeclareIdListByTeacherId(@Param("id") Long id);
}