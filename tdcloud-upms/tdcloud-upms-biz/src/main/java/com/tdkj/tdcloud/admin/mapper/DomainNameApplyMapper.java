package com.tdkj.tdcloud.admin.mapper;

import com.tdkj.tdcloud.admin.api.dto.DomainNameApplyDTO;
import com.tdkj.tdcloud.admin.api.entity.DomainNameApply;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * DNS域名解析申请Mapper接口
 * 
 * @author lgs
 * @date 2023-04-12
 */
@Mapper
public interface DomainNameApplyMapper 
{
    /**
     * 查询DNS域名解析申请
     * 
     * @param id DNS域名解析申请主键
     * @return DNS域名解析申请
     */
    public DomainNameApply selectDomainNameApplyById(Long id);
    public DomainNameApply selectDomainByMasterId(Long masterId);

    /**
     * 查询DNS域名解析申请列表
     * 
     * @param domainNameApply DNS域名解析申请
     * @return DNS域名解析申请集合
     */
    public List<DomainNameApply> selectDomainNameApplyList(DomainNameApply domainNameApply);

    /**
     * 新增DNS域名解析申请
     * 
     * @param domainNameApply DNS域名解析申请
     * @return 结果
     */
    public int insertDomainNameApply(DomainNameApplyDTO domainNameApply);

    /**
     * 修改DNS域名解析申请
     * 
     * @param domainNameApply DNS域名解析申请
     * @return 结果
     */
    public int updateDomainNameApply(DomainNameApplyDTO domainNameApply);

    /**
     * 删除DNS域名解析申请
     * 
     * @param id DNS域名解析申请主键
     * @return 结果
     */
    public int deleteDomainNameApplyById(Long id);

    /**
     * 批量删除DNS域名解析申请
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteDomainNameApplyByIds(String[] ids);
}
