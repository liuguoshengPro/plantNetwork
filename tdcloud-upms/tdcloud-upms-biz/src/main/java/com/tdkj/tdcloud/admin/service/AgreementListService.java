package com.tdkj.tdcloud.admin.service;

import com.tdkj.tdcloud.admin.api.entity.AgreementList;

import java.util.List;

/**
 * 申请协议书云主机清单Service接口
 * 
 * @author lgs
 * @date 2023-04-06
 */
public interface AgreementListService
{
    /**
     * 查询申请协议书云主机清单
     * 
     * @param id 申请协议书云主机清单主键
     * @return 申请协议书云主机清单
     */
    public AgreementList selectAgreementListById(Long id);

    /**
     * 查询申请协议书云主机清单列表
     * 
     * @param agreementList 申请协议书云主机清单
     * @return 申请协议书云主机清单集合
     */
    public List<AgreementList> selectAgreementListList(AgreementList agreementList);

    /**
     * 新增申请协议书云主机清单
     * 
     * @param agreementList 申请协议书云主机清单
     * @return 结果
     */
    public int insertAgreementList(AgreementList agreementList);

    /**
     * 修改申请协议书云主机清单
     * 
     * @param agreementList 申请协议书云主机清单
     * @return 结果
     */
    public int updateAgreementList(AgreementList agreementList);

    /**
     * 批量删除申请协议书云主机清单
     * 
     * @param ids 需要删除的申请协议书云主机清单主键集合
     * @return 结果
     */
    public int deleteAgreementListByIds(String ids);

    /**
     * 删除申请协议书云主机清单信息
     * 
     * @param id 申请协议书云主机清单主键
     * @return 结果
     */
    public int deleteAgreementListById(Long id);
}
