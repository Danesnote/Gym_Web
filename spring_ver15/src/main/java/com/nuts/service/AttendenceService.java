package com.nuts.service;

import java.util.List;

import com.nuts.domain.AttendenceVO;

public interface AttendenceService {
	public void insert(AttendenceVO avo);
	
	public List<AttendenceVO> getAttendenceList();
	
	public List<AttendenceVO> getAttendenceListbyId(String usid);
	
}
