package com.tdkj.tdcloud.admin.controller;

import java.util.List;

import com.tdkj.tdcloud.admin.service.AgreementResourceService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


import javax.annotation.Resource;

/**
 * 协议书资源Controller
 * 
 * @author lgs
 * @date 2023-04-06
 */
@Controller
@RequestMapping("/agreementResource")
public class AgreementResourceController
{

    @Resource
    private AgreementResourceService agreementResourceService;


}
