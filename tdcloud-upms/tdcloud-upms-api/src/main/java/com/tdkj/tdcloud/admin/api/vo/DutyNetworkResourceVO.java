package com.tdkj.tdcloud.admin.api.vo;


import com.alibaba.excel.annotation.ExcelProperty;
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
public class DutyNetworkResourceVO
{
    private static final long serialVersionUID = 1L;


    /** 内网ip */
	@ExcelProperty("内网ip")
    private String intranetIp;

    /** 外网ip */
	@ExcelProperty("外网ip")
    private String extranetIp;

    /** 域名 */
	@ExcelProperty("域名")
    private String domainName;

}
