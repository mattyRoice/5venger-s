package org.hub.domain;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
public class StackVO {
	private int sno;
	private String sname;
	private String icon;
	private String dept;
}
