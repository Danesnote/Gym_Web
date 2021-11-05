package com.nuts.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.nuts.domain.AttendenceVO;


public interface AttendenceMapper {
	
	//@Select("select * from user_check")
	public List<AttendenceVO> getAttendenceList();

	public List<AttendenceVO> getAttendenceListbyId(String usid);
	
	public void insert(AttendenceVO attendence);
}
