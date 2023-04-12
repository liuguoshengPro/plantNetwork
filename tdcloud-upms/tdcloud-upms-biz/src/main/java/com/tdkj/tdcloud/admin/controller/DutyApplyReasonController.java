package com.tdkj.tdcloud.admin.controller;

import java.util.List;

import com.tdkj.tdcloud.admin.api.entity.DutyApplyReason;
import com.tdkj.tdcloud.admin.service.DutyApplyReasonService;
import lombok.extern.java.Log;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;


/**
 * 责任书申请理由Controller
 * 
 * @author lgs
 * @date 2023-04-04
 */
@RestController
@RequestMapping("/applyReason")
public class DutyApplyReasonController
{

    @Autowired
    private DutyApplyReasonService dutyApplyReasonService;


}
