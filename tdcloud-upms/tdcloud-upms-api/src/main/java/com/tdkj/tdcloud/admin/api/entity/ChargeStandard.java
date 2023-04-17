package com.tdkj.tdcloud.admin.api.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import java.math.BigDecimal;
import java.util.Date;

@Data
public class ChargeStandard {

	private Long id;
	/** 事项类型 */
	private String itemType;

	//收费标准
	private BigDecimal chargeStandard;

	//保存时间
	@JsonFormat(pattern = "yyyy-MM-dd")
	private Date createTime;
}
