package com.tdkj.tdcloud.admin.service;

import com.tdkj.tdcloud.admin.api.dto.IpGradingReportDTO;
import com.tdkj.tdcloud.admin.api.dto.MenuTypeDto;
import com.tdkj.tdcloud.admin.api.entity.MenuType;
import com.tdkj.tdcloud.common.core.util.R;

import java.util.List;

/**
 * 主数据下两张数据Service接口
 * 
 * @author lgs
 * @date 2023-04-04
 */
public interface MenuTypeService
{

    public R saveMenuApplyNetwork(MenuTypeDto menuTypeDto);
    public R saveMenuApplyAgreement(MenuTypeDto menuTypeDto);

    R deleteMenuApplyNetwork(Long id,String resourceType);
    R saveMenuApplyIp(IpGradingReportDTO ipGradingReportDTO);
}