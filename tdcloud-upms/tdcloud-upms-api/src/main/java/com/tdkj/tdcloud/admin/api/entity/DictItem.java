package com.tdkj.tdcloud.admin.api.entity;

import lombok.Data;

import java.io.Serializable;
import java.util.List;

@Data
public class DictItem implements Serializable {
	private static final long serialVersionUID = 2337404730751931823L;

	private Integer id;
	private Integer dictId;
	private String value;
	private String DateType;
	private String label;
	private Integer num;
	private List<DictItem> children;
	

}
