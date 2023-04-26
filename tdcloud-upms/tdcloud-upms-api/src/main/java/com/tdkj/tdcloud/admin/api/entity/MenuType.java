package com.tdkj.tdcloud.admin.api.entity;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

/**
 * 主数据下两张数据对象 menu_type
 * 
 * @author lgs
 * @date 2023-04-04
 */
@Data
public class MenuType
{
    private static final long serialVersionUID = 1L;

    /** id */
    private Long id;

    /**  */
    private Long masterId;

    /** 0使用1删除 */
    private Long isDelete;

    /** 事项类型 */
    private String itemType;

    /** 申请类型 */
    private String applyType;

    /** 乙方 */
    private String secondParty;

    /** 台数 */
    private Long platformNum;

    /** 服务开始时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    private Date startTime;

    /** 服务结束时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    private Date endTime;

    /** 收费标准 */
    private BigDecimal chargeStandard;

    /** 付款方式 */
    private BigDecimal paymentMethod;

    /** 付款方式大写 */
    private String paymentUppercase;

    /** 服务费用 */
    private BigDecimal serviceCharge;

	@JsonFormat(pattern = "yyyy-MM-dd")
	private Date createTime;

	/** 申请人姓名 */
	private String userName;

	/** 申请人部门 */
	private String userDept;
	private String deptName;

	/** 申请日期 */
	@JsonFormat(pattern = "yyyy-MM-dd")
	private Date applyTime;

	/** 申请人手机 */
	private String userPhone;

	/** DNS域名 */
	private String dnsDomain;

	/** ip地址 */
	private String ipAddress;

	/** 网站用途 */
	private String siteUsage;
	private String configuration;

	private List<DutyApplyReason> dutyApplyReasonList = new ArrayList<>();
	private List<DutyNetworkResource> dutyNetworkResourceList = new ArrayList<>();

	/**
	 * 协议书
	 */
	private List<AgreementResource> agreementResourceList = new ArrayList<>();
	private List<AgreementList> agreementListList = new ArrayList<>();

}
