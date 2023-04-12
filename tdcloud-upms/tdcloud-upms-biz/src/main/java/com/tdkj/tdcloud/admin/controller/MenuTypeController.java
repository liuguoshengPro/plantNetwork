package com.tdkj.tdcloud.admin.controller;

import java.util.List;

import com.tdkj.tdcloud.admin.api.dto.IpGradingReportDTO;
import com.tdkj.tdcloud.admin.api.dto.MenuTypeDto;
import com.tdkj.tdcloud.admin.api.entity.MenuType;
import com.tdkj.tdcloud.admin.service.MenuTypeService;
import com.tdkj.tdcloud.common.core.util.R;
import com.tdkj.tdcloud.common.security.annotation.Inner;
import lombok.extern.java.Log;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

/**
 * 主数据下两张数据Controller
 * 
 * @author lgs
 * @date 2023-04-04
 */
@RestController
@RequestMapping("/menuType")
public class MenuTypeController
{

    @Resource
    private MenuTypeService menuTypeService;

	/**
	 * 安全责任书保存
	 * @param menuTypeDto
	 * @return
	 */
	@PostMapping("/saveMenuApplyNetwork")
    public R saveMenuApplyNetwork(@RequestBody MenuTypeDto menuTypeDto){
    	return menuTypeService.saveMenuApplyNetwork(menuTypeDto);
	}

	/**
	 * 协议书保存
	 * @param menuTypeDto
	 * @return
	 */
	@PostMapping("/saveMenuApplyAgreement")
	public R saveMenuApplyAgreement(@RequestBody MenuTypeDto menuTypeDto){
		return menuTypeService.saveMenuApplyAgreement(menuTypeDto);
	}

	/**
	 * ip保存
	 * @param ipGradingReportDTO
	 * @return
	 */
	@PostMapping("/saveMenuApplyIp")
	public R saveMenuApplyIp(@RequestBody IpGradingReportDTO ipGradingReportDTO){
		return menuTypeService.saveMenuApplyIp(ipGradingReportDTO);
	}

	@GetMapping("/deleteMenuApplyNetwork")
	public R deleteMenuApplyNetwork(Long id,String resourceType){
		return menuTypeService.deleteMenuApplyNetwork(id,resourceType);
	}

}
