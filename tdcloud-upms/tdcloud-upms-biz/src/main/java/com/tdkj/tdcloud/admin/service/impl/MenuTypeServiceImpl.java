package com.tdkj.tdcloud.admin.service.impl;

import java.math.BigDecimal;
import java.text.NumberFormat;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.temporal.ChronoUnit;
import java.util.*;

import cn.hutool.core.convert.Convert;
import com.tdkj.tdcloud.admin.api.dto.DomainNameApplyDTO;
import com.tdkj.tdcloud.admin.api.dto.IpGradingReportDTO;
import com.tdkj.tdcloud.admin.api.dto.MenuTypeDto;
import com.tdkj.tdcloud.admin.api.entity.*;
import com.tdkj.tdcloud.admin.mapper.*;
import com.tdkj.tdcloud.admin.service.MasterDataService;
import com.tdkj.tdcloud.admin.service.MenuTypeService;
import com.tdkj.tdcloud.admin.util.ChineseNumber;
import com.tdkj.tdcloud.admin.util.MoneyToChineseUtil;
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

    @Resource
	private DomainNameApplyMapper domainNameApplyMapper;

    @Resource
	private MasterDataMapper masterDataMapper;
    @Resource
	private MasterDataService masterDataService;



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
						if (dnr.getIntranetIp()==null){
							dnr.setIntranetIp("");
						}
						if (dnr.getExtranetIp()==null){
							dnr.setExtranetIp("");
						}
						if (dnr.getDomainName()==null){
							dnr.setDomainName("");
						}
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
				return R.ok(i,"修改成功");
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
//		if (menuTypeDto.getConfiguration()==null || "".equals(menuTypeDto.getConfiguration())){
//			return R.failed("请选择配置");
//		}
//		double chargeStandard = menuTypeMapper.selectChargeStandardByItemType(menuTypeDto.getConfiguration(),menuTypeDto.getItemType());
//		menuTypeDto.setChargeStandard(new BigDecimal(chargeStandard));
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

				MenuType menuType = menuTypeMapper.selectMenuTypeById(menuTypeDto.getId());
				List<AgreementResource> agreementResourceList = agreementResourceMapper.selectAgreementResourceByMenuTypeId(menuTypeDto.getId());
				List<AgreementList> agreementListList = agreementListMapper.selectAgreementListByMenuTypeId(menuTypeDto.getId());
				menuType.setAgreementResourceList(agreementResourceList);
				menuType.setAgreementListList(agreementListList);
				return R.ok(menuType,"添加成功");
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
				return R.ok(i,"修改成功");
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
				return R.ok(i,"添加成功");
			}else {
				return R.failed();
			}
		}else {
    		int i = ipGradingReportMapper.updateIpGradingReport(ipGradingReportDTO);
			if (i==1){
				return R.ok(i,"修改成功");
			}else {
				return R.failed();
			}
		}
	}

	@Override
	public R saveMenuApplyDns(MenuTypeDto menuTypeDto) {
		if (menuTypeDto.getId() == null) {
			menuTypeDto.setCreateTime(new Date());
			menuTypeDto.setApplyTime(new Date());
			int i = menuTypeMapper.insertMenuType(menuTypeDto);
			if (i == 1) {
				return R.ok(i,"添加成功");
			} else {
				return R.failed();
			}
		} else {
			int i = menuTypeMapper.updateMenuType(menuTypeDto);
			if (i == 1) {
				return R.ok(i,"修改成功");
			} else {
				return R.failed();
			}
		}
	}

	@Override
	public R getSysDeptList() {
		List<SysDept> sysDeptList = masterDataMapper.selectSysDept(0l);
		return R.ok(sysDeptList,"部门列表数据");
	}

	@Override
	public R saveUseDescription(UseDescription useDescription) {
    	if (useDescription.getId()==null){
    		useDescription.setCreateTime(new Date());
			UseDescription useDescription1 = menuTypeMapper.selectUseDescriptionByItemType(useDescription.getItemType());
			if (useDescription1!=null){
				return R.ok(useDescription1,"已有数据");
			}
			int i = menuTypeMapper.insertUseDescription(useDescription);
			if (i==1){
				return R.ok(menuTypeMapper.selectUseDescriptionById(useDescription.getId()),"添加成功");
			}
		}else {
    		int i = menuTypeMapper.updateUseDescription(useDescription);
    		if (i == 1){
    			return R.ok("修改成功");
			}
		}
		return null;
	}

	@Override
	public R getUseDescription(String itemType) {

    	if (itemType==null || "".equals(itemType)){
    		return R.failed("参数错误");
		}
		UseDescription useDescription = menuTypeMapper.selectUseDescriptionByItemType(itemType);

		return R.ok(useDescription,"数据");
	}

	@Override
	public R selectChargeStandardList(String itemType) {

		return R.ok(menuTypeMapper.selectChargeStandardList(itemType),"列表数据");
	}

	@Override
	public R updateChargeStandard(ChargeStandard chargeStandard) {
		return R.ok(menuTypeMapper.updateChargeStandard(chargeStandard),"修改成功");
	}

	@Override
	public R addChargeStandard(ChargeStandard chargeStandard) {
    	chargeStandard.setCreateTime(new Date());
		return R.ok(menuTypeMapper.insertChargeStandard(chargeStandard),"添加失败");
	}

	@Override
	public R getChargeStandardCalculate(MenuTypeDto menuTypeDto) {
		Map<String,Object> map = new HashMap<>();

		SimpleDateFormat time = new SimpleDateFormat("yyyy-MM-dd");
//		String startDateStr = time.format(menuTypeDto.getStartTime());
//		String endDateStr = time.format(menuTypeDto.getEndTime());
//		String startDateStr = "2023-01-01";
//		String endDateStr = "2023-04-05";
		if (menuTypeDto.getStartTime()==null || "".equals(menuTypeDto.getStartTime())){
			return R.failed("请填写服务开始时间");
		}
		LocalDate startDate = LocalDate.parse(menuTypeDto.getStartTime());
		if (menuTypeDto.getEndTime()==null || "".equals(menuTypeDto.getEndTime())){
			return R.failed("请填写服务结束时间");
		}
		LocalDate endDate = LocalDate.parse(menuTypeDto.getEndTime());

		long monthsBetween = ChronoUnit.MONTHS.between(startDate.withDayOfMonth(1), endDate.withDayOfMonth(1));
		if (monthsBetween==0){
			return R.failed("不能低于一个月");
		}
		if (menuTypeDto.getPlatformNum()==0 || menuTypeDto.getPlatformNum()<0){
			return R.failed("请选择正确台数");
		}

		if (menuTypeDto.getConfiguration()==null || "".equals(menuTypeDto.getConfiguration())){
			return R.failed("请选择配置");
		}
		double chargeStandard = menuTypeMapper.selectChargeStandardByItemType(menuTypeDto.getConfiguration(),menuTypeDto.getItemType());

		BigDecimal cs = new BigDecimal(chargeStandard);//服务费
		BigDecimal paymentMethod = cs.multiply(new BigDecimal(monthsBetween)).multiply(new BigDecimal(menuTypeDto.getPlatformNum()));
		System.out.println("----------------"+paymentMethod);

		String moneyToChinese = MoneyToChineseUtil.convert(MoneyToChineseUtil.moneyFormat(String.valueOf(paymentMethod)));
		System.out.println("--------------大写"+moneyToChinese);
		if (paymentMethod.compareTo(BigDecimal.ZERO)==0){
			moneyToChinese = "零元";
		}
		map.put("chargeStandard",cs);
		map.put("paymentMethod",paymentMethod);
		map.put("paymentUppercase",moneyToChinese);
		map.put("serviceCharge",paymentMethod);
		return R.ok(map,"费用数据");
	}

	@Override
	public R deleteChargeStandard(Long id) {
    	if (id==null){
    		return R.failed("id不能为空");
		}
		return R.ok(menuTypeMapper.deleteChargeStandardId(id),"删除成功");
	}

}
