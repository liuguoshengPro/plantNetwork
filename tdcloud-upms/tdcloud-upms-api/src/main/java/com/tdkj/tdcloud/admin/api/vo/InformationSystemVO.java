package com.tdkj.tdcloud.admin.api.vo;


import com.alibaba.excel.annotation.ExcelIgnore;
import com.alibaba.excel.annotation.ExcelProperty;
import com.alibaba.excel.annotation.write.style.ColumnWidth;
import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import java.util.Date;

/**
 * 信息系统名录对象 information_system
 * 
 * @author lgs
 * @date 2023-04-12
 */
@Data
@ColumnWidth(30)
public class InformationSystemVO
{
    private static final long serialVersionUID = 1L;

    /** id */
	@ExcelIgnore
    private Long id;

    /** 系统名称 */
	@ExcelProperty("系统名称")
    private String systemName;

    /** 使用状态 */
	@ExcelProperty("使用状态")
    private String useStatus;

    /** 内网IP地址 */
	@ExcelProperty("内网IP地址")
    private String intranetIp;

    /** 外网IP地址 */
	@ExcelProperty("使用状态")
    private String extranetIp;

    /** 设备Mac地址 */
	@ExcelProperty("设备Mac地址")
    private String macAddress;

    /** 免上网认证 */
	@ExcelProperty("免上网认证")
    private String freeInternet;

    /** 存放位置 */
	@ExcelProperty("存放位置")
    private String storageLocation;

    /** 使用部门 */
	@ExcelProperty("使用部门")
    private String useDept;

    /** 使用人 */
	@ExcelProperty("使用人")
    private String userName;

    /** TCP/IP备案情况 */
	@ExcelProperty("TCP/IP备案情况")
    private String tcpRecord;

    /** 等保备案情况 */
	@ExcelProperty("等保备案情况")
    private String equalRecord;

    /** 等保测评情况 */
	@ExcelProperty("等保测评情况")
    private String equalEvaluation;

    /** 用途 */
	@ExcelProperty("用途")
    private String purpose;

    /** 网安部门通报次数 */
	@ExcelProperty("网安部门通报次数")
    private String networkSecurity;

    /** 院安全小组通报次数 */
	@ExcelProperty("院安全小组通报次数")
    private String hospitalSafety;

    /** 备注 */
	@ExcelProperty("备注")
    private String note;

	@JsonFormat(pattern = "yyyy-MM-dd")
	@ExcelProperty("申请时间")
	private Date createTime;
}
