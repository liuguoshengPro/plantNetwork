package com.tdkj.tdcloud.admin.mapper;

import com.tdkj.tdcloud.admin.api.dto.IpGradingReportDTO;
import com.tdkj.tdcloud.admin.api.entity.IpGradingReport;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * 网络安全等级保护定级报告Mapper接口
 * 
 * @author lgs
 * @date 2023-04-11
 */
@Mapper
public interface IpGradingReportMapper 
{
    /**
     * 查询网络安全等级保护定级报告
     * 
     * @param id 网络安全等级保护定级报告主键
     * @return 网络安全等级保护定级报告
     */
    public IpGradingReport selectIpGradingReportById(Long id);
    public IpGradingReport selectIpReportByMasterId(Long masterId);

    /**
     * 查询网络安全等级保护定级报告列表
     * 
     * @param ipGradingReport 网络安全等级保护定级报告
     * @return 网络安全等级保护定级报告集合
     */
    public List<IpGradingReport> selectIpGradingReportList(IpGradingReport ipGradingReport);

    /**
     * 新增网络安全等级保护定级报告
     * 
     * @param ipGradingReport 网络安全等级保护定级报告
     * @return 结果
     */
    public int insertIpGradingReport(IpGradingReportDTO ipGradingReport);

    /**
     * 修改网络安全等级保护定级报告
     * 
     * @param ipGradingReport 网络安全等级保护定级报告
     * @return 结果
     */
    public int updateIpGradingReport(IpGradingReportDTO ipGradingReport);

    /**
     * 删除网络安全等级保护定级报告
     * 
     * @param id 网络安全等级保护定级报告主键
     * @return 结果
     */
    public int deleteIpGradingReportById(Long id);

    /**
     * 批量删除网络安全等级保护定级报告
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteIpGradingReportByIds(String[] ids);
}
