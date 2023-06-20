package com.tdkj.tdcloud.admin.mapper;

import com.tdkj.tdcloud.admin.api.entity.DutyNetworkResource;
import com.tdkj.tdcloud.admin.api.vo.DutyNetworkResourceVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * 责任书中网络资源Mapper接口
 * 
 * @author lgs
 * @date 2023-04-04
 */
@Mapper
public interface DutyNetworkResourceMapper 
{
    /**
     * 查询责任书中网络资源
     * 
     * @param id 责任书中网络资源主键
     * @return 责任书中网络资源
     */
    public DutyNetworkResource selectDutyNetworkResourceById(Long id);
    public List<DutyNetworkResource> selectDutyNetworkByMenuTypeId(Long menuTypeId);
    public List<DutyNetworkResourceVO> selectDutyNetworkByMenuTypeIdNew(Long menuTypeId);

    /**
     * 查询责任书中网络资源列表
     * 
     * @param dutyNetworkResource 责任书中网络资源
     * @return 责任书中网络资源集合
     */
    public List<DutyNetworkResource> selectDutyNetworkResourceList(DutyNetworkResource dutyNetworkResource);

    /**
     * 新增责任书中网络资源
     * 
     * @param dutyNetworkResource 责任书中网络资源
     * @return 结果
     */
    public int insertDutyNetworkResource(DutyNetworkResource dutyNetworkResource);

    /**
     * 修改责任书中网络资源
     * 
     * @param dutyNetworkResource 责任书中网络资源
     * @return 结果
     */
    public int updateDutyNetworkResource(DutyNetworkResource dutyNetworkResource);

    /**
     * 删除责任书中网络资源
     * 
     * @param id 责任书中网络资源主键
     * @return 结果
     */
    public int deleteDutyNetworkResourceById(Long id);
    public int deleteDutyNetworkResourceByMenuTypeId(Long menuTypeId);

    /**
     * 批量删除责任书中网络资源
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteDutyNetworkResourceByIds(String[] ids);
}
