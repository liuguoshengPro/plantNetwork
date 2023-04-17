package com.tdkj.tdcloud.admin.service;

import com.tdkj.tdcloud.admin.api.dto.InformationSystemDTO;
import com.tdkj.tdcloud.admin.api.entity.InformationSystem;
import com.tdkj.tdcloud.admin.api.vo.InformationSystemVO;
import com.tdkj.tdcloud.common.core.util.R;

import java.util.List;

/**
 * 信息系统名录Service接口
 * 
 * @author lgs
 * @date 2023-04-12
 */
public interface InformationSystemService
{
    R saveInformationSystem(InformationSystem informationSystem);
    R getInformationSystemList(InformationSystemDTO informationSystem);
    R getInformationSystemInfo(Long id);
    R deleteInformationSystemInfo(List<Integer> idList);

    List<InformationSystemVO> getExportInformationSystem(InformationSystemDTO informationSystemDTO);
}
