package com.tdkj.tdcloud.admin.api.dto;

import org.springframework.web.multipart.MultipartFile;

public class UploadFileDTO {

	private Long masterId;
	private String itemType;
	private MultipartFile file;
}
