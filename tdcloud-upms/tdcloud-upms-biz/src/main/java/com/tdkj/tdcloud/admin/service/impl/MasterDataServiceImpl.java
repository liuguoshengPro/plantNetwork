package com.tdkj.tdcloud.admin.service.impl;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.*;
import java.util.stream.Collectors;

import cn.hutool.core.bean.BeanUtil;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.client.j2se.MatrixToImageWriter;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.QRCodeWriter;
import com.tdkj.tdcloud.admin.api.dto.MasterDataDto;
import com.tdkj.tdcloud.admin.api.entity.*;
import com.tdkj.tdcloud.admin.api.vo.MasterDataVO;
import com.tdkj.tdcloud.admin.api.vo.PostExcelVO;
import com.tdkj.tdcloud.admin.mapper.*;
import com.tdkj.tdcloud.admin.service.MailService;
import com.tdkj.tdcloud.admin.service.MasterDataService;
import com.tdkj.tdcloud.admin.service.PlantMailService;
import com.tdkj.tdcloud.admin.util.FreemarkerBase;
import com.tdkj.tdcloud.admin.util.MyPathUitls;
import com.tdkj.tdcloud.common.core.util.R;
import com.tdkj.tdcloud.common.security.util.SecurityUtils;
import org.apache.poi.ss.formula.functions.Now;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

/**
 * 主数据Service业务层处理
 *
 * @author lgs
 * @date 2023-04-03
 */
@Service
public class MasterDataServiceImpl implements MasterDataService {

	@Resource
	private MasterDataMapper masterDataMapper;
	@Resource
	private DutyApplyReasonMapper dutyApplyReasonMapper;
	@Resource
	private DutyNetworkResourceMapper dutyNetworkResourceMapper;
	@Resource
	private MenuTypeMapper menuTypeMapper;

	@Resource
	private AgreementListMapper agreementListMapper;
	@Resource
	private AgreementResourceMapper agreementResourceMapper;
	@Resource
	private CheckReasonMapper checkReasonMapper;
	@Resource
	private PlantMailService mailService;

	@Resource
	private IpGradingReportMapper ipGradingReportMapper;

