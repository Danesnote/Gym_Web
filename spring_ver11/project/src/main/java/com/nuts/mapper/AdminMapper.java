package com.nuts.mapper;

import java.util.List;

import com.nuts.domain.AdminVO;

public interface AdminMapper {

	
	List<AdminVO> getList();
	
	void insert(AdminVO admin);
	
	void insertSelectKey(AdminVO admin);
	
	AdminVO read(String userid);
	
	int delete(String userid);
	
	int update(AdminVO admin);
}
