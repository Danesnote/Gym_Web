package com.nuts.domain;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class BoardVO {

	private Long bno;
	private String title;
	private String content;
	private String writer;
	private Date regdate;
	private Date updateDate;

	private int replyCnt;
	
	private List<BoardAttachVO> attachList;
	
	private Long eno;
	private String userid;
	private String exid;
	private Date extime_s;
	private Date extime_e;
}
