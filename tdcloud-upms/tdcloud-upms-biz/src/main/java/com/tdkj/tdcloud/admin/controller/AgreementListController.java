package com.tdkj.tdcloud.admin.controller;

import java.util.List;

import com.tdkj.tdcloud.admin.api.entity.AgreementList;
import com.tdkj.tdcloud.admin.service.AgreementListService;
import lombok.extern.java.Log;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;


/**
 * 申请协议书云主机清单Controller
 * 
 * @author lgs
 * @date 2023-04-06
 */
@Controller
@RequestMapping("/agreementList")
public class AgreementListController
{

    @Resource
    private AgreementListService agreementListService;


}
