package com.tdkj.tdcloud.admin.mapper;

import com.tdkj.tdcloud.admin.api.dto.InformationSystemDTO;
import com.tdkj.tdcloud.admin.api.entity.InformationSystem;
import com.tdkj.tdcloud.admin.api.vo.InformationSystemVO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 信息系统名录Mapper接口
 * 
 * @author lgs
 * @date 2023-04-12
 */
@Mapper
public interface InformationSystemMapper 
{
    /**
     * 查询信息系统名录
     * 
     * @param id 信息系统名录主键
     * @return 信息系统名录
     */
    public InformationSystem selectInformationSystemById(Long id);

    /**
     * 查询信息系统名录列表
     * 
     * @param informationSystem 信息系统名录
     * @return 信息系统名录集合
     */
    public List<InformationSystem> selectInformationSystemList(InformationSystem informationSystem);
    public List<InformationSystem> selectInfoSystemList(InformationSystemDTO informationSystemDTO);
    int selectInfoSystemListTotal(InformationSystemDTO informationSystemDTO);
	public List<InformationSystemVO> selectExportInfoSystemList(InformationSystemDTO informationSystemDTO);

    /**
     * 新增信息系统名录
     * 
     * @param informationSystem 信息系统名录
     * @return 结果
     */
    public int insertInformationSystem(InformationSystem informationSystem);

    /**
     * 修改信息系统名录
     * 
     * @param informationSystem 信息系统名录
     * @return 结果
     */
    public int updateInformationSystem(InformationSystem informationSystem);

    /**
     * 删除信息系统名录
     * 
     * @param id 信息系统名录主键
     * @return 结果
     */
    public int deleteInformationSystemById(Long id);
    public int deleteInfoSystemByIdList(@Param("idList") List<Integer> idList);

    /**
     * 批量删除信息系统名录
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteInformationSystemByIds(String[] ids);
}
