package com.nuts.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nuts.domain.AttendenceVO;
import com.nuts.mapper.AttendenceMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class AttendenceServiceImpl implements AttendenceService {
	
	@Setter(onMethod_ = @Autowired)
	private AttendenceMapper mapper;

	@Override
	public void insert(AttendenceVO avo) {
		mapper.insert(avo);
	}

	@Override
	public List<AttendenceVO> getAttendenceList() {
		return mapper.getAttendenceList();
	}

	@Override
	public List<AttendenceVO> getAttendenceListbyId(String usid) {
		return mapper.getAttendenceListbyId(usid);
	}
	
	
}