	@Transactional
	@Override
	public R saveMasterData(MasterData masterData) {
		Map<String, Object> map = new HashMap<>();
		masterData.setCreateTime(new Date());
		String userName = SecurityUtils.getUser().getName();
		Long userId = SecurityUtils.getUser().getId();
		masterData.setUserId(userId);
		masterData.setUserName(userName);
		MasterData masterData2 = masterDataMapper.selectMasterDataByAuditStatus(userId, masterData.getItemType());
		if ("cloud".equals(masterData.getItemType())) {
			if (masterData2 != null) {


				MenuType menuType = menuTypeMapper.selectMenuTypeByMasterId(masterData2.getId(), "safe");
				//MenuType menuType1 = menuTypeMapper.selectMenuTypeByMasterId(masterData2.getId(), "safe");
				if (menuType != null) {
					List<DutyApplyReason> dutyApplyReasons = dutyApplyReasonMapper.selectDutyApplyByMenuTypeId(menuType.getId());
					List<DutyNetworkResource> dutyNetworkResources = dutyNetworkResourceMapper.selectDutyNetworkByMenuTypeId(menuType.getId());
					menuType.setDutyApplyReasonList(dutyApplyReasons);
					menuType.setDutyNetworkResourceList(dutyNetworkResources);
				}
				MenuType agreement = menuTypeMapper.selectMenuTypeByMasterId(masterData2.getId(), "agreement");
				if (agreement != null) {
					List<AgreementResource> agreementResourceList = agreementResourceMapper.selectAgreementResourceByMenuTypeId(agreement.getId());
					List<AgreementList> agreementListList = agreementListMapper.selectAgreementListByMenuTypeId(agreement.getId());
					agreement.setAgreementResourceList(agreementResourceList);
					agreement.setAgreementListList(agreementListList);
				}
				map.put("masterData2", masterData2);
				map.put("menuType", menuType);
				map.put("agreement", agreement);
				return R.ok(map, "您有待提交事项");
			}
		}
		if ("idc".equals(masterData.getItemType())) {
			if (masterData2 != null) {

				MenuType idcDuty = menuTypeMapper.selectMenuTypeByMasterId(masterData2.getId(), "idcSafe");
				//MenuType menuType1 = menuTypeMapper.selectMenuTypeByMasterId(masterData2.getId(), "safe");
				if (idcDuty != null) {
					List<DutyApplyReason> dutyApplyReasons = dutyApplyReasonMapper.selectDutyApplyByMenuTypeId(idcDuty.getId());
					List<DutyNetworkResource> dutyNetworkResources = dutyNetworkResourceMapper.selectDutyNetworkByMenuTypeId(idcDuty.getId());
					idcDuty.setDutyApplyReasonList(dutyApplyReasons);
					idcDuty.setDutyNetworkResourceList(dutyNetworkResources);
				}
				MenuType idcAgreement = menuTypeMapper.selectMenuTypeByMasterId(masterData2.getId(), "idcAgreement");
				if (idcAgreement != null) {
					List<AgreementResource> agreementResourceList = agreementResourceMapper.selectAgreementResourceByMenuTypeId(idcAgreement.getId());
					List<AgreementList> agreementListList = agreementListMapper.selectAgreementListByMenuTypeId(idcAgreement.getId());
					idcAgreement.setAgreementResourceList(agreementResourceList);
					idcAgreement.setAgreementListList(agreementListList);
				}
				map.put("masterData2", masterData2);
				map.put("idcDuty", idcDuty);
				map.put("idcAgreement", idcAgreement);
				return R.ok(map, "您有待提交事项");
			}
		}
		//ip
		if ("ip".equals(masterData.getItemType())) {
			if (masterData2 != null) {

				MenuType ipDuty = menuTypeMapper.selectMenuTypeByMasterId(masterData2.getId(), "ipSafe");
				//MenuType menuType1 = menuTypeMapper.selectMenuTypeByMasterId(masterData2.getId(), "safe");
				if (ipDuty != null) {
					List<DutyApplyReason> dutyApplyReasons = dutyApplyReasonMapper.selectDutyApplyByMenuTypeId(ipDuty.getId());
					List<DutyNetworkResource> dutyNetworkResources = dutyNetworkResourceMapper.selectDutyNetworkByMenuTypeId(ipDuty.getId());
					ipDuty.setDutyApplyReasonList(dutyApplyReasons);
					ipDuty.setDutyNetworkResourceList(dutyNetworkResources);
				}
				IpGradingReport ipGradingReport = ipGradingReportMapper.selectIpReportByMasterId(masterData2.getId());

				map.put("masterData2", masterData2);
				map.put("ipDuty", ipDuty);
				map.put("ipGradingReport", ipGradingReport);
				return R.ok(map, "您有待提交事项");
			}
		}

		int i = masterDataMapper.insertMasterData(masterData);
		if (i == 1) {
			MasterData masterData1 = masterDataMapper.selectMasterDataById(masterData.getId());
			map.put("masterData2", masterData1);
			return R.ok(map, "添加成功");
		}
		return null;
	}

	@Override
	public R submitMasterData(MasterData masterData) {
		masterData.setSubmitTime(new Date());
		int i = masterDataMapper.updateMasterData(masterData);

		return R.ok("成功");
	}

