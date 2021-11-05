package com.nuts.domain;

import java.util.Date;

import lombok.Data;

@Data
public class ReplyVO {
 // 댓글 CRUD에 쓰이는 변수들 (reply_tb 테이블)
  private Long rno;
  private Long bno;

  private String reply;
  private String replyer;
  private Date replyDate;
  private Date updateDate;

}
