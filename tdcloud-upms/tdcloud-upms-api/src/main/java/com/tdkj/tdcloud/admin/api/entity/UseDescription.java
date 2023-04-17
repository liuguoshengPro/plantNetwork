package com.tdkj.tdcloud.admin.api.entity;

import lombok.Data;

import java.util.Date;

@Data
public class UseDescription {

	private Long id;

	private String content;

	private Date createTime;

	private String itemType;
}
