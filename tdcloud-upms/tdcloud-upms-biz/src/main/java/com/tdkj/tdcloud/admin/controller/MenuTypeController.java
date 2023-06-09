package com.tdkj.tdcloud.admin.controller;

import java.util.List;

import com.tdkj.tdcloud.admin.api.dto.DomainNameApplyDTO;
import com.tdkj.tdcloud.admin.api.dto.IpGradingReportDTO;
import com.tdkj.tdcloud.admin.api.dto.MenuTypeDto;
import com.tdkj.tdcloud.admin.api.entity.ChargeStandard;
import com.tdkj.tdcloud.admin.api.entity.IpAgreement;
import com.tdkj.tdcloud.admin.api.entity.MenuType;
import com.tdkj.tdcloud.admin.api.entity.UseDescription;
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

	/**
	 * ip协议书保存
	 * @param ipAgreement
	 * @return
	 */
	@PostMapping("/saveIpAgreement")
	public R saveIpAgreement(@RequestBody IpAgreement ipAgreement){
		return menuTypeService.saveIpAgreement(ipAgreement);
	}

	/**
	 * DNS域名保存
	 * @param
	 * @return
	 */
	@PostMapping("/saveMenuApplyDns")
	public R saveMenuApplyDns(@RequestBody MenuTypeDto menuTypeDto){
		return menuTypeService.saveMenuApplyDns(menuTypeDto);
	}

	@GetMapping("/deleteMenuApplyNetwork")
	public R deleteMenuApplyNetwork(Long id,String resourceType){
		return menuTypeService.deleteMenuApplyNetwork(id,resourceType);
	}


	@GetMapping("/getSysDeptList")
	public R getSysDeptList(){
		return menuTypeService.getSysDeptList();
	}


	/**
	 * 添加使用说明
	 * @param useDescription
	 * @return
	 */
	@PostMapping("/saveUseDescription")
	public R saveUseDescription(@RequestBody UseDescription useDescription){
		return menuTypeService.saveUseDescription(useDescription);
	}

	@GetMapping("/getUseDescription")
	public R getUseDescription(String itemType){
		return menuTypeService.getUseDescription(itemType);
	}


	/**
	 * 查看收费列表
	 * @return
	 */
	@GetMapping("/selectChargeStandardList")
	public R selectChargeStandardList(String itemType){
		return menuTypeService.selectChargeStandardList(itemType);
	}

	/**
	 * 修改
	 * @param chargeStandard
	 * @return
	 */
	@PostMapping("/updateChargeStandard")
	public R updateChargeStandard(@RequestBody ChargeStandard chargeStandard){
		return menuTypeService.updateChargeStandard(chargeStandard);
	}

	@Inner(value = false)
	@GetMapping("/getChargeStandardCalculate")
	public R getChargeStandardCalculate(MenuTypeDto menuTypeDto){
		return menuTypeService.getChargeStandardCalculate(menuTypeDto);
	}

	/**
	 * 添加
	 * @param chargeStandard
	 * @return
	 */
	@PostMapping("/addChargeStandard")
	public R addChargeStandard(@RequestBody ChargeStandard chargeStandard){
		return menuTypeService.addChargeStandard(chargeStandard);
	}

	@GetMapping("/deleteChargeStandard")
	public R deleteChargeStandard(Long id){
		return menuTypeService.deleteChargeStandard(id);
	}
}
