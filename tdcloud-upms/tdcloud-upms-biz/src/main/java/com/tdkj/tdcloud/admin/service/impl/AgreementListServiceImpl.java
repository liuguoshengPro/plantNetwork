package com.tdkj.tdcloud.admin.service.impl;

import java.util.Date;
import java.util.List;

import cn.hutool.core.convert.Convert;
import com.tdkj.tdcloud.admin.api.entity.AgreementList;
import com.tdkj.tdcloud.admin.mapper.AgreementListMapper;
import com.tdkj.tdcloud.admin.service.AgreementListService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import javax.annotation.Resource;

/**
 * 申请协议书云主机清单Service业务层处理
 * 
 * @author lgs
 * @date 2023-04-06
 */
@Service
public class AgreementListServiceImpl implements AgreementListService
{
    @Resource
    private AgreementListMapper agreementListMapper;

    /**
     * 查询申请协议书云主机清单
     * 
     * @param id 申请协议书云主机清单主键
     * @return 申请协议书云主机清单
     */
    @Override
    public AgreementList selectAgreementListById(Long id)
    {
        return agreementListMapper.selectAgreementListById(id);
    }

    /**
     * 查询申请协议书云主机清单列表
     * 
     * @param agreementList 申请协议书云主机清单
     * @return 申请协议书云主机清单
     */
    @Override
    public List<AgreementList> selectAgreementListList(AgreementList agreementList)
    {
        return agreementListMapper.selectAgreementListList(agreementList);
    }

    /**
     * 新增申请协议书云主机清单
     * 
     * @param agreementList 申请协议书云主机清单
     * @return 结果
     */
    @Override
    public int insertAgreementList(AgreementList agreementList)
    {
        agreementList.setCreateTime(new Date());
        return agreementListMapper.insertAgreementList(agreementList);
    }

    /**
     * 修改申请协议书云主机清单
     * 
     * @param agreementList 申请协议书云主机清单
     * @return 结果
     */
    @Override
    public int updateAgreementList(AgreementList agreementList)
    {
        return agreementListMapper.updateAgreementList(agreementList);
    }

    /**
     * 批量删除申请协议书云主机清单
     * 
     * @param ids 需要删除的申请协议书云主机清单主键
     * @return 结果
     */
    @Override
    public int deleteAgreementListByIds(String ids)
    {
        return agreementListMapper.deleteAgreementListByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除申请协议书云主机清单信息
     * 
     * @param id 申请协议书云主机清单主键
     * @return 结果
     */
    @Override
    public int deleteAgreementListById(Long id)
    {
        return agreementListMapper.deleteAgreementListById(id);
    }
}
