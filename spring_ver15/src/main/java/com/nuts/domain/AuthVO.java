package com.nuts.domain;


import lombok.Data;

@Data // 회원 권한을 위한 변수들 (user_auth 테이블)
public class AuthVO { 

  private String userid;
  private String auth;
  
}
