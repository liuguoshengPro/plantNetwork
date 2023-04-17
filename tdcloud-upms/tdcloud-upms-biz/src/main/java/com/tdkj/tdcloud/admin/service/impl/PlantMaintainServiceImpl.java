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
package com.tdkj.tdcloud.admin.service.impl;

import cn.hutool.core.collection.CollUtil;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.tdkj.tdcloud.admin.api.dto.PlantMaintainDTO;
import com.tdkj.tdcloud.admin.api.entity.DictItem;
import com.tdkj.tdcloud.admin.api.entity.PlantMaintain;
import com.tdkj.tdcloud.admin.api.entity.PlantMaintainChart;
import com.tdkj.tdcloud.admin.api.entity.SysPost;
import com.tdkj.tdcloud.admin.api.vo.PlantMaintainVO;
import com.tdkj.tdcloud.admin.api.vo.PostExcelVO;
import com.tdkj.tdcloud.admin.mapper.PlantMaintainMapper;
import com.tdkj.tdcloud.admin.service.PlantMaintainService;
import com.tdkj.tdcloud.common.core.exception.ErrorCodes;
import com.tdkj.tdcloud.common.core.util.MsgUtils;
import com.tdkj.tdcloud.common.core.util.R;
import com.tdkj.tdcloud.common.excel.vo.ErrorMessage;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import javax.annotation.Resource;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * 维护信息数据
 *
 * @author pigx code generator
 * @date 2023-03-29 14:16:38
 */
@Service
public class PlantMaintainServiceImpl extends ServiceImpl<PlantMaintainMapper, PlantMaintain> implements PlantMaintainService {

	@Resource
	private PlantMaintainMapper plantMaintainMapper;

	@Resource
	private RedisTemplate redisTemplate;

