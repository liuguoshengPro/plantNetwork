package com.tdkj.tdcloud.admin.service;

import com.tdkj.tdcloud.admin.api.entity.DutyApplyReason;

import java.util.List;

/**
 * 责任书申请理由Service接口
 * 
 * @author lgs
 * @date 2023-04-04
 */
public interface DutyApplyReasonService
{
    /**
     * 查询责任书申请理由
     * 
     * @param id 责任书申请理由主键
     * @return 责任书申请理由
     */
    public DutyApplyReason selectDutyApplyReasonById(Long id);

    /**
     * 查询责任书申请理由列表
     * 
     * @param dutyApplyReason 责任书申请理由
     * @return 责任书申请理由集合
     */
    public List<DutyApplyReason> selectDutyApplyReasonList(DutyApplyReason dutyApplyReason);

    /**
     * 新增责任书申请理由
     * 
     * @param dutyApplyReason 责任书申请理由
     * @return 结果
     */
    public int insertDutyApplyReason(DutyApplyReason dutyApplyReason);

    /**
     * 修改责任书申请理由
     * 
     * @param dutyApplyReason 责任书申请理由
     * @return 结果
     */
    public int updateDutyApplyReason(DutyApplyReason dutyApplyReason);

    /**
     * 批量删除责任书申请理由
     * 
     * @param ids 需要删除的责任书申请理由主键集合
     * @return 结果
     */
    public int deleteDutyApplyReasonByIds(String ids);

    /**
     * 删除责任书申请理由信息
     * 
     * @param id 责任书申请理由主键
     * @return 结果
     */
    public int deleteDutyApplyReasonById(Long id);
}
