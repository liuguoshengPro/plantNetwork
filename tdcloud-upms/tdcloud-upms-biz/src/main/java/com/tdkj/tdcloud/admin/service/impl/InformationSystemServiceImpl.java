package com.tdkj.tdcloud.admin.service.impl;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import cn.hutool.core.convert.Convert;
import com.tdkj.tdcloud.admin.api.dto.InformationSystemDTO;
import com.tdkj.tdcloud.admin.api.entity.InformationSystem;
import com.tdkj.tdcloud.admin.api.vo.InformationSystemVO;
import com.tdkj.tdcloud.admin.mapper.InformationSystemMapper;
import com.tdkj.tdcloud.admin.mapper.MasterDataMapper;
import com.tdkj.tdcloud.admin.service.InformationSystemService;
import com.tdkj.tdcloud.common.core.util.R;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;


/**
 * 信息系统名录Service业务层处理
 * 
 * @author lgs
 * @date 2023-04-12
 */
@Service
public class InformationSystemServiceImpl implements InformationSystemService
{
    @Resource
    private InformationSystemMapper informationSystemMapper;
    @Resource
	private MasterDataMapper masterDataMapper;


	@Override
	public R saveInformationSystem(InformationSystem informationSystem) {
		if (informationSystem.getId()==null){
			informationSystem.setCreateTime(new Date());
			int i = informationSystemMapper.insertInformationSystem(informationSystem);
			if (i==1){
				return R.ok("添加成功");
			}
		}else {
			int i = informationSystemMapper.updateInformationSystem(informationSystem);
			if (i==1){
				return R.ok("修改成功");
			}
		}
		return null;
	}

	@Override
	public R getInformationSystemList(InformationSystemDTO informationSystem) {
		if (informationSystem.getPage() == 0) informationSystem.setPage(1);
		informationSystem.setPage((informationSystem.getPage() - 1) * informationSystem.getPageSize());
		Map<String, Object> map = new HashMap<>();
		int total = informationSystemMapper.selectInfoSystemListTotal(informationSystem);
		if (total>0){
			List<InformationSystem> informationSystems = informationSystemMapper.selectInfoSystemList(informationSystem);
			for (InformationSystem is:informationSystems){
				if (is.getUseDept()!=null && !"".equals(is.getUseDept())){
					String dept = masterDataMapper.selectSysDeptById(Long.valueOf(is.getUseDept()));
					is.setDeptName(dept);
				}
			}
			map.put("total",total);
			map.put("informationSystems",informationSystems);
		}
		return R.ok(map,"列表数据");
	}

	@Override
	public R getInformationSystemInfo(Long id) {
		InformationSystem informationSystem = informationSystemMapper.selectInformationSystemById(id);
		if (informationSystem!=null){
			if (informationSystem.getUseDept()!=null && !"".equals(informationSystem.getUseDept())){
				String dept = masterDataMapper.selectSysDeptById(Long.valueOf(informationSystem.getUseDept()));
				informationSystem.setDeptName(dept);
			}
		}
		return R.ok(informationSystem,"详情信息");
	}

	@Override
	public R deleteInformationSystemInfo(List<Integer> idList) {
		if (idList.size()==0){
			return R.failed("id不能为空");
		}
		informationSystemMapper.deleteInfoSystemByIdList(idList);
		return R.ok();
	}


	@Override
	public List<InformationSystemVO> getExportInformationSystem(InformationSystemDTO informationSystemDTO) {
		List<InformationSystemVO> informationSystemList = informationSystemMapper.selectExportInfoSystemList(informationSystemDTO);
		if (informationSystemList.size()>0){
			for (InformationSystemVO is : informationSystemList){
				String dept = masterDataMapper.selectSysDeptById(Long.valueOf(is.getUseDept()));
				is.setUseDept(dept);
			}
		}
		return informationSystemList;
	}
}
