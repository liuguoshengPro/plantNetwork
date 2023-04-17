package com.tdkj.tdcloud.admin.api.dto;


import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import java.util.Date;
import java.util.List;

/**
 * 信息系统名录对象 information_system
 * 
 * @author lgs
 * @date 2023-04-12
 */
@Data
public class InformationSystemDTO
{
    private static final long serialVersionUID = 1L;

    /** id */
    private Long id;

    /** 系统名称 */
    private String systemName;

    /** 使用状态 */
    private String useStatus;

    /** 内网IP地址 */
    private String intranetIp;

    /** 外网IP地址 */
    private String extranetIp;

    /** 设备Mac地址 */
    private String macAddress;

    /** 免上网认证 */
    private String freeInternet;

    /** 存放位置 */
    private String storageLocation;

    /** 使用部门 */
    private String useDept;

    /** 使用人 */
    private String userName;

    /** TCP/IP备案情况 */
    private String tcpRecord;

    /** 等保备案情况 */
    private String equalRecord;

    /** 等保测评情况 */
    private String equalEvaluation;

    /** 用途 */
    private String purpose;

    /** 网安部门通报次数 */
    private String networkSecurity;

    /** 院安全小组通报次数 */
    private String hospitalSafety;

    /** 备注 */
    private String note;

    /** 0使用1删除 */
    private Long isDelete;

	@JsonFormat(pattern = "yyyy-MM-dd")
	private Date createTime;

	private List<Long> idList;

	private Integer page;

	private Integer pageSize;

	private String createTimeDesc;
	private String networkSecurityDesc;
	private String hospitalSafetyDesc;
}
