package org.hub.domain;

import java.time.LocalDate;

import lombok.Data;

@Data
public class BoardAttachVO {
	private String uuid;
	private String uploadPath;
	private String fileName;
	private boolean fileType;
	
	private String uidkey;
}
