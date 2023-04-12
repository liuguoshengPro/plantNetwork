package com.tdkj.tdcloud.admin.api.dto;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import java.util.Date;

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
	private Date auditTime;

	@JsonFormat(pattern = "yyyy-MM-dd")
	private Date allocationTime;

}