	@Override
	public R getMasterDataList(MasterDataDto masterDataDto) {
		if (masterDataDto.getPage() == 0) masterDataDto.setPage(1);
		masterDataDto.setPage((masterDataDto.getPage() - 1) * masterDataDto.getPageSize());
		if (masterDataDto.getSubmitTime() != null && masterDataDto.getSubmitTime().length > 0) {
			for (int j = 0; j < masterDataDto.getSubmitTime().length; j++) {
				masterDataDto.setBeginSubmitTime(masterDataDto.getSubmitTime()[0]);
				masterDataDto.setEndSubmitTime(masterDataDto.getSubmitTime()[1]);
			}
		}
		Map<String, Object> map = new HashMap<>();
		int total = masterDataMapper.selectMasterDataListTotal(masterDataDto);
		if (total > 0) {
			List<MasterData> masterDataList = masterDataMapper.selectMasterDataList(masterDataDto);

			List<MasterData> masterDataListNew = masterDataList.stream().map(masterData -> {
				int masterIdTotal = menuTypeMapper.selectMenuTypeByMasterIdTotal(masterData.getId());
				if (masterIdTotal == 0) {
					masterDataMapper.deleteMasterDataById(masterData.getId());
				}
				return masterData;
			}).filter(masterData -> menuTypeMapper.selectMenuTypeByMasterIdTotal(masterData.getId()) != 0)
					.collect(Collectors.toList());
			for (MasterData md : masterDataListNew) {
				String dutyApplyType = "";
				if ("cloud".equals(md.getItemType())) {
					dutyApplyType = "safe";
				} else if ("idc".equals(md.getItemType())) {
					dutyApplyType = "idcSafe";
				}else if ("ip".equals(md.getItemType())) {
					dutyApplyType = "ipSafe";
				}

				MenuType safe = menuTypeMapper.selectMenuTypeByMasterId(md.getId(), dutyApplyType);
				String intranetIp = "";//内网ip
				String extranetIp = "";//外网ip
				String domainName = "";//域名
				if (safe != null) {

					List<DutyNetworkResource> dutyNetworkResourceList = dutyNetworkResourceMapper.selectDutyNetworkByMenuTypeId(safe.getId());
					if (dutyNetworkResourceList.size() > 0) {
						for (int i = 0; i < dutyNetworkResourceList.size(); i++) {
							intranetIp = intranetIp + dutyNetworkResourceList.get(i).getIntranetIp();
							extranetIp = extranetIp + dutyNetworkResourceList.get(i).getExtranetIp();
							domainName = domainName + dutyNetworkResourceList.get(i).getDomainName();
							if (dutyNetworkResourceList.get(i).getExtranetIp() != null && !"".equals(dutyNetworkResourceList.get(i).getExtranetIp())) {
								if (i != (dutyNetworkResourceList.size() - 1)) {
									extranetIp = extranetIp + "/";

								}

							}
							if (dutyNetworkResourceList.get(i).getIntranetIp() != null && !"".equals(dutyNetworkResourceList.get(i).getIntranetIp())) {

								if (i != (dutyNetworkResourceList.size() - 1)) {
									intranetIp = intranetIp + "/";

								}
							}
							if (dutyNetworkResourceList.get(i).getDomainName() != null && !"".equals(dutyNetworkResourceList.get(i).getDomainName())) {

								if (i != (dutyNetworkResourceList.size() - 1)) {
									domainName = domainName + "/";

								}
							}
//							if (i != (dutyNetworkResourceList.size() - 1)) {
//								intranetIp = intranetIp + "/";
//								extranetIp = extranetIp + "/";
//								domainName = domainName + "/";
//							}
						}
					}
				}

				md.setIntranetIp(intranetIp);
				md.setExtranetIp(extranetIp);
				md.setDomainName(domainName);
			}
			map.put("total", total);
			map.put("masterDataList", masterDataListNew);
		}
		return R.ok(map, "成功");
	}

