package com.tdkj.tdcloud.admin.controller;

import java.util.List;

import com.tdkj.tdcloud.admin.api.dto.InformationSystemDTO;
import com.tdkj.tdcloud.admin.api.entity.InformationSystem;
import com.tdkj.tdcloud.admin.api.vo.InformationSystemVO;
import com.tdkj.tdcloud.admin.service.InformationSystemService;
import com.tdkj.tdcloud.common.core.util.R;
import com.tdkj.tdcloud.common.excel.annotation.ResponseExcel;
import com.tdkj.tdcloud.common.security.annotation.Inner;
import lombok.extern.java.Log;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;


/**
 * 信息系统名录Controller
 * 
 * @author lgs
 * @date 2023-04-12
 */
@RestController
@RequestMapping("/informationSystem")
public class InformationSystemController
{

    @Resource
    private InformationSystemService informationSystemService;

    /**
	 * 信息系统添加
     */
    @PostMapping("/saveInformationSystem")
	public R saveInformationSystem(@RequestBody InformationSystem informationSystem){

    	return informationSystemService.saveInformationSystem(informationSystem);
	}

	/**
	 * 列表数据
	 * @param informationSystem
	 * @return
	 */
	@GetMapping("/getInformationSystemList")
	public R getInformationSystemList(InformationSystemDTO informationSystem){

		return informationSystemService.getInformationSystemList(informationSystem);
	}

	/**
	 * 查看详情
	 * @param id
	 * @return
	 */
	@Inner(value = false)
	@GetMapping("/getInformationSystemInfo")
	public R getInformationSystemInfo(Long id){

		return informationSystemService.getInformationSystemInfo(id);
	}

	/**
	 * 删除
	 * @param idList
	 * @return
	 */
	@DeleteMapping("/deleteInformationSystemInfo")
	public R deleteInformationSystemInfo(@RequestBody List<Integer> idList){

		return informationSystemService.deleteInformationSystemInfo(idList);
	}


	/**
	 * 导出
	 * @param informationSystemDTO
	 * @return
	 */
	@Inner(value = false)
	@ResponseExcel
	@GetMapping("/getExportInformationSystem")
	public List<InformationSystemVO> getExportInformationSystem(InformationSystemDTO informationSystemDTO){

		return informationSystemService.getExportInformationSystem(informationSystemDTO);
	}

}
