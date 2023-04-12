package com.tdkj.tdcloud.admin.service.impl;

import java.util.Date;
import java.util.List;

import cn.hutool.core.convert.Convert;
import com.tdkj.tdcloud.admin.api.entity.DutyApplyReason;
import com.tdkj.tdcloud.admin.mapper.DutyApplyReasonMapper;
import com.tdkj.tdcloud.admin.service.DutyApplyReasonService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * 责任书申请理由Service业务层处理
 * 
 * @author lgs
 * @date 2023-04-04
 */
@Service
public class DutyApplyReasonServiceImpl implements DutyApplyReasonService
{
    @Resource
    private DutyApplyReasonMapper dutyApplyReasonMapper;

    /**
     * 查询责任书申请理由
     * 
     * @param id 责任书申请理由主键
     * @return 责任书申请理由
     */
    @Override
    public DutyApplyReason selectDutyApplyReasonById(Long id)
    {
        return dutyApplyReasonMapper.selectDutyApplyReasonById(id);
    }

    /**
     * 查询责任书申请理由列表
     * 
     * @param dutyApplyReason 责任书申请理由
     * @return 责任书申请理由
     */
    @Override
    public List<DutyApplyReason> selectDutyApplyReasonList(DutyApplyReason dutyApplyReason)
    {
        return dutyApplyReasonMapper.selectDutyApplyReasonList(dutyApplyReason);
    }

    /**
     * 新增责任书申请理由
     * 
     * @param dutyApplyReason 责任书申请理由
     * @return 结果
     */
    @Override
    public int insertDutyApplyReason(DutyApplyReason dutyApplyReason)
    {
        dutyApplyReason.setCreateTime(new Date());
        return dutyApplyReasonMapper.insertDutyApplyReason(dutyApplyReason);
    }

    /**
     * 修改责任书申请理由
     * 
     * @param dutyApplyReason 责任书申请理由
     * @return 结果
     */
    @Override
    public int updateDutyApplyReason(DutyApplyReason dutyApplyReason)
    {
        return dutyApplyReasonMapper.updateDutyApplyReason(dutyApplyReason);
    }

    /**
     * 批量删除责任书申请理由
     * 
     * @param ids 需要删除的责任书申请理由主键
     * @return 结果
     */
    @Override
    public int deleteDutyApplyReasonByIds(String ids)
    {
        return dutyApplyReasonMapper.deleteDutyApplyReasonByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除责任书申请理由信息
     * 
     * @param id 责任书申请理由主键
     * @return 结果
     */
    @Override
    public int deleteDutyApplyReasonById(Long id)
    {
        return dutyApplyReasonMapper.deleteDutyApplyReasonById(id);
    }
}
