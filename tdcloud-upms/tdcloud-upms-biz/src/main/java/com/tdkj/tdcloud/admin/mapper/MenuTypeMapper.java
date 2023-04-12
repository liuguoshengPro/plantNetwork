package com.tdkj.tdcloud.admin.mapper;

import com.tdkj.tdcloud.admin.api.dto.MenuTypeDto;
import com.tdkj.tdcloud.admin.api.entity.MenuType;
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
    public int selectMenuTypeByMasterIdTotal(@Param("masterId") Long masterId);

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

    /**
     * 修改主数据下两张数据
     * 
     * @param menuType 主数据下两张数据
     * @return 结果
     */
    public int updateMenuType(MenuTypeDto menuType);

    /**
     * 删除主数据下两张数据
     * 
     * @param id 主数据下两张数据主键
     * @return 结果
     */
    public int deleteMenuTypeById(Long id);

    /**
     * 批量删除主数据下两张数据
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteMenuTypeByIds(String[] ids);
}
