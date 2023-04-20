package com.tdkj.tdcloud.admin.service;

import com.tdkj.tdcloud.admin.api.entity.EmailSender;
import com.tdkj.tdcloud.common.core.util.R;

public interface PlantMailService {

	public R sendSimpleMail(EmailSender emailSender);

	//public R userRegister(EmailSender emailSender);
}

