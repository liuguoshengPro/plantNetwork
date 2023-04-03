package com.tdkj.tdcloud.codegen.controller;

import com.tdkj.tdcloud.codegen.entity.GenConfig;
import com.tdkj.tdcloud.codegen.service.GenDynamicService;
import com.tdkj.tdcloud.codegen.util.SqlDto;
import com.tdkj.tdcloud.common.core.util.R;
import com.tdkj.tdcloud.common.security.annotation.Inner;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.LinkedHashMap;
import java.util.List;

/**
 * @author tdcloud
 * @date 2022/7/9
 *
 * 动态数据 无代码
 */
@RestController
@Inner(value = false)
@RequiredArgsConstructor
@RequestMapping("/dynamic")
@Tag(description = "dynamic", name = "无代码管理")
public class GenDynamicController {

	private final GenDynamicService dynamicService;

	@GetMapping("/gen")
	public R genCode(GenConfig genConfig) {
		return R.ok(dynamicService.run(genConfig));
	}

	@PostMapping("/dynamic-query")
	public R dynamicQuery(@RequestBody SqlDto sqlDto) {
		List<LinkedHashMap<String, Object>> linkedHashMaps = dynamicService.dynamicQuery(sqlDto);
		return R.ok(linkedHashMaps);
	}

}
