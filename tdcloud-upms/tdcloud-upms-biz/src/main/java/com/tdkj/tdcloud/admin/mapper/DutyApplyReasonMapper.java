package com.tdkj.tdcloud.admin.mapper;

import java.util.List;

import com.tdkj.tdcloud.admin.api.entity.DutyApplyReason;
import org.apache.ibatis.annotations.Mapper;

/**
 * 责任书申请理由Mapper接口
 * 
 * @author lgs
 * @date 2023-04-04
 */
@Mapper
public interface DutyApplyReasonMapper 
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
    public List<DutyApplyReason> selectDutyApplyByMenuTypeId(Long menuTypeId);

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
     * 删除责任书申请理由
     * 
     * @param id 责任书申请理由主键
     * @return 结果
     */
    public int deleteDutyApplyReasonById(Long id);
    public int deleteDutyApplyReasonByMenuTypeId(Long menuTypeId);

    /**
     * 批量删除责任书申请理由
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteDutyApplyReasonByIds(String[] ids);
}
