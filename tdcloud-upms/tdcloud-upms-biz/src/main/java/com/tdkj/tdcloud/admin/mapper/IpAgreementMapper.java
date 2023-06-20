package com.tdkj.tdcloud.admin.mapper;

import com.tdkj.tdcloud.admin.api.entity.IpAgreement;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * IP地址申请协议书Mapper接口
 * 
 * @author lgs
 * @date 2023-06-07
 */
@Mapper
public interface IpAgreementMapper 
{
    /**
     * 查询IP地址申请协议书
     * 
     * @param id IP地址申请协议书主键
     * @return IP地址申请协议书
     */
    public IpAgreement selectIpAgreementById(Long id);
    public IpAgreement selectIpAgreementByMasterId(Long masterId);
    public IpAgreement selectIpAgreementByMasterIdAndApplyType(@Param("masterId")Long masterId,@Param("applyType")String applyType);

    /**
     * 查询IP地址申请协议书列表
     * 
     * @param ipAgreement IP地址申请协议书
     * @return IP地址申请协议书集合
     */
    public List<IpAgreement> selectIpAgreementList(IpAgreement ipAgreement);

    /**
     * 新增IP地址申请协议书
     * 
     * @param ipAgreement IP地址申请协议书
     * @return 结果
     */
    public int insertIpAgreement(IpAgreement ipAgreement);

    /**
     * 修改IP地址申请协议书
     * 
     * @param ipAgreement IP地址申请协议书
     * @return 结果
     */
    public int updateIpAgreement(IpAgreement ipAgreement);

    /**
     * 删除IP地址申请协议书
     * 
     * @param id IP地址申请协议书主键
     * @return 结果
     */
    public int deleteIpAgreementById(Long id);
    public int deleteIpAgreementByMasterId(Long masterId);

    /**
     * 批量删除IP地址申请协议书
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteIpAgreementByIds(String[] ids);
}
