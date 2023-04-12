/*
 *
 *      Copyright (c) 2018-2025, tdcloud All rights reserved.
 *
 *  Redistribution and use in source and binary forms, with or without
 *  modification, are permitted provided that the following conditions are met:
 *
 * Redistributions of source code must retain the above copyright notice,
 *  this list of conditions and the following disclaimer.
 *  Redistributions in binary form must reproduce the above copyright
 *  notice, this list of conditions and the following disclaimer in the
 *  documentation and/or other materials provided with the distribution.
 *  Neither the name of the pig4cloud.com developer nor the names of its
 *  contributors may be used to endorse or promote products derived from
 *  this software without specific prior written permission.
 *  Author: tdcloud
 *
 */

package com.tdkj.tdcloud.admin.mapper;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.tdkj.tdcloud.admin.api.dto.UserDTO;
import com.tdkj.tdcloud.admin.api.entity.SysUser;
import com.tdkj.tdcloud.admin.api.vo.UserVO;
import com.tdkj.tdcloud.common.data.datascope.DataScope;
import com.tdkj.tdcloud.common.data.datascope.TdcloudBaseMapper;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * <p>
 * 用户表 Mapper 接口
 * </p>
 *
 * @author tdcloud
 * @since 2017-10-29
 */
@Mapper
public interface SysUserMapper extends TdcloudBaseMapper<SysUser> {

	/**
	 * 通过用户名查询用户信息（含有角色信息）
	 * @param username 用户名
	 * @return userVo
	 */
	UserVO getUserVoByUsername(String username);

	/**
	 * 分页查询用户信息（含角色）
	 * @param page 分页
	 * @param userDTO 查询参数
	 * @param dataScope
	 * @return list
	 */
	IPage<UserVO> getUserVosPage(Page page, @Param("query") UserDTO userDTO, DataScope dataScope);

	/**
	 * 通过ID查询用户信息
	 * @param id 用户ID
	 * @return userVo
	 */
	UserVO getUserVoById(Long id);
	int getUserVoByEmail(String username);

	/**
	 * 查询用户列表
	 * @param userDTO 查询条件
	 * @param dataScope 数据权限声明
	 * @return
	 */
	List<UserVO> selectVoListByScope(@Param("query") UserDTO userDTO, DataScope dataScope);

}
