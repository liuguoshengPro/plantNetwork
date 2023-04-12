package com.tdkj.tdcloud.admin.service.impl;

import java.util.Date;
import java.util.List;

import cn.hutool.core.convert.Convert;
import com.tdkj.tdcloud.admin.api.entity.DutyNetworkResource;
import com.tdkj.tdcloud.admin.mapper.DutyNetworkResourceMapper;
import com.tdkj.tdcloud.admin.service.DutyNetworkResourceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;


/**
 * 责任书中网络资源Service业务层处理
 * 
 * @author lgs
 * @date 2023-04-04
 */
@Service
public class DutyNetworkResourceServiceImpl implements DutyNetworkResourceService
{
    @Resource
    private DutyNetworkResourceMapper dutyNetworkResourceMapper;

    /**
     * 查询责任书中网络资源
     * 
     * @param id 责任书中网络资源主键
     * @return 责任书中网络资源
     */
    @Override
    public DutyNetworkResource selectDutyNetworkResourceById(Long id)
    {
        return dutyNetworkResourceMapper.selectDutyNetworkResourceById(id);
    }

    /**
     * 查询责任书中网络资源列表
     * 
     * @param dutyNetworkResource 责任书中网络资源
     * @return 责任书中网络资源
     */
    @Override
    public List<DutyNetworkResource> selectDutyNetworkResourceList(DutyNetworkResource dutyNetworkResource)
    {
        return dutyNetworkResourceMapper.selectDutyNetworkResourceList(dutyNetworkResource);
    }

    /**
     * 新增责任书中网络资源
     * 
     * @param dutyNetworkResource 责任书中网络资源
     * @return 结果
     */
    @Override
    public int insertDutyNetworkResource(DutyNetworkResource dutyNetworkResource)
    {
        dutyNetworkResource.setCreateTime(new Date());
        return dutyNetworkResourceMapper.insertDutyNetworkResource(dutyNetworkResource);
    }

    /**
     * 修改责任书中网络资源
     * 
     * @param dutyNetworkResource 责任书中网络资源
     * @return 结果
     */
    @Override
    public int updateDutyNetworkResource(DutyNetworkResource dutyNetworkResource)
    {
        return dutyNetworkResourceMapper.updateDutyNetworkResource(dutyNetworkResource);
    }

    /**
     * 批量删除责任书中网络资源
     * 
     * @param ids 需要删除的责任书中网络资源主键
     * @return 结果
     */
    @Override
    public int deleteDutyNetworkResourceByIds(String ids)
    {
        return dutyNetworkResourceMapper.deleteDutyNetworkResourceByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除责任书中网络资源信息
     * 
     * @param id 责任书中网络资源主键
     * @return 结果
     */
    @Override
    public int deleteDutyNetworkResourceById(Long id)
    {
        return dutyNetworkResourceMapper.deleteDutyNetworkResourceById(id);
    }
}
