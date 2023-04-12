package com.tdkj.tdcloud.admin.api.entity;


import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import java.util.Date;

/**
 * 责任书申请理由对象 duty_apply_reason
 * 
 * @author lgs
 * @date 2023-04-04
 */
@Data
public class DutyApplyReason
{
    private static final long serialVersionUID = 1L;

    /**  */
    private Long id;

    /** 资源名称 */
    private String resourceName;

    /** 资源存放位置 */
    private String resourceLocation;

    /** 用途 */
    private String purpose;
    private String resourceType;

    /** 0使用1删除 */
    private Long isDelete;
    private Long menuTypeId;

	@JsonFormat(pattern = "yyyy-MM-dd")
	private Date createTime;
}
