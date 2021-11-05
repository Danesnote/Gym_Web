package com.nuts.service;

import java.util.List;

import com.nuts.domain.AdminVO;

public interface AdminService {

	String register(AdminVO admin);
	
	AdminVO get(String userid);
	
	int modify(AdminVO admin);
	
	public boolean exile(String userid);
	
	List<AdminVO> getList();
}