	@Override
	public R getMasterDataInfo(Long id) {
		if (id == null) {
			R.failed("数据错误");
		}
		Map<String, Object> map = new HashMap<>();
		MasterData masterData = masterDataMapper.selectMasterDataById(id);
		String dutyApplyType = "";
		String agreementApplyType = "";
		if ("cloud".equals(masterData.getItemType())) {
			dutyApplyType = "safe";
			agreementApplyType = "agreement";
		} else if ("idc".equals(masterData.getItemType())) {
			dutyApplyType = "idcSafe";
			agreementApplyType = "idcAgreement";
		}else if ("ip".equals(masterData.getItemType())) {
			dutyApplyType = "ipSafe";
			agreementApplyType = "ipAgreement";
			IpGradingReport ipGradingReport = ipGradingReportMapper.selectIpReportByMasterId(id);
			map.put("ipGradingReport",ipGradingReport);
		}

		MenuType duty = menuTypeMapper.selectMenuTypeByMasterId(masterData.getId(), dutyApplyType);
		//MenuType menuType1 = menuTypeMapper.selectMenuTypeByMasterId(masterData2.getId(), "safe");
		if (duty != null) {
			List<DutyApplyReason> dutyApplyReasons = dutyApplyReasonMapper.selectDutyApplyByMenuTypeId(duty.getId());
			List<DutyNetworkResource> dutyNetworkResources = dutyNetworkResourceMapper.selectDutyNetworkByMenuTypeId(duty.getId());
			duty.setDutyApplyReasonList(dutyApplyReasons);
			duty.setDutyNetworkResourceList(dutyNetworkResources);
		}
		MenuType agreement = menuTypeMapper.selectMenuTypeByMasterId(masterData.getId(), agreementApplyType);
		if (agreement != null) {
			List<AgreementResource> agreementResourceList = agreementResourceMapper.selectAgreementResourceByMenuTypeId(agreement.getId());
			List<AgreementList> agreementListList = agreementListMapper.selectAgreementListByMenuTypeId(agreement.getId());
			agreement.setAgreementResourceList(agreementResourceList);
			agreement.setAgreementListList(agreementListList);
		}
		map.put("duty", duty);
		map.put("agreement", agreement);
		map.put("cr", checkReasonMapper.selectCRByMasterId(id));
		return R.ok(map, "查看成功");
	}

	@Override
	public List<MasterDataVO> exportMasterData(MasterDataDto masterDataDto) {
		List<MasterData> masterDataList = masterDataMapper.selectExportMasterDataList(masterDataDto);

		// 转换成execl 对象输出
		return masterDataList.stream().map(masterData -> {
			MasterDataVO masterDataVO = new MasterDataVO();
			MenuType safe = menuTypeMapper.selectMenuTypeByMasterId(masterData.getId(), "safe");
			List<DutyNetworkResource> dutyNetworkResourceList = dutyNetworkResourceMapper.selectDutyNetworkByMenuTypeId(safe.getId());
			String intranetIp = "";//内网ip
			String extranetIp = "";//外网ip
			String domainName = "";//域名
			for (int i = 0; i < dutyNetworkResourceList.size(); i++) {
				intranetIp = intranetIp + dutyNetworkResourceList.get(i).getIntranetIp();
				extranetIp = extranetIp + dutyNetworkResourceList.get(i).getExtranetIp();
				domainName = domainName + dutyNetworkResourceList.get(i).getDomainName();
				if (i != (dutyNetworkResourceList.size() - 1)) {
					intranetIp = intranetIp + "/";
					extranetIp = extranetIp + "/";
					domainName = domainName + "/";
				}
			}
			masterData.setIntranetIp(intranetIp);
			masterData.setExtranetIp(extranetIp);
			masterData.setDomainName(domainName);
			BeanUtil.copyProperties(masterData, masterDataVO);
			return masterDataVO;
		}).collect(Collectors.toList());
	}

	@Transactional
	@Override
	public R addCheckReason(CheckReason checkReason) {
		if ("".equals(checkReason.getRemark()) || checkReason.getRemark() == null) {
			if ("2".equals(checkReason.getIsAgree())) {
				checkReason.setRemark("同意");
			}
			if ("3".equals(checkReason.getIsAgree())) {
				checkReason.setRemark("不同意");
			}
		}
		checkReason.setCreateTime(new Date());
		checkReason.setUpdateTime(new Date());
		int i = checkReasonMapper.insertCheckReason(checkReason);
		if (i == 1) {
//			if ("3".equals(checkReason.getIsAgree())) {
//				checkReason.setIsAgree("0");
//			}
			masterDataMapper.updateMasterDataAuditStatus(checkReason.getIsAgree(), checkReason.getMasterId());
			String email = masterDataMapper.selectSysUserByUserId(checkReason.getUserId());
			EmailSender emailSender = new EmailSender();
			emailSender.setName(checkReason.getUserName());
			emailSender.setToEmail(email);
			String emailType = "";
			if ("2".equals(checkReason.getIsAgree())) {
				emailType = "applyAgree";
			} else {
				emailType = "applyRefuse";
			}
			emailSender.setEmailType(emailType);
			mailService.sendSimpleMail(emailSender);
			return R.ok("审核成功");
		}
		return null;
	}

