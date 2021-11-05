package com.nuts.service;

import java.util.List;

import com.nuts.domain.BoardAttachVO;
import com.nuts.domain.BoardVO;
import com.nuts.domain.Criteria;

public interface BoardService {

	public void register(BoardVO board);
	
	public boolean extimeregister(BoardVO board);
	
	public List<BoardVO> exdata(Criteria cri); // 운동 기록
	
	public int exTotal(Criteria cri); // 운동 기록
	
	public boolean exregister(BoardVO board); // 운동 기록 등록

	public BoardVO get(Long bno);

	public boolean modify2(BoardVO board);

	public boolean remove(Long bno);

	// public List<BoardVO> getList();

	public List<BoardVO> getList(Criteria cri); // 자유게시판, 운동 기록 게시판 처럼 페이징 처리가 필요할땐
												// criteria를 파라미터로 이용한다.

	//추가
	public int getTotal(Criteria cri);
	
	public List<BoardAttachVO> getAttachList(Long bno); // 파일업로드
	
	public void removeAttach(Long bno);

}
