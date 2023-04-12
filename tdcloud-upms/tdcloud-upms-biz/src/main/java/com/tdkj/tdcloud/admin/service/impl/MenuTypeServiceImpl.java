package com.tdkj.tdcloud.admin.service.impl;

import java.util.Date;
import java.util.List;

import cn.hutool.core.convert.Convert;
import com.tdkj.tdcloud.admin.api.dto.IpGradingReportDTO;
import com.tdkj.tdcloud.admin.api.dto.MenuTypeDto;
import com.tdkj.tdcloud.admin.api.entity.*;
import com.tdkj.tdcloud.admin.mapper.*;
import com.tdkj.tdcloud.admin.service.MenuTypeService;
import com.tdkj.tdcloud.common.core.util.R;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;


/**
 * 主数据下两张数据Service业务层处理
 * 
 * @author lgs
 * @date 2023-04-04
 */
@Service
public class MenuTypeServiceImpl implements MenuTypeService
{
    @Resource
    private MenuTypeMapper menuTypeMapper;
    @Resource
	private DutyApplyReasonMapper dutyApplyReasonMapper;
    @Resource
	private DutyNetworkResourceMapper dutyNetworkResourceMapper;

    @Resource
	private AgreementListMapper agreementListMapper;

    @Resource
	private AgreementResourceMapper agreementResourceMapper;

    @Resource
	private IpGradingReportMapper ipGradingReportMapper;


    @Transactional
	@Override
	public R saveMenuApplyNetwork(MenuTypeDto menuTypeDto) {
		if (menuTypeDto.getMasterId()==null || menuTypeDto.getMasterId()==0){
			return R.failed("id数据错误");
		}
		if ("".equals(menuTypeDto.getItemType()) || menuTypeDto.getItemType()==null){
			return R.failed("数据错误");
		}
		Date date = new Date();
		menuTypeDto.setCreateTime(date);

		if (menuTypeDto.getId()==null){
			int i = menuTypeMapper.insertMenuType(menuTypeDto);
			if (i==1){
				if (menuTypeDto.getDutyApplyReasonList().size()>0){
					for (DutyApplyReason dar:menuTypeDto.getDutyApplyReasonList()){
						dar.setCreateTime(date);
						dar.setMenuTypeId(menuTypeDto.getId());
						//dar.setResourceType("dutyApplyReason");
						dutyApplyReasonMapper.insertDutyApplyReason(dar);
					}
				}
				if (menuTypeDto.getDutyNetworkResourceList().size()>0){
					for (DutyNetworkResource dnr:menuTypeDto.getDutyNetworkResourceList()){
						dnr.setCreateTime(date);
						dnr.setMenuTypeId(menuTypeDto.getId());
						//dnr.setResourceType("dutyNetworkResource");
						dutyNetworkResourceMapper.insertDutyNetworkResource(dnr);
					}
				}

				MenuType menuType = menuTypeMapper.selectMenuTypeById(menuTypeDto.getId());
				List<DutyApplyReason> dutyApplyReasons = dutyApplyReasonMapper.selectDutyApplyByMenuTypeId(menuTypeDto.getId());
				List<DutyNetworkResource> dutyNetworkResources = dutyNetworkResourceMapper.selectDutyNetworkByMenuTypeId(menuTypeDto.getId());
				menuType.setDutyApplyReasonList(dutyApplyReasons);
				menuType.setDutyNetworkResourceList(dutyNetworkResources);
				return R.ok(menuType,"添加成功");
			}
			return R.failed("添加失败");
		}else {
			int i = menuTypeMapper.updateMenuType(menuTypeDto);
			if (i==1){
				if (menuTypeDto.getDutyApplyReasonList().size()>0){
					for (DutyApplyReason dar:menuTypeDto.getDutyApplyReasonList()){
						if (dar.getId()==null){
							dar.setCreateTime(date);
							dar.setMenuTypeId(menuTypeDto.getId());
							//dar.setResourceType("dutyApplyReason");
							dutyApplyReasonMapper.insertDutyApplyReason(dar);
						}else {
							dutyApplyReasonMapper.updateDutyApplyReason(dar);
						}
					}
				}
				if (menuTypeDto.getDutyNetworkResourceList().size()>0){
					for (DutyNetworkResource dnr:menuTypeDto.getDutyNetworkResourceList()){
						if (dnr.getId()==null){
							dnr.setCreateTime(date);
							dnr.setMenuTypeId(menuTypeDto.getId());
							//dnr.setResourceType("dutyNetworkResource");
							dutyNetworkResourceMapper.insertDutyNetworkResource(dnr);
						}else {
							dutyNetworkResourceMapper.updateDutyNetworkResource(dnr);
						}

					}
				}
				return R.ok("修改成功");
			}
			return R.failed("添加失败");
		}

	}

