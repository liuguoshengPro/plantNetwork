package com.tdkj.tdcloud.admin.service;

import com.tdkj.tdcloud.admin.api.entity.AgreementResource;

import java.util.List;

/**
 * 协议书资源Service接口
 * 
 * @author lgs
 * @date 2023-04-06
 */
public interface AgreementResourceService
{
    /**
     * 查询协议书资源
     * 
     * @param id 协议书资源主键
     * @return 协议书资源
     */
    public AgreementResource selectAgreementResourceById(Long id);

    /**
     * 查询协议书资源列表
     * 
     * @param agreementResource 协议书资源
     * @return 协议书资源集合
     */
    public List<AgreementResource> selectAgreementResourceList(AgreementResource agreementResource);

    /**
     * 新增协议书资源
     * 
     * @param agreementResource 协议书资源
     * @return 结果
     */
    public int insertAgreementResource(AgreementResource agreementResource);

    /**
     * 修改协议书资源
     * 
     * @param agreementResource 协议书资源
     * @return 结果
     */
    public int updateAgreementResource(AgreementResource agreementResource);

    /**
     * 批量删除协议书资源
     * 
     * @param ids 需要删除的协议书资源主键集合
     * @return 结果
     */
    public int deleteAgreementResourceByIds(String ids);

    /**
     * 删除协议书资源信息
     * 
     * @param id 协议书资源主键
     * @return 结果
     */
    public int deleteAgreementResourceById(Long id);
}
