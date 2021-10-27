package com.nuts.service;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.nuts.domain.BoardVO;
import com.nuts.domain.JoinVO;
import com.nuts.mapper.JoinMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class JoinServiceImpl implements JoinService {
	
	@Setter(onMethod_ = @Autowired)
	private JoinMapper mappers;
	
	@Transactional
	@Override
	public void join(JoinVO join) {

		log.info("join......" + join);

		mappers.insert(join);
//
//		if (board.getAttachList() == null || board.getAttachList().size() <= 0) {
//			return;
//		}

//		board.getAttachList().forEach(attach -> {
//
//			attach.setBno(board.getBno());
//			attachMapper.insert(attach);
//		});
	}

}
