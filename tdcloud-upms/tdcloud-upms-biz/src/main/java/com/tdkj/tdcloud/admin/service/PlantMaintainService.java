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

package com.tdkj.tdcloud.admin.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.tdkj.tdcloud.admin.api.dto.PlantMaintainDTO;
import com.tdkj.tdcloud.admin.api.entity.PlantMaintain;
import com.tdkj.tdcloud.admin.api.vo.PlantMaintainVO;
import com.tdkj.tdcloud.admin.api.vo.PostExcelVO;
import com.tdkj.tdcloud.common.core.util.R;
import org.springframework.validation.BindingResult;

import java.util.List;

/**
 * 维护信息数据
 *
 * @author  code generator
 * @date 2023-03-29 14:16:38
 */
public interface PlantMaintainService extends IService<PlantMaintain> {

	public R getPlantMaintainColumnar();
	public R deletePlantMaintain(List<Long> idList);
	public R getDictItemList();
	public R addPlantMaintain(PlantMaintain plantMaintain);
	public R importPlantMaintain(List<PlantMaintainVO> excelVOList, BindingResult bindingResult) throws Exception;
	public List<PlantMaintainVO> exportPlantMaintain(PlantMaintainDTO plantMaintainDTO);

	R getPlantMaintainList(Page page, PlantMaintainDTO plantMaintainDTO);
}
