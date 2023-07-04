package com.tdkj.tdcloud.admin.api.vo;

import com.alibaba.excel.annotation.ExcelIgnore;
import com.alibaba.excel.annotation.ExcelProperty;
import com.alibaba.excel.annotation.write.style.ColumnWidth;
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
@ColumnWidth(30)
public class MasterDataVO
{
    private static final long serialVersionUID = 1L;

	@ExcelIgnore
    private Long id;

    /** 事项类型 */
	@ExcelProperty("事项类型")
    private String itemType;

	/** 内网ip */
	@ExcelProperty("内网ip")
	private String intranetIp;

	/** 外网ip */
	@ExcelProperty("外网ip")
	private String extranetIp;

	/** 域名 */
	@ExcelProperty("域名")
	private String domainName;

	@ExcelProperty("审核时间")
	@JsonFormat(pattern = "yyyy-MM-dd")
	private Date auditTime;

    /** 审核状态 */
	@ExcelProperty("审核状态")
    private String auditStatus;

    /** 分配状态 */
	@ExcelProperty("分配状态")
    private String allocationStatus;
    //private String userId;

	@ExcelProperty("分配时间")
	@JsonFormat(pattern = "yyyy-MM-dd")
	private Date allocationTime;

    /** 提交时间 */
	@ExcelProperty("提交时间")
    @JsonFormat(pattern = "yyyy-MM-dd")
    private Date submitTime;

//	@ExcelProperty("提交时间")
//    @JsonFormat(pattern = "yyyy-MM-dd")
//    private Date createTime;

    /** 0使用1删除 */
    //private Long isDelete;

	private int isExpire;


}
