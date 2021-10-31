package com.nuts.domain;

import java.util.Date;

import lombok.Data;

@Data
public class JoinVO {

	private String userid;
	private String password;
	private String user_name;
	private float age;
	private float weight;
	private String gender;
	private String phone;
	private String email_auth_key;
	private String email_auth_yn;
	private Date reg_dt;
	private String is_admin;
	private int point;
	private int score;
	private String pt_userid;
	private String enabled;
	private String auth;
	
	
}
