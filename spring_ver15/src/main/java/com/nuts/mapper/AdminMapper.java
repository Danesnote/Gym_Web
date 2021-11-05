package com.nuts.mapper;

import java.util.List;

import com.nuts.domain.AdminVO;

public interface AdminMapper {
	
	List<AdminVO> getList();
	
	void insert(AdminVO admin);
	
	void insertSelectKey(AdminVO admin);
	
	AdminVO read(String userid);
	
	public int exile(String userid); // 유저 탈퇴
	
	int update(AdminVO admin);

	public AdminVO delete(String userid);
}
