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

import com.tdkj.tdcloud.admin.api.entity.SysDeptRelation;
import com.tdkj.tdcloud.common.data.datascope.TdcloudBaseMapper;
import org.apache.ibatis.annotations.Mapper;

/**
 * <p>
 * Mapper 接口
 * </p>
 *
 * @author tdcloud
 * @since 2018-02-12
 */
@Mapper
public interface SysDeptRelationMapper extends TdcloudBaseMapper<SysDeptRelation> {

	/**
	 * 删除部门 > 删除所有关联此部门子节点的闭包关系
	 * @param id 部门ID
	 */
	void deleteDeptRelationsByDeptId(Long id);

	/**
	 * 删除节点数据
	 * @param deptRelation 关系节点
	 */
	void deleteDeptRelations(SysDeptRelation deptRelation);

	/**
	 * 新增节点数据
	 * @param deptRelation 关系节点
	 */
	void insertDeptRelations(SysDeptRelation deptRelation);

}
