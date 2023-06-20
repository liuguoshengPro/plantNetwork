package com.tdkj.tdcloud.admin.api.dto;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import java.util.Date;
import java.util.List;

/**
 * 主数据对象 master_data
 * 
 * @author lgs
 * @date 2023-04-03
 */
@Data
public class MasterDataDto
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
    private String userId;
    private String userName;

    /** 提交时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    private String[] submitTime;

    @JsonFormat(pattern = "yyyy-MM-dd")
    private Date createTime;

    /** 0使用1删除 */
    private Long isDelete;

	private Integer page;

	private Integer pageSize;

	@JsonFormat(pattern = "yyyy-MM-dd")
	private String beginSubmitTime;
	@JsonFormat(pattern = "yyyy-MM-dd")
	private String endSubmitTime;

	@JsonFormat(pattern = "yyyy-MM-dd")
	private String beginAuditTime;
	@JsonFormat(pattern = "yyyy-MM-dd")
	private String endAuditTime;

	@JsonFormat(pattern = "yyyy-MM-dd")
	private String beginAllocationTime;
	@JsonFormat(pattern = "yyyy-MM-dd")
	private String endAllocationTime;

	@JsonFormat(pattern = "yyyy-MM-dd")
	private String[] auditTime;

	@JsonFormat(pattern = "yyyy-MM-dd")
	private String[] allocationTime;

	private String auditType;

	private List<Long> idList;

	private String authority;

	private String ipType;
}
