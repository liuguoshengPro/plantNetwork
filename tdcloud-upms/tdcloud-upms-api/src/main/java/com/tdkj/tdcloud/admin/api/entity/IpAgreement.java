package com.tdkj.tdcloud.admin.api.entity;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;


/**
 * IP地址申请协议书对象 ip_agreement
 * 
 * @author lgs
 * @date 2023-06-07
 */
@Data
public class IpAgreement
{
    private static final long serialVersionUID = 1L;

    /** id */
    private Long id;

    /** 乙方 */
    private String secondParty;

    /** ip地址个数 */
    private Long ipNum;

    /** 专题组/部门 */
    private String thematicGroup;
    private String thematicGroupName;

    /** 专题组长 */
    private String projectLeader;

    /** 申请人 */
    private String applicantUser;

    /** 联系电话 */
    private String phone;

    /** 电子邮件 */
    private String email;

    /** IP使用位置 */
    private String usePosition;

    /** IP使用类型 */
    private String useType;

    /** IP用途 */
    private String ipUse;

    /** IP */
    private String ip;

    /** 子网掩码 */
    private String subnetMask;

    /** 网关 */
    private String gateway;

    /** DNS */
    private String dns;

    /** 服务开始时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    private Date startTime;

    /** 服务结束时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    private Date endTime;

    /** 收费标准 */
    private Long chargeStandard;

    /** 付款方式 */
    private Long paymentMethod;

    /** 付款方式大写 */
    private String paymentUppercase;

    /** 0使用1删除 */
    private Long isDelete;

    /**  */
    private Long masterId;

    /** 事项类型 */
    private String itemType;

    /** 申请类型 */
    private String applyType;

	@JsonFormat(pattern = "yyyy-MM-dd")
	private Date createTime;

	private String checkReasonType;
	//ip申请保证书
	private String guarantee;
	private String ipType;
}
