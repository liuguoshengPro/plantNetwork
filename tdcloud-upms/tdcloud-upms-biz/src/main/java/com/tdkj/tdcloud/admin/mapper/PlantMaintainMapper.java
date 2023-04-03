/*
 *    Copyright (c) 2018-2025, tdcloud All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 * Redistributions of source code must retain the above copyright notice,
 * this list of conditions and the following disclaimer.
 * Redistributions in binary form must reproduce the above copyright
 * notice, this list of conditions and the following disclaimer in the
 * documentation and/or other materials provided with the distribution.
 * Neither the name of the pig4cloud.com developer nor the names of its
 * contributors may be used to endorse or promote products derived from
 * this software without specific prior written permission.
 * Author: tdcloud
 */

package com.tdkj.tdcloud.admin.mapper;

import com.tdkj.tdcloud.admin.api.entity.DictItem;
import com.tdkj.tdcloud.admin.api.entity.PlantMaintain;
import com.tdkj.tdcloud.admin.api.entity.PlantMaintainChart;
import com.tdkj.tdcloud.common.data.datascope.TdcloudBaseMapper;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 维护信息数据
 *
 * @author pigx code generator
 * @date 2023-03-29 14:16:38
 */
@Mapper
public interface PlantMaintainMapper extends TdcloudBaseMapper<PlantMaintain> {

	/**
	 * 查询维护信息数据
	 *
	 * @param id 维护信息数据主键
	 * @return 维护信息数据
	 */
	public PlantMaintain selectPlantMaintainById(Long id);
	public List<DictItem> selectDictItemList(@Param("dataType")String dataType);

	public PlantMaintainChart selectPmThisYear();
	public PlantMaintainChart selectPmYear(Integer figure);
	public int selectPmTotal();
	public int selectMaintainProblemTotal(String maintainProblem);

	/**
	 * 查询维护信息数据列表
	 *
	 * @param plantMaintain 维护信息数据
	 * @return 维护信息数据集合
	 */
	public List<PlantMaintain> selectPlantMaintainList(PlantMaintain plantMaintain);
	public Integer selectPlantMaintainListTotal(PlantMaintain plantMaintain);

	/**
	 * 新增维护信息数据
	 *
	 * @param plantMaintain 维护信息数据
	 * @return 结果
	 */
	public int insertPlantMaintain(PlantMaintain plantMaintain);

	/**
	 * 修改维护信息数据
	 *
	 * @param plantMaintain 维护信息数据
	 * @return 结果
	 */
	public int updatePlantMaintain(PlantMaintain plantMaintain);

	/**
	 * 删除维护信息数据
	 *
	 * @param id 维护信息数据主键
	 * @return 结果
	 */
	public int deletePlantMaintainById(Long id);

	/**
	 * 批量删除维护信息数据
	 *
	 * @param ids 需要删除的数据主键集合
	 * @return 结果
	 */
	public int deletePlantMaintainByIds(String[] ids);
}
