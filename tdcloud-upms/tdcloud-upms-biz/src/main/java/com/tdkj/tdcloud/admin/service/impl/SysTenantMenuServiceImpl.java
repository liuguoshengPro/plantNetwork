package com.tdkj.tdcloud.admin.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.tdkj.tdcloud.admin.api.entity.SysTenantMenu;
import com.tdkj.tdcloud.admin.mapper.SysTenantMenuMapper;
import com.tdkj.tdcloud.admin.service.SysTenantMenuService;
import org.springframework.stereotype.Service;

/**
 * 租户菜单管理
 */
@Service
public class SysTenantMenuServiceImpl extends ServiceImpl<SysTenantMenuMapper, SysTenantMenu>
		implements SysTenantMenuService {

	@Override
	public Boolean saveTenant(SysTenantMenu sysTenantMenu) {
		return this.save(sysTenantMenu);
	}

}
