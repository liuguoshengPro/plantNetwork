package com.tdkj.tdcloud.admin.controller;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.*;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.client.j2se.MatrixToImageWriter;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.QRCodeWriter;
import com.tdkj.tdcloud.admin.api.dto.MasterDataDto;
import com.tdkj.tdcloud.admin.api.entity.CheckReason;
import com.tdkj.tdcloud.admin.api.entity.MasterData;
import com.tdkj.tdcloud.admin.api.entity.SysUser;
import com.tdkj.tdcloud.admin.api.vo.MasterDataVO;
import com.tdkj.tdcloud.admin.api.vo.PostExcelVO;
import com.tdkj.tdcloud.admin.service.MasterDataService;
import com.tdkj.tdcloud.admin.util.FreemarkerBase;
import com.tdkj.tdcloud.admin.util.MyPathUitls;
import com.tdkj.tdcloud.common.core.util.R;
import com.tdkj.tdcloud.common.excel.annotation.ResponseExcel;
import com.tdkj.tdcloud.common.security.annotation.Inner;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;


/**
 * 主数据Controller
 * 
 * @author lgs
 * @date 2023-04-03
 */
@RestController
@RequestMapping("/masterData")
public class MasterDataController
{


    @Resource
    private MasterDataService masterDataService;

	@PostMapping("/saveMasterData")
	public R saveMasterData(@RequestBody MasterData masterData){

		return masterDataService.saveMasterData(masterData);

	}

	@PostMapping("/submitMasterData")
	public R submitMasterData(@RequestBody MasterData masterData){

		return masterDataService.submitMasterData(masterData);

	}

	/**
	 * 列表数据
	 * @param masterDataDto
	 * @return
	 */
	@GetMapping("/getMasterDataList")
	public R getMasterDataList(MasterDataDto masterDataDto){

		return masterDataService.getMasterDataList(masterDataDto);

	}

	/**
	 * 查看
	 * @param id
	 * @return
	 */
	@GetMapping("/getMasterDataInfo")
	public R getMasterDataInfo(Long id){

		return masterDataService.getMasterDataInfo(id);

	}


	/**
	 * 导出excel 表格
	 * @return excel 文件流
	 */
	@Inner(value = false)
	@ResponseExcel
	@GetMapping("/exportMasterData")
//	@PreAuthorize("@pms.hasPermission('sys_post_export')")
	public List<MasterDataVO> exportMasterData(MasterDataDto masterDataDto) {
		return masterDataService.exportMasterData(masterDataDto);
	}


	@GetMapping("/exportWordMasterData")
//	@PreAuthorize("@pms.hasPermission('sys_post_export')")
	public void exportWordMasterData(String applyType,Long menuTypeId, HttpServletResponse response) throws IOException {

		masterDataService.exportWordMasterData(applyType,menuTypeId,response);
	}

	@PostMapping("/addCheckReason")
//	@PreAuthorize("@pms.hasPermission('sys_post_export')")
	public R addCheckReason(@RequestBody CheckReason checkReason){

		return masterDataService.addCheckReason(checkReason);
	}

	@GetMapping("/getFileList")
	public R getFileList(Long masterId,String itemType) {
		return masterDataService.getFileList(masterId,itemType);
	}

	@Inner(value = false)
	@GetMapping("/updateMasterDataAllocation")
	public R updateMasterDataAllocationStatus(Long masterId) {
		return masterDataService.updateMasterDataAllocationStatus(masterId);
	}

}
