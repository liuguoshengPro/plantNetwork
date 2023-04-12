package com.tdkj.tdcloud.admin.api.entity;

import lombok.Data;

@Data
public class EmailSender {

	public String toEmail;
	public String code;
	public String name;
	public String emailType;
	public String passWord;

}
