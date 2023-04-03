package com.tdkj.tdcloud.admin.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.tdkj.tdcloud.admin.api.entity.SysTenantMenu;

public interface SysTenantMenuService extends IService<SysTenantMenu> {

	Boolean saveTenant(SysTenantMenu sysTenantMenu);

}