	@Override
	public R getPlantMaintainColumnar() {
		List<PlantMaintainChart> year = new ArrayList<>();
		int total = 0;

		Map<String,Object> mapTotal = new HashMap<>();
		Map<String,Object> map = new HashMap<>();
		String systemTime = new SimpleDateFormat("yyyy").format(new Date(System.currentTimeMillis()));
		//今年的数据
		PlantMaintainChart thisYear = plantMaintainMapper.selectPmThisYear();
		if (thisYear==null){
			PlantMaintainChart thisYearNew = new PlantMaintainChart();

			thisYearNew.setYearData(systemTime);
			thisYearNew.setNum(0);
			year.add(thisYearNew);
//            total = total + thisYearNew.getNum();
			total = total + thisYearNew.getNum();
		}else {
			year.add(thisYear);
			total = total + thisYear.getNum();
		}
		//过去几年的数据
		PlantMaintainChart year1 = plantMaintainMapper.selectPmYear(1);
		if (year1==null){
			PlantMaintainChart plantMaintainChart1 = new PlantMaintainChart();
			System.out.println(systemTime);
			plantMaintainChart1.setYearData(String.valueOf(Integer.valueOf(systemTime) - 1));
			plantMaintainChart1.setNum(0);
			year.add(plantMaintainChart1);
			total = total + plantMaintainChart1.getNum();
		}else {
			year.add(year1);
			total = total + year1.getNum();
		}
		PlantMaintainChart year2 = plantMaintainMapper.selectPmYear(2);
		if (year2==null){
			PlantMaintainChart plantMaintainChart2 = new PlantMaintainChart();
			plantMaintainChart2.setYearData(String.valueOf(Integer.valueOf(systemTime) -2));
			plantMaintainChart2.setNum(0);
			year.add(plantMaintainChart2);
			total = total + plantMaintainChart2.getNum();
		}else {
			year.add(year2);
			total = total + year2.getNum();
		}
		PlantMaintainChart year3 = plantMaintainMapper.selectPmYear(3);
		if (year3==null){
			PlantMaintainChart plantMaintainChart3 = new PlantMaintainChart();
			plantMaintainChart3.setYearData(String.valueOf(Integer.valueOf(systemTime) -3));
			plantMaintainChart3.setNum(0);
			year.add(plantMaintainChart3);
			total = total + plantMaintainChart3.getNum();
		}else {
			year.add(year3);
			total = total + year3.getNum();
		}
		PlantMaintainChart year4 = plantMaintainMapper.selectPmYear(4);
		if (year4==null){
			PlantMaintainChart plantMaintainChart4 = new PlantMaintainChart();
			plantMaintainChart4.setYearData(String.valueOf(Integer.valueOf(systemTime) -4));
			plantMaintainChart4.setNum(0);
			year.add(plantMaintainChart4);
			total = total + plantMaintainChart4.getNum();
		}else {
			year.add(year4);
			total = total + year4.getNum();
		}
		PlantMaintainChart year5 = plantMaintainMapper.selectPmYear(5);
		if (year5==null){
			PlantMaintainChart plantMaintainChart5 = new PlantMaintainChart();
			plantMaintainChart5.setYearData(String.valueOf(Integer.valueOf(systemTime) -5));
			plantMaintainChart5.setNum(0);
			year.add(plantMaintainChart5);
			total = total + plantMaintainChart5.getNum();
		}else {
			year.add(year5);
			total = total + year5.getNum();
		}
		PlantMaintainChart year6 = plantMaintainMapper.selectPmYear(6);
		if (year6==null){
			PlantMaintainChart plantMaintainChart6 = new PlantMaintainChart();
			plantMaintainChart6.setYearData(String.valueOf(Integer.valueOf(systemTime) -6));
			plantMaintainChart6.setNum(0);
			year.add(plantMaintainChart6);
			total = total + plantMaintainChart6.getNum();
		}else {
			year.add(year6);
			total = total + year6.getNum();
		}
		PlantMaintainChart year7 = plantMaintainMapper.selectPmYear(7);
		if (year7==null){
			PlantMaintainChart plantMaintainChart7 = new PlantMaintainChart();
			plantMaintainChart7.setYearData(String.valueOf(Integer.valueOf(systemTime) -7));
			plantMaintainChart7.setNum(0);
			year.add(plantMaintainChart7);
			total = total + plantMaintainChart7.getNum();
		}else {
			year.add(year7);
			total = total + year7.getNum();
		}
		PlantMaintainChart year8 = plantMaintainMapper.selectPmYear(8);
		if (year8==null){
			PlantMaintainChart plantMaintainChart8 = new PlantMaintainChart();
			plantMaintainChart8.setYearData(String.valueOf(Integer.valueOf(systemTime) -8));
			plantMaintainChart8.setNum(0);
			year.add(plantMaintainChart8);
			total = total + plantMaintainChart8.getNum();
		}else {
			year.add(year8);
			total = total + year8.getNum();
		}
		PlantMaintainChart year9 = plantMaintainMapper.selectPmYear(9);
		if (year9==null){
			PlantMaintainChart plantMaintainChart9 = new PlantMaintainChart();
			plantMaintainChart9.setYearData(String.valueOf(Integer.valueOf(systemTime) -9));
			plantMaintainChart9.setNum(0);
			year.add(plantMaintainChart9);
			total = total + plantMaintainChart9.getNum();
		}else {
			year.add(year9);
			total = total + year9.getNum();
		}
		PlantMaintainChart year10 = plantMaintainMapper.selectPmYear(10);
		if (year10==null){
			PlantMaintainChart plantMaintainChart10 = new PlantMaintainChart();
			plantMaintainChart10.setYearData(String.valueOf(Integer.valueOf(systemTime) -10));
			plantMaintainChart10.setNum(0);
			year.add(plantMaintainChart10);
			total = total + plantMaintainChart10.getNum();
		}else {
			year.add(year10);
			total = total + year10.getNum();
		}
		PlantMaintainChart year11 = plantMaintainMapper.selectPmYear(11);
		if (year11==null){
			PlantMaintainChart plantMaintainChart11 = new PlantMaintainChart();
			plantMaintainChart11.setYearData(String.valueOf(Integer.valueOf(systemTime) -11));
			plantMaintainChart11.setNum(0);
			year.add(plantMaintainChart11);
			total = total + plantMaintainChart11.getNum();
		}else {
			year.add(year11);
			total = total + year11.getNum();
		}
		PlantMaintainChart year12 = plantMaintainMapper.selectPmYear(12);
		if (year12==null){
			PlantMaintainChart plantMaintainChart12 = new PlantMaintainChart();
			plantMaintainChart12.setYearData(String.valueOf(Integer.valueOf(systemTime) -12));
			plantMaintainChart12.setNum(0);
			year.add(plantMaintainChart12);
			total = total + plantMaintainChart12.getNum();
		}else {
			year.add(year12);
			total = total + year12.getNum();
		}
		List<DictItem> dictItemList = plantMaintainMapper.selectDictItemList("maintain_type");
		if (dictItemList.size()>0){
			for (DictItem dictItem :dictItemList){
				int i = plantMaintainMapper.selectMaintainProblemTotal(dictItem.getValue());
				dictItem.setNum(i);
			}
		}
//		int i1 = plantMaintainMapper.selectMaintainProblemTotal("1");
//		int i2 = plantMaintainMapper.selectMaintainProblemTotal("2");
//		int i3 = plantMaintainMapper.selectMaintainProblemTotal("3");
//		int i4 = plantMaintainMapper.selectMaintainProblemTotal("4");
//		int i5 = plantMaintainMapper.selectMaintainProblemTotal("5");
//		int i6 = plantMaintainMapper.selectMaintainProblemTotal("6");
//		int i7 = plantMaintainMapper.selectMaintainProblemTotal("7");
//		int i8 = plantMaintainMapper.selectMaintainProblemTotal("8");
//		int i0 = plantMaintainMapper.selectMaintainProblemTotal("0");
//		map.put("networkFault",i1);
//		map.put("virusTrojan",i2);
//		map.put("fileLoss",i3);
//		map.put("mailProblem",i4);
//		map.put("officeSoftware",i5);
//		map.put("softwarePiracy",i6);
//		map.put("arpProblem",i7);
//		map.put("hardwareProblem",i8);
//		map.put("otherProblem",i0);

		mapTotal.put("year",year);
		mapTotal.put("total",total);
		mapTotal.put("maintainProblem",dictItemList);
		return R.ok(mapTotal,"成功");
	}

