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

package com.tdkj.tdcloud.admin.controller;

import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.tdkj.tdcloud.admin.api.entity.PlantMaintain;
import com.tdkj.tdcloud.common.core.util.R;
import com.tdkj.tdcloud.common.log.annotation.SysLog;
import com.tdkj.tdcloud.admin.service.PlantMaintainService;
import com.tdkj.tdcloud.common.security.annotation.Inner;
import org.springframework.security.access.prepost.PreAuthorize;
import com.tdkj.tdcloud.common.excel.annotation.ResponseExcel;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * 维护信息数据
 *
 * @author pigx code generator
 * @date 2023-03-29 14:16:38
 */
@RestController
@RequiredArgsConstructor
@RequestMapping("/plantmaintain" )
//@Api(value = "plantmaintain", tags = "维护信息数据管理")
public class PlantMaintainController {

    private final  PlantMaintainService plantMaintainService;

    /**
     * 分页查询
     * @param page 分页对象
     * @param plantMaintain 维护信息数据
     * @return
     */
//    @ApiOperation(value = "分页查询", notes = "分页查询")
	@Inner(value = false)
    @GetMapping("/page" )
    @PreAuthorize("@pms.hasPermission('admin_plantmaintain_view')" )
    public R getPlantMaintainPage(Page page, PlantMaintain plantMaintain) {
        return R.ok(plantMaintainService.page(page, Wrappers.query(plantMaintain)));
    }


    /**
     * 通过id查询维护信息数据
     * @param id id
     * @return R
     */
//    @ApiOperation(value = "通过id查询", notes = "通过id查询")
	@Inner(value = false)
    @GetMapping("/{id}" )
    @PreAuthorize("@pms.hasPermission('admin_plantmaintain_view')" )
    public R getById(@PathVariable("id" ) Integer id) {
        return R.ok(plantMaintainService.getById(id));
    }

    /**
     * 新增维护信息数据
     * @param plantMaintain 维护信息数据
     * @return R
     */
//    @ApiOperation(value = "新增维护信息数据", notes = "新增维护信息数据")
    @SysLog("新增维护信息数据" )
    @PostMapping
    @PreAuthorize("@pms.hasPermission('admin_plantmaintain_add')" )
    public R save(@RequestBody PlantMaintain plantMaintain) {
        return plantMaintainService.addPlantMaintain(plantMaintain);
    }

    /**
     * 修改维护信息数据
     * @param plantMaintain 维护信息数据
     * @return R
     */
//    @ApiOperation(value = "修改维护信息数据", notes = "修改维护信息数据")
    @SysLog("修改维护信息数据" )
    @PutMapping
    @PreAuthorize("@pms.hasPermission('admin_plantmaintain_edit')" )
    public R updateById(@RequestBody PlantMaintain plantMaintain) {
        return R.ok(plantMaintainService.updateById(plantMaintain));
    }

    /**
     * 通过id删除维护信息数据
     * @param id id
     * @return R
     */
//    @ApiOperation(value = "通过id删除维护信息数据", notes = "通过id删除维护信息数据")
    @SysLog("通过id删除维护信息数据" )
    @DeleteMapping("/{id}" )
    @PreAuthorize("@pms.hasPermission('admin_plantmaintain_del')" )
    public R removeById(@PathVariable Integer id) {
        return R.ok(plantMaintainService.removeById(id));
    }


    /**
     * 导出excel 表格
     * @param plantMaintain 查询条件
     * @return excel 文件流
     */
    @ResponseExcel
    @GetMapping("/export")
    @PreAuthorize("@pms.hasPermission('admin_plantmaintain_export')" )
    public List<PlantMaintain> export(PlantMaintain plantMaintain) {
        return plantMaintainService.list(Wrappers.query(plantMaintain));
    }


    @Inner(value = false)
	@GetMapping("/getPlantMaintainColumnar")
	@ResponseBody
	public R getPlantMaintainColumnar(){

		return plantMaintainService.getPlantMaintainColumnar();
	}

	@GetMapping("/getDictItemList")
	public R getDictItemList(){

		return plantMaintainService.getDictItemList();
	}
}