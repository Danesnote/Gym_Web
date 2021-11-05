package com.nuts.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.beans.factory.annotation.Autowired;


import lombok.Setter;

import com.nuts.domain.MemberVO;
import com.nuts.mapper.MemberMapper;


@Service
public class MemberServiceImpl implements MemberService{

	@Setter(onMethod_ = @Autowired)
	private MemberMapper mapper;
	
	@Transactional
	@Override
	public boolean modify(MemberVO vo) {


		boolean modifyResult = mapper.update2(vo) == 1;
		
		

		return modifyResult;
	}

}