	@Override
	public R getDictItemList() {
		Map<String,Object> dictData = new HashMap<>();
		Map<String,Object> redisOpList = (Map<String, Object>) redisTemplate.opsForValue().get("maintainTypeList");

		if (redisOpList==null) {
			List<DictItem> maintainType = plantMaintainMapper.selectDictItemList("maintain_type");
			dictData.put("maintainTypeOP",maintainType);

			redisTemplate.opsForValue().set("maintainTypeList",dictData);
			return R.ok(dictData,"成功");
		}
		return R.ok(redisOpList,"成功");

	}

	@Override
	public R addPlantMaintain(PlantMaintain plantMaintain) {
		return R.ok(plantMaintainMapper.insertPlantMaintain(plantMaintain));
	}

	@Override
	public R importPlantMaintain(List<PlantMaintainVO> excelVOList, BindingResult bindingResult) {
		// 通用校验获取失败的数据
		List<ErrorMessage> errorMessageList = (List<ErrorMessage>) bindingResult.getTarget();


		// 执行数据插入操作 组装
		for (PlantMaintainVO excel : excelVOList) {
			excel.setCreateTime(new Date());
			plantMaintainMapper.insertPlantMaintainVO(excel);

		}
		if (CollUtil.isNotEmpty(errorMessageList)) {
			return R.failed(errorMessageList);
		}
		return R.ok();
	}

	@Override
	public List<PlantMaintainVO> exportPlantMaintain(PlantMaintainDTO plantMaintainDTO) {

		List<PlantMaintainVO> plantMaintainVOList = plantMaintainMapper.selectExportPlantMaintain(plantMaintainDTO);
		if (plantMaintainVOList.size()>0){
			for (PlantMaintainVO pm:plantMaintainVOList){
				String itemLabel = plantMaintainMapper.selectDictItemLabel(pm.getMaintainProblem());
				pm.setMaintainProblem(itemLabel);
			}
		}
		if (plantMaintainVOList.size()==0){
			return PlantMaintainVO.getEmptyData();
		}
		return plantMaintainVOList;
	}
}
