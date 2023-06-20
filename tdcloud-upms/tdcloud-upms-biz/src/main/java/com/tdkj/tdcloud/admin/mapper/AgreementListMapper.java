package com.tdkj.tdcloud.admin.mapper;

import com.tdkj.tdcloud.admin.api.entity.AgreementList;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * 申请协议书云主机清单Mapper接口
 * 
 * @author lgs
 * @date 2023-04-06
 */
@Mapper
public interface AgreementListMapper 
{
    /**
     * 查询申请协议书云主机清单
     * 
     * @param id 申请协议书云主机清单主键
     * @return 申请协议书云主机清单
     */
    public AgreementList selectAgreementListById(Long id);
    public List<AgreementList> selectAgreementListByMenuTypeId(Long menuTypeId);

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
     * 删除申请协议书云主机清单
     * 
     * @param id 申请协议书云主机清单主键
     * @return 结果
     */
    public int deleteAgreementListById(Long id);
    public int deleteAgreementListByMenuTypeId(Long menuTypeId);

    /**
     * 批量删除申请协议书云主机清单
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteAgreementListByIds(String[] ids);
}
