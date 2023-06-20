package com.tdkj.tdcloud.admin.mapper;

import com.tdkj.tdcloud.admin.api.dto.MenuTypeDto;
import com.tdkj.tdcloud.admin.api.entity.ChargeStandard;
import com.tdkj.tdcloud.admin.api.entity.MenuType;
import com.tdkj.tdcloud.admin.api.entity.UseDescription;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 主数据下两张数据Mapper接口
 * 
 * @author lgs
 * @date 2023-04-04
 */
@Mapper
public interface MenuTypeMapper 
{
    /**
     * 查询主数据下两张数据
     * 
     * @param id 主数据下两张数据主键
     * @return 主数据下两张数据
     */
    public MenuType selectMenuTypeById(Long id);
    public MenuType selectMenuTypeByMasterId(@Param("masterId") Long masterId,@Param("applyType")String applyType);
    public List<MenuType> selectDeleteMenuTypeByMasterId(@Param("masterId") Long masterId);
    public int selectMenuTypeByMasterIdTotal(@Param("masterId") Long masterId);
    public int updateChargeStandard(ChargeStandard chargeStandard);
    public int insertChargeStandard(ChargeStandard chargeStandard);
    public List<ChargeStandard> selectChargeStandardList(String itemType);
    public Double selectChargeStandardByItemType(@Param("configuration")String configuration,@Param("itemType")String itemType);
    public Double selectChargeStandardByIpItemType(@Param("itemType")String itemType);
    public int deleteChargeStandardId(Long id);

    /**
     * 查询主数据下两张数据列表
     * 
     * @param menuType 主数据下两张数据
     * @return 主数据下两张数据集合
     */
    public List<MenuType> selectMenuTypeList(MenuType menuType);

    /**
     * 新增主数据下两张数据
     * 
     * @param menuType 主数据下两张数据
     * @return 结果
     */
    public int insertMenuType(MenuTypeDto menuType);
    public int insertUseDescription(UseDescription useDescription);
    public UseDescription selectUseDescriptionByItemType(String itemType);
    public UseDescription selectUseDescriptionById(Long id);

    /**
     * 修改主数据下两张数据
     * 
     * @param menuType 主数据下两张数据
     * @return 结果
     */
    public int updateMenuType(MenuTypeDto menuType);
    public int updateUseDescription(UseDescription useDescription);

    /**
     * 删除主数据下两张数据
     * 
     * @param id 主数据下两张数据主键
     * @return 结果
     */
    public int deleteMenuTypeById(Long id);
    public int deleteMenuTypeByMasterId(Long masterId);

    /**
     * 批量删除主数据下两张数据
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteMenuTypeByIds(String[] ids);
}
