package com.tdkj.tdcloud.admin.mapper;

import com.tdkj.tdcloud.admin.api.entity.CheckReason;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * 审核原因备注Mapper接口
 * 
 * @author lgs
 * @date 2022-12-30
 */
@Mapper
public interface CheckReasonMapper 
{
    /**
     * 查询审核原因备注
     * 
     * @param id 审核原因备注主键
     * @return 审核原因备注
     */
    public CheckReason selectCheckReasonById(Long id);
    public List<CheckReason> selectCRByMasterId(Long masterId);

    /**
     * 查询审核原因备注列表
     * 
     * @param checkReason 审核原因备注
     * @return 审核原因备注集合
     */
    public List<CheckReason> selectCheckReasonList(CheckReason checkReason);

    /**
     * 新增审核原因备注
     * 
     * @param checkReason 审核原因备注
     * @return 结果
     */
    public int insertCheckReason(CheckReason checkReason);

    /**
     * 修改审核原因备注
     * 
     * @param checkReason 审核原因备注
     * @return 结果
     */
    public int updateCheckReason(CheckReason checkReason);

    /**
     * 删除审核原因备注
     * 
     * @param id 审核原因备注主键
     * @return 结果
     */
    public int deleteCheckReasonById(Long id);
    public int deleteCheckReasonByBusinessCode(String businessCode);

    /**
     * 批量删除审核原因备注
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteCheckReasonByIds(String[] ids);
}
