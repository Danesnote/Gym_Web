package com.nuts.service;

import java.util.List;

import com.nuts.domain.BoardAttachVO;
import com.nuts.domain.BoardVO;
import com.nuts.domain.Criteria;

public interface BoardService {

	public void register(BoardVO board);
	
	public boolean extimeregister(BoardVO board);

	public BoardVO get(Long bno);

	public boolean modify(BoardVO board);

	public boolean remove(Long bno);

	public List<BoardVO> exdata(Criteria cri); // 운동 기록
	
	public int exTotal(Criteria cri); // 운동 기록

	public List<BoardVO> getList(Criteria cri);

	//추가
	public int getTotal(Criteria cri);
	
	public boolean exregister(BoardVO board); // 운동 기록 등록
	
	public List<BoardAttachVO> getAttachList(Long bno);
	
	public void removeAttach(Long bno);

}
