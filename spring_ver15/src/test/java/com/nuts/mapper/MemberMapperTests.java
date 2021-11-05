package com.nuts.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.nuts.domain.MemberVO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j

public class MemberMapperTests {
	@Autowired
	private MemberMapper mapper;
	
	@Test
	public void testUpdate() {
		
		MemberVO vo = new MemberVO();
		
		vo.setUser_name("바보");
		vo.setAge(0);
		vo.setWeight(0);
		vo.setGender("M");
		vo.setPhone("0");
		vo.setUserid("user01");
		mapper.update2(vo);
		
	}
	
}
