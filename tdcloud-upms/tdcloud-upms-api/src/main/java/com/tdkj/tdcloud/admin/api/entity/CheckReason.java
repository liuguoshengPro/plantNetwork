package com.tdkj.tdcloud.admin.api.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.tdkj.tdcloud.admin.api.dto.IpGradingReportDTO;
import com.tdkj.tdcloud.admin.api.dto.MenuTypeDto;
import lombok.Data;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * 审核原因备注对象 check_reason
 * 
 * @author lgs
 * @date 2022-12-30
 */
@Data
public class CheckReason
{
    private static final long serialVersionUID = 1L;

    /** id */
    private Long id;

    /** key值 */
    private String itemType;


    /** 用户id */
    private Long userId;
    private Long masterId;

    /** 1同意2拒绝A同意U修改后同意M建议会议审查 */
    private String isAgree;
    private String remark;
    private String userName;
	public String expireTime;//到期日期

	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	private Date createTime;

	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	private Date updateTime;


	private String checkReasonType;

	private MenuTypeDto menuTypeDto;
	private MenuTypeDto menuTypeDtoAgreement;

	private IpGradingReportDTO ipGradingReportDTO;

	private IpAgreement ipAgreement;
}
