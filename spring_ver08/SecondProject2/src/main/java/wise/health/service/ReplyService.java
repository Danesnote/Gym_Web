package wise.health.service;

import java.util.List;

import wise.health.domain.Criteria;
import wise.health.domain.ReplyPageDTO;
import wise.health.domain.ReplyVO;

public interface ReplyService {

	public int register(ReplyVO vo);

	public ReplyVO get(Long rno);

	public int modify(ReplyVO vo);

	public int remove(Long rno);

	public List<ReplyVO> getList(Criteria cri, Long bno);
	
	public ReplyPageDTO getListPage(Criteria cri, Long bno);

}
