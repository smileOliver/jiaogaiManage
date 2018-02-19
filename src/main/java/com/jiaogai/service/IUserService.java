package com.jiaogai.service;

import java.util.List;

import com.baomidou.mybatisplus.service.IService;
import com.jiaogai.commons.result.PageInfo;
import com.jiaogai.model.User;
import com.jiaogai.model.vo.UserVo;

/**
 *
 * User 表数据服务层接口
 *
 */
public interface IUserService extends IService<User> {

    List<User> selectByLoginName(UserVo userVo);

    void insertByVo(UserVo userVo);

    UserVo selectVoById(Long id);

    void updateByVo(UserVo userVo);

    void updatePwdByUserId(Long userId, String md5Hex);

    void selectDataGrid(PageInfo pageInfo);

    void deleteUserById(Long id);
    
    User selectByLoginName(String loginName);
}