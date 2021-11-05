package com.nuts.domain;

import lombok.Data;

@Data
public class AttachFileDTO {
	//파일업로드에 필요한 변수들
	private String fileName;
	private String uploadPath;
	private String uuid;
	private boolean image;

}
