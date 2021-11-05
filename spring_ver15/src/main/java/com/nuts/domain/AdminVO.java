package com.nuts.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class AdminVO {

	private Long age, weight, point, score;
	private String userid, password, user_name, gender, phone;
	private Date reg_dt;
}
