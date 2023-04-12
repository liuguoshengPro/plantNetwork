package com.tdkj.tdcloud.admin.service.impl;

import java.util.Date;
import java.util.List;

import cn.hutool.core.convert.Convert;
import com.tdkj.tdcloud.admin.api.entity.AgreementResource;
import com.tdkj.tdcloud.admin.mapper.AgreementResourceMapper;
import com.tdkj.tdcloud.admin.service.AgreementResourceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import javax.annotation.Resource;

/**
 * 协议书资源Service业务层处理
 * 
 * @author lgs
 * @date 2023-04-06
 */
@Service
public class AgreementResourceServiceImpl implements AgreementResourceService
{
    @Resource
    private AgreementResourceMapper agreementResourceMapper;

    /**
     * 查询协议书资源
     * 
     * @param id 协议书资源主键
     * @return 协议书资源
     */
    @Override
    public AgreementResource selectAgreementResourceById(Long id)
    {
        return agreementResourceMapper.selectAgreementResourceById(id);
    }

    /**
     * 查询协议书资源列表
     * 
     * @param agreementResource 协议书资源
     * @return 协议书资源
     */
    @Override
    public List<AgreementResource> selectAgreementResourceList(AgreementResource agreementResource)
    {
        return agreementResourceMapper.selectAgreementResourceList(agreementResource);
    }

    /**
     * 新增协议书资源
     * 
     * @param agreementResource 协议书资源
     * @return 结果
     */
    @Override
    public int insertAgreementResource(AgreementResource agreementResource)
    {
        agreementResource.setCreateTime(new Date());
        return agreementResourceMapper.insertAgreementResource(agreementResource);
    }

    /**
     * 修改协议书资源
     * 
     * @param agreementResource 协议书资源
     * @return 结果
     */
    @Override
    public int updateAgreementResource(AgreementResource agreementResource)
    {
        return agreementResourceMapper.updateAgreementResource(agreementResource);
    }

    /**
     * 批量删除协议书资源
     * 
     * @param ids 需要删除的协议书资源主键
     * @return 结果
     */
    @Override
    public int deleteAgreementResourceByIds(String ids)
    {
        return agreementResourceMapper.deleteAgreementResourceByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除协议书资源信息
     * 
     * @param id 协议书资源主键
     * @return 结果
     */
    @Override
    public int deleteAgreementResourceById(Long id)
    {
        return agreementResourceMapper.deleteAgreementResourceById(id);
    }
}
