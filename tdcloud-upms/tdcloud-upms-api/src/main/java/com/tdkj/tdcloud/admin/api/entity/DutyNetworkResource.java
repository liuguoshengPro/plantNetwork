package com.tdkj.tdcloud.admin.api.entity;


import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import java.util.Date;

/**
 * 责任书中网络资源对象 duty_network_resource
 * 
 * @author lgs
 * @date 2023-04-04
 */
@Data
public class DutyNetworkResource
{
    private static final long serialVersionUID = 1L;

    /** id */
    private Long id;

    /** 资源名称 */
    private String resourceName;

    /** 内网ip */
    private String intranetIp;

    /** 外网ip */
    private String extranetIp;

    /** 域名 */
    private String domainName;

    /** 责任人 */
    private String personCharge;

    /** 手机号码 */
    private String phone;

    /** 0使用1删除 */
    private Long isDelete;
    private Long menuTypeId;
	private String resourceType;
	@JsonFormat(pattern = "yyyy-MM-dd")
	private Date createTime;
}