	@Override
	public R saveMenuApplyAgreement(MenuTypeDto menuTypeDto) {
		if (menuTypeDto.getMasterId()==null || menuTypeDto.getMasterId()==0){
			return R.failed("id数据错误");
		}
		if ("".equals(menuTypeDto.getItemType()) || menuTypeDto.getItemType()==null){
			return R.failed("数据错误");
		}
		Date date = new Date();
		menuTypeDto.setCreateTime(date);

		if (menuTypeDto.getId()==null){
			int i = menuTypeMapper.insertMenuType(menuTypeDto);
			if (i==1){
				if (menuTypeDto.getAgreementResourceList().size()>0){
					for (AgreementResource ar:menuTypeDto.getAgreementResourceList()){
						ar.setCreateTime(date);
						ar.setMenuTypeId(menuTypeDto.getId());
						//dar.setResourceType("dutyApplyReason");
						agreementResourceMapper.insertAgreementResource(ar);
					}
				}
				if (menuTypeDto.getAgreementListList().size()>0){
					for (AgreementList al:menuTypeDto.getAgreementListList()){
						al.setCreateTime(date);
						al.setMenuTypeId(menuTypeDto.getId());
						//dnr.setResourceType("dutyNetworkResource");
						agreementListMapper.insertAgreementList(al);
					}
				}

//				MenuType menuType = menuTypeMapper.selectMenuTypeById(menuTypeDto.getId());
//				List<DutyApplyReason> dutyApplyReasons = dutyApplyReasonMapper.selectDutyApplyByMenuTypeId(menuTypeDto.getId());
//				List<DutyNetworkResource> dutyNetworkResources = dutyNetworkResourceMapper.selectDutyNetworkByMenuTypeId(menuTypeDto.getId());
//				menuType.setDutyApplyReasonList(dutyApplyReasons);
//				menuType.setDutyNetworkResourceList(dutyNetworkResources);
				return R.ok("添加成功");
			}
			return R.failed("添加失败");
		}else {
			int i = menuTypeMapper.updateMenuType(menuTypeDto);
			if (i==1){
				if (menuTypeDto.getAgreementResourceList().size()>0){
					for (AgreementResource ar:menuTypeDto.getAgreementResourceList()){
						if (ar.getId()==null){
							ar.setCreateTime(date);
							ar.setMenuTypeId(menuTypeDto.getId());
							//dar.setResourceType("dutyApplyReason");
							agreementResourceMapper.insertAgreementResource(ar);
						}else {
							agreementResourceMapper.updateAgreementResource(ar);
						}
					}
				}
				if (menuTypeDto.getAgreementListList().size()>0){
					for (AgreementList al:menuTypeDto.getAgreementListList()){
						if (al.getId()==null){
							al.setCreateTime(date);
							al.setMenuTypeId(menuTypeDto.getId());
							//dnr.setResourceType("dutyNetworkResource");
							agreementListMapper.insertAgreementList(al);
						}else {
							agreementListMapper.updateAgreementList(al);
						}

					}
				}
				return R.ok("修改成功");
			}
			return R.failed("添加失败");
		}
	}

	@Override
	public R deleteMenuApplyNetwork(Long id, String resourceType) {
    	if ("cloudDutyApplyReason".equals(resourceType)){
			dutyApplyReasonMapper.deleteDutyApplyReasonById(id);
		}
    	if ("cloudDutyNetworkResource".equals(resourceType)){
			dutyNetworkResourceMapper.deleteDutyNetworkResourceById(id);
		}
		if ("cloudAgreementList".equals(resourceType)){
			agreementListMapper.deleteAgreementListById(id);
		}
		if ("cloudAgreementResource".equals(resourceType)){
			agreementResourceMapper.deleteAgreementResourceById(id);
		}
		return R.ok("删除成功");
	}

	@Override
	public R saveMenuApplyIp(IpGradingReportDTO ipGradingReportDTO) {
    	if (ipGradingReportDTO.getId()==null){
    		ipGradingReportDTO.setCreateTime(new Date());
			int i = ipGradingReportMapper.insertIpGradingReport(ipGradingReportDTO);
			if (i==1){
				return R.ok("添加成功");
			}else {
				return R.failed();
			}
		}else {
    		int i = ipGradingReportMapper.updateIpGradingReport(ipGradingReportDTO);
			if (i==1){
				return R.ok("修改成功");
			}else {
				return R.failed();
			}
		}
	}
}
