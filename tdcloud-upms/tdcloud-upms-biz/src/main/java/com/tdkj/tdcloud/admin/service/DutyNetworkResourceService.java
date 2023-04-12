package com.tdkj.tdcloud.admin.service;

import com.tdkj.tdcloud.admin.api.entity.DutyNetworkResource;

import java.util.List;

/**
 * 责任书中网络资源Service接口
 * 
 * @author lgs
 * @date 2023-04-04
 */
public interface DutyNetworkResourceService
{
    /**
     * 查询责任书中网络资源
     * 
     * @param id 责任书中网络资源主键
     * @return 责任书中网络资源
     */
    public DutyNetworkResource selectDutyNetworkResourceById(Long id);

    /**
     * 查询责任书中网络资源列表
     * 
     * @param dutyNetworkResource 责任书中网络资源
     * @return 责任书中网络资源集合
     */
    public List<DutyNetworkResource> selectDutyNetworkResourceList(DutyNetworkResource dutyNetworkResource);

    /**
     * 新增责任书中网络资源
     * 
     * @param dutyNetworkResource 责任书中网络资源
     * @return 结果
     */
    public int insertDutyNetworkResource(DutyNetworkResource dutyNetworkResource);

    /**
     * 修改责任书中网络资源
     * 
     * @param dutyNetworkResource 责任书中网络资源
     * @return 结果
     */
    public int updateDutyNetworkResource(DutyNetworkResource dutyNetworkResource);

    /**
     * 批量删除责任书中网络资源
     * 
     * @param ids 需要删除的责任书中网络资源主键集合
     * @return 结果
     */
    public int deleteDutyNetworkResourceByIds(String ids);

    /**
     * 删除责任书中网络资源信息
     * 
     * @param id 责任书中网络资源主键
     * @return 结果
     */
    public int deleteDutyNetworkResourceById(Long id);
}
