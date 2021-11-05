package com.nuts.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.nuts.domain.Criteria;
import com.nuts.domain.ReplyVO;

public interface ReplyMapper {

	public int insert(ReplyVO vo);

	public ReplyVO read(Long bno);

	public int delete(Long bno);

	public int update(ReplyVO reply);

	public List<ReplyVO> getListWithPaging(@Param("cri") Criteria cri, @Param("bno") Long bno); // 페이징

	public int getCountByBno(Long bno); // 게시글 번호에 따라 댓글 개수를 센다
}
