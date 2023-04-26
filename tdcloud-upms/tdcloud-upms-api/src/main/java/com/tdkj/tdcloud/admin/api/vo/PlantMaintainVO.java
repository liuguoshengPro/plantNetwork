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

package com.tdkj.tdcloud.admin.api.vo;


import com.alibaba.excel.annotation.ExcelIgnore;
import com.alibaba.excel.annotation.ExcelProperty;

import com.alibaba.excel.annotation.write.style.ColumnWidth;
import lombok.Data;

import java.util.Collections;
import java.util.Date;
import java.util.List;

/**
 * 维护信息数据
 *
 * @author pigx code generator
 * @date 2023-03-29 14:16:38
 */
@Data
@ColumnWidth(30)
public class PlantMaintainVO {

    private static final long serialVersionUID = 1L;

    /**
     * id
     */
	@ExcelIgnore
    private Integer id;

    /**
     * 维护问题
     */
	@ExcelProperty("维护类型")
	private String maintainProblem;

    /**
     * 维护单位及人员
     */
	@ExcelProperty("问题提交人")
    private String maintainUnit;

    /**
     * 维护人员
     */
	@ExcelProperty("维护人员")
    private String maintainUser;

    /**
     * 维护时间
     */
	@ExcelProperty("维护时间")
    private Date maintainTime;



    /**
     * 创建时间
     */
	@ExcelIgnore
    private Date createTime;

    /**
     * 问题是否解决0 否 1是
     */
	@ExcelProperty("问题是否解决")
    private String isSolve;

//    /**
//     * 其他填写
//     */
//	@ExcelProperty("事项类型")
//    private String problemOther;

    /**
     * 维护内容
     */
	@ExcelProperty("维护内容")
    private String maintainContent;
	/**
	 * 解决办法
	 */
	@ExcelProperty("解决办法")
	private String solution;

	public static List<PlantMaintainVO> getEmptyData() {
		PlantMaintainVO header = new PlantMaintainVO();
			header.setMaintainProblem("");
			return Collections.singletonList(header);
	}

}
