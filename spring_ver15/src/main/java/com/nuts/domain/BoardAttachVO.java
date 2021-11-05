package com.nuts.domain;

import lombok.Data;

@Data
public class BoardAttachVO { // 파일업로드시 필요한 정보들

  private String uuid;
  private String uploadPath;
  private String fileName;
  private boolean fileType;
  
  private Long bno;
  
}
