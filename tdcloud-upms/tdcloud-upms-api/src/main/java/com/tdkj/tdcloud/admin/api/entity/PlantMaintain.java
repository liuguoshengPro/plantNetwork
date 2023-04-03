/*
 *    Copyright (c) 2018-2025, tdcloud All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 * Redistributions of source code must retain the above copyright notice,
 * this list of conditions and the following disclaimer.
 * Redistributions in binary form must reproduce the above copyright
 * notice, this list of conditions and the following disclaimer in the
 * documentation and/or other materials provided with the distribution.
 * Neither the name of the pig4cloud.com developer nor the names of its
 * contributors may be used to endorse or promote products derived from
 * this software without specific prior written permission.
 * Author: tdcloud
 */

package com.tdkj.tdcloud.admin.api.entity;


import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import lombok.Data;
import lombok.EqualsAndHashCode;
import java.io.Serializable;
import java.time.LocalDateTime;

/**
 * 维护信息数据
 *
 * @author pigx code generator
 * @date 2023-03-29 14:16:38
 */
@Data
//@TableName("plant_maintain")
@EqualsAndHashCode(callSuper = true)
public class PlantMaintain extends Model<PlantMaintain> {

    private static final long serialVersionUID = 1L;

    /**
     * id
     */
    //@TableId(type = IdType.ASSIGN_ID)
    private Integer id;

    /**
     * 维护问题
     */
    private String maintainProblem;

    /**
     * 维护单位及人员
     */
    private String maintainUnit;

    /**
     * 维护人员
     */
    private String maintainUser;

    /**
     * 维护时间
     */
    private LocalDateTime maintainTime;

    /**
     * 解决办法
     */
    private String solution;

    /**
     * 创建时间
     */
    private LocalDateTime createTime;

    /**
     * 问题是否解决0 否 1是
     */
    private String isSolve;

    /**
     * 其他填写
     */
    private String problemOther;

    /**
     * 维护内容
     */
    private String maintainContent;

}
