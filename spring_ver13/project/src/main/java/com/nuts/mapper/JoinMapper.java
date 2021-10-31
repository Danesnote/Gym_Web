package com.nuts.mapper;


import com.nuts.domain.JoinVO;

public interface JoinMapper {

	public void insert(JoinVO join);
	
	public void insertSelectKey(JoinVO join);
}
