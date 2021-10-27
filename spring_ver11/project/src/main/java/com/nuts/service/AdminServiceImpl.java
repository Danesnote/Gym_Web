package com.nuts.service;

import java.util.List;

import org.springframework.stereotype.Service;
import com.nuts.domain.AdminVO;
import com.nuts.mapper.AdminMapper;

import lombok.RequiredArgsConstructor;
import lombok.ToString;

@Service
@RequiredArgsConstructor
@ToString
public class AdminServiceImpl implements AdminService{

	private final AdminMapper mapper;

	@Override
	public String register(AdminVO admin) {
		
		mapper.insertSelectKey(admin);
		
		return admin.getUserid();
		
	}

	@Override
	public AdminVO get(String userid) {
		
		return mapper.read(userid);
	}

	@Override
	public int modify(AdminVO board) {
		
		return mapper.update(board);
	}

	@Override
	public int remove(String userid) {
		
		return mapper.delete(userid);
	}

	@Override
	public List<AdminVO> getList() {
		
		return mapper.getList();
	}
}
