package com.nuts.mapper;

import com.nuts.domain.MemberVO;

public interface MemberMapper {

	public MemberVO read(String userid);

	public int update2(MemberVO vo);

	

	
}
