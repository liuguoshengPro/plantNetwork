package com.tdkj.tdcloud.admin.api.entity;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

/**
 * DNS域名解析申请对象 domain_name_apply
 * 
 * @author lgs
 * @date 2023-04-12
 */
@Data
public class DomainNameApply
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

    /** 申请人姓名 */
    private String userName;

    /** 申请人部门 */
    private String userDept;

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

	@JsonFormat(pattern = "yyyy-MM-dd")
	private Date createTime;
}
