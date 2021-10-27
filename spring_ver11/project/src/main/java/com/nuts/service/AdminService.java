package com.nuts.service;

import java.util.List;

import com.nuts.domain.AdminVO;

public interface AdminService {

	String register(AdminVO admin);
	
	AdminVO get(String userid);
	
	int modify(AdminVO admin);
	
	int remove(String userid);
	
	List<AdminVO> getList();
}
