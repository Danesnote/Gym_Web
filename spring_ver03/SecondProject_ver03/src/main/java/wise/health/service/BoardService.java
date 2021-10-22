package wise.health.service;

import java.util.List;

import wise.health.domain.BoardAttachVO;
import wise.health.domain.BoardVO;
import wise.health.domain.Criteria;

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
