package com.tdkj.tdcloud.admin.api.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import java.util.Date;


/**
 * 协议书资源对象 agreement_resource
 * 
 * @author lgs
 * @date 2023-04-06
 */
@Data
public class AgreementResource
{
    private static final long serialVersionUID = 1L;

    /** id */
    private Long id;

    /** 服务器序列号 */
    private String serverSerial;

    /** 是否双电源 */
    private String isPower;

    /** 电源功率 */
    private String powerSupply;

    /** 机柜空间 */
    private String cabinetSpace;

    /** IP地址 */
    private String ipAddress;

    /** 机柜位置 */
    private String cabinetPosition;

    /** 0使用1删除 */
    private Long isDelete;

	private String resourceType;

	private Long menuTypeId;

	@JsonFormat(pattern = "yyyy-MM-dd")
	private Date createTime;
}
