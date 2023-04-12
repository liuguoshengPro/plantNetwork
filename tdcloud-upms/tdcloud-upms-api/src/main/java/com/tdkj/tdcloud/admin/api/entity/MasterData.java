package com.tdkj.tdcloud.admin.api.entity;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

/**
 * 主数据对象 master_data
 * 
 * @author lgs
 * @date 2023-04-03
 */
@Data
public class MasterData
{
    private static final long serialVersionUID = 1L;

    /** id */
    private Long id;

    /** 事项类型 */
    private String itemType;

    /** 审核状态 */
    private String auditStatus;

    /** 分配状态 */
    private String allocationStatus;
    private Long userId;
    private String userName;

    /** 提交时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    private Date submitTime;

    @JsonFormat(pattern = "yyyy-MM-dd")
    private Date createTime;

    /** 0使用1删除 */
    private Long isDelete;

	/** 内网ip */
	private String intranetIp;

	/** 外网ip */
	private String extranetIp;

	/** 域名 */
	private String domainName;

	@JsonFormat(pattern = "yyyy-MM-dd")
	private Date auditTime;

	@JsonFormat(pattern = "yyyy-MM-dd")
	private Date allocationTime;

}
