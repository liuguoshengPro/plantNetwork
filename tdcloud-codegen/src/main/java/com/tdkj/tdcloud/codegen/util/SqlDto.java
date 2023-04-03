package com.tdkj.tdcloud.codegen.util;

import lombok.Data;

/**
 * @author tdcloud
 * @date 2022/5/2
 */
@Data
public class SqlDto {

	/**
	 * 数据源ID
	 */
	private String dsName;

	/**
	 * sql脚本
	 */
	private String sql;

}
