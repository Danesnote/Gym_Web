package com.nuts.service;

import java.util.List;

import com.nuts.domain.BoardAttachVO;
import com.nuts.domain.BoardVO;
import com.nuts.domain.Criteria;

public interface BoardService {

	public void register(BoardVO board);

	public BoardVO get(Long bno);

	public boolean modify(BoardVO board);

	public boolean remove(Long bno);

	// public List<BoardVO> getList();

	public List<BoardVO> getList(Criteria cri);

	//추가
	public int getTotal(Criteria cri);
	
	public List<BoardAttachVO> getAttachList(Long bno);
	
	public void removeAttach(Long bno);

}