	@Override
	public void exportWordMasterData(String applyType, Long menuTypeId, HttpServletResponse response) {
		Map<String, Object> dataMap = new HashMap<>();
		Map<String, Object> agreement = new HashMap<>();
		//文件路径
		String realPath = MyPathUitls.getRealPath();

		SimpleDateFormat year = new SimpleDateFormat("yyyy");
		SimpleDateFormat month = new SimpleDateFormat("MM");
		SimpleDateFormat day = new SimpleDateFormat("dd");
		FreemarkerBase freemarkerBase = new FreemarkerBase();

		if ("safe".equals(applyType)) {
			List<DutyApplyReason> dutyApplyReasons = dutyApplyReasonMapper.selectDutyApplyByMenuTypeId(menuTypeId);
			List<DutyNetworkResource> dutyNetworkResources = dutyNetworkResourceMapper.selectDutyNetworkByMenuTypeId(menuTypeId);
			dataMap.put("dutyApplyReasons", dutyApplyReasons);
			dataMap.put("dutyNetworkResources", dutyNetworkResources);

			String wordFileName = realPath + "申请单.docx";

			String pdfFileName = realPath + "申请单.pdf";
			freemarkerBase.word2pdf(dataMap, response, "DutyApplyReason.ftl", wordFileName, pdfFileName);
		}
		if ("agreement".equals(applyType)) {
			MenuType menuType = menuTypeMapper.selectMenuTypeById(menuTypeId);
			if (menuType != null) {
				dataMap.put("secondParty", menuType.getSecondParty());
				dataMap.put("platformNum", menuType.getPlatformNum());
				dataMap.put("sY", year.format(menuType.getStartTime()));
				dataMap.put("sM", month.format(menuType.getStartTime()));
				dataMap.put("sD", day.format(menuType.getStartTime()));
				dataMap.put("eY", year.format(menuType.getEndTime()));
				dataMap.put("eM", month.format(menuType.getEndTime()));
				dataMap.put("eD", day.format(menuType.getEndTime()));
				dataMap.put("chargeStandard", menuType.getChargeStandard());
				dataMap.put("paymentMethod", menuType.getPaymentMethod());
				dataMap.put("paymentUppercase", menuType.getPaymentUppercase());
				dataMap.put("serviceCharge", menuType.getServiceCharge());
				List<AgreementList> agreementListList = agreementListMapper.selectAgreementListByMenuTypeId(menuTypeId);
				List<AgreementResource> agreementResourceList = agreementResourceMapper.selectAgreementResourceByMenuTypeId(menuTypeId);
				dataMap.put("agreementListList", agreementListList);
				dataMap.put("aResourceList", agreementResourceList);

				String wordFileName = realPath + "申请单.docx";

				String pdfFileName = realPath + "申请单.pdf";
				freemarkerBase.word2pdf(dataMap, response, "Agreement.ftl", wordFileName, pdfFileName);
			}
		}

	}

	@Override
	public R getFileList(Long masterId, String itemType) {
		List<SysFile> sysFileList = masterDataMapper.selectFileByMasterId(masterId, itemType);
		if (sysFileList.size()>0){
			for (SysFile sf:sysFileList){
				String url = "/admin/sys-file/local/"+sf.getFileName();
				sf.setUrl(url);
			}
		}
		return R.ok(sysFileList, "文件数据");
	}

	@Override
	public R updateMasterDataAllocationStatus(Long masterId) {
		int i = masterDataMapper.updateMasterDataAllocationStatus("1", masterId);
		if (i != 1) {
			return R.failed();
		}
		return R.ok("分配成功");
	}

}