package com.tdkj.tdcloud.admin.mapper;

import java.util.Date;
import java.util.List;

import com.tdkj.tdcloud.admin.api.dto.MasterDataDto;
import com.tdkj.tdcloud.admin.api.entity.MasterData;
import com.tdkj.tdcloud.admin.api.entity.MonthStatistics;
import com.tdkj.tdcloud.admin.api.entity.SysDept;
import com.tdkj.tdcloud.admin.api.entity.SysFile;
import com.tdkj.tdcloud.admin.api.vo.MasterDataVO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

/**
 * 主数据Mapper接口
 * 
 * @author lgs
 * @date 2023-04-03
 */
@Mapper
public interface MasterDataMapper 
{
    /**
     * 查询主数据
     * 
     * @param id 主数据主键
     * @return 主数据
     */
    public MasterData selectMasterDataById(Long id);
    public String selectSysUserByUserId(@Param("userId")Long userId);
    public List<SysDept> selectSysDept(@Param("parentId")Long parentId);
    public String selectSysDeptById(@Param("deptId")Long deptId);
    public MasterData selectMasterDataByAuditStatus(@Param("userId")Long userId,@Param("itemType")String itemType);
    public List<SysFile> selectFileByMasterId(@Param("masterId")Long masterId, @Param("itemType")String itemType);

    /**
     * 查询主数据列表
     * 
     * @param
     * @return 主数据集合
     */
    public List<MasterData> selectMasterDataList(MasterDataDto masterDataDto);
    public List<MasterDataVO> selectExportMasterDataList(MasterDataDto masterDataDto);
    public int selectMasterDataListTotal(MasterDataDto masterDataDto);

    /**
     * 新增主数据
     * 
     * @param masterData 主数据
     * @return 结果
     */
    public int insertMasterData(MasterData masterData);

    /**
     * 修改主数据
     * 
     * @param masterData 主数据
     * @return 结果
     */
    public int updateMasterData(MasterData masterData);
    public int updateMasterDataAuditStatus(@Param("auditStatus") String auditStatus, @Param("masterId") Long masterId, @Param("auditTime")Date auditTime);
    public int updateMasterDataAllocationStatus(@Param("allocationStatus") String allocationStatus,@Param("masterId") Long masterId);

    /**
     * 删除主数据
     * 
     * @param id 主数据主键
     * @return 结果
     */
    public int deleteMasterDataById(Long id);

    /**
     * 批量删除主数据
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteMasterDataByIds(String[] ids);
    public int selectNotAudit(@Param("auditStatus") String auditStatus,@Param("itemType")String itemType);
    public List<MonthStatistics> selectAllMasterData(@Param("year") String year,@Param("itemType")String itemType);
}
