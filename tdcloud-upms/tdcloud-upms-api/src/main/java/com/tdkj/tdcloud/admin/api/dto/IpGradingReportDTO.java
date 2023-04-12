package com.tdkj.tdcloud.admin.api.dto;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import java.util.Date;

/**
 * 网络安全等级保护定级报告对象 ip_grading_report
 * 
 * @author lgs
 * @date 2023-04-11
 */
@Data
public class IpGradingReportDTO
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

    /** 系统名称 */
    private String systematicName;

    /** 备案系统IP地址 */
    private String ipAddress;

    /** 安全责任人 */
    private String safeLeader;

    /** 联系电话 */
    private String phone;

    /** 何时投入运行 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    private Date runTime;

    /** 描述 */
    private String description;

    /** 业务信息描述 */
    private String businessDescription;

    /** 业务信息收到破坏时所侵害客体的确定 */
    private String objectConfirm;

    /** 信息受到破坏后对侵害客体的侵害程度 */
    private String objectDegree;

    /** 业务信息安全保护等级 */
    private String businessGrade;

    /** 系统服务描述 */
    private String systemDescription;

    /** 系统服务受到破坏时所侵害客体的确定 */
    private String systemConfirm;

    /** 系统服务受到破坏后对侵害客体的侵害程度 */
    private String systemDegree;

    /** 系统服务安全保护等级 */
    private String systemGrade;

    /** 安全保护等级的确定 */
    private String safeGrade;

	@JsonFormat(pattern = "yyyy-MM-dd")
	private Date createTime;

}
