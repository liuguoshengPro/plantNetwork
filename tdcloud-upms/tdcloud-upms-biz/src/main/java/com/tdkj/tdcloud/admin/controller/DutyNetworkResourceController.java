package com.tdkj.tdcloud.admin.controller;


import com.tdkj.tdcloud.admin.service.DutyNetworkResourceService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


import javax.annotation.Resource;

/**
 * 责任书中网络资源Controller
 * 
 * @author lgs
 * @date 2023-04-04
 */
@RestController
@RequestMapping("/networkResource")
public class DutyNetworkResourceController
{

    @Resource
    private DutyNetworkResourceService dutyNetworkResourceService;


}
