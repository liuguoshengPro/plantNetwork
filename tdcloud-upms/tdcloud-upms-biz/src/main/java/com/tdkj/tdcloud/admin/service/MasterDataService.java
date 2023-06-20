package com.tdkj.tdcloud.admin.service;

import com.tdkj.tdcloud.admin.api.dto.MasterDataDto;
import com.tdkj.tdcloud.admin.api.entity.CheckReason;
import com.tdkj.tdcloud.admin.api.entity.MasterData;
import com.tdkj.tdcloud.admin.api.vo.MasterDataVO;
import com.tdkj.tdcloud.common.core.util.R;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * 主数据Service接口
 * 
 * @author lgs
 * @date 2023-04-03
 */
public interface MasterDataService
{
    R saveMasterData(MasterData masterData);
    R submitMasterData(MasterData masterData);

    R getMasterDataList(MasterDataDto masterDataDto);
    R getMasterDataInfo(Long id);
    List<MasterDataVO> exportMasterData(MasterDataDto masterDataDto);
	R addCheckReason(CheckReason checkReason);
    void exportWordMasterData(String applyType,Long menuTypeId, HttpServletResponse response);

	R getFileList(Long masterId,String itemType);
	R updateMasterDataAllocationStatus(Long masterId);
	R getMasterStatistics(String year);
	R auditSendEmail(CheckReason checkReason);
	R deleteMasterDataById(Long id);
}
