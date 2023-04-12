package com.tdkj.tdcloud.admin.api.entity;


import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import java.util.Date;

/**
 * 申请协议书云主机清单对象 agreement_list
 * 
 * @author lgs
 * @date 2023-04-06
 */
@Data
public class AgreementList
{
    private static final long serialVersionUID = 1L;

    /** id */
    private Long id;

    /** 设备型号 */
    private String unitType;

    /** 服务器序列号 */
    private String serverSerial;

    /** 用途 */
    private String usageScenario;

    /** 操作系统 */
    private String operatingSystem;

    /** 负责人 */
    private String leader;

    /** 联系方式 */
    private String contactWay;

    /** 备注 */
    private String note;

    /** 0使用1删除 */
    private Long isDelete;

	private String resourceType;

	private Long menuTypeId;

	@JsonFormat(pattern = "yyyy-MM-dd")
	private Date createTime;
}
