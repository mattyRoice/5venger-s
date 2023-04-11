package org.hub.domain;

import lombok.Data;

@Data
public class UserAttachVO {
	
	private String uidkey;
	
	private String uuid;
	private String uploadPath;
	private String fileName;
	private boolean fileType;
	
	
}
