/*
 *
 *      Copyright (c) 2018-2025, tdcloud All rights reserved.
 *
 *  Redistribution and use in source and binary forms, with or without
 *  modification, are permitted provided that the following conditions are met:
 *
 * Redistributions of source code must retain the above copyright notice,
 *  this list of conditions and the following disclaimer.
 *  Redistributions in binary form must reproduce the above copyright
 *  notice, this list of conditions and the following disclaimer in the
 *  documentation and/or other materials provided with the distribution.
 *  Neither the name of the pig4cloud.com developer nor the names of its
 *  contributors may be used to endorse or promote products derived from
 *  this software without specific prior written permission.
 *  Author: tdcloud
 *
 */

package com.tdkj.tdcloud;

import com.tdkj.tdcloud.common.security.annotation.EnableTdcloudResourceServer;
import com.tdkj.tdcloud.common.swagger.annotation.EnableOpenApi;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;


@SpringBootApplication
@EnableTdcloudResourceServer
@EnableOpenApi(value = "admin", isMicro = false)
public class TdcloudAdminApplication {

	public static void main(String[] args) {
		SpringApplication.run(TdcloudAdminApplication.class, args);
	}

}
