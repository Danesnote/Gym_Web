package wise.health.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import wise.health.dao.JoinDAO;
import wise.health.domain.JoinVO;

@Service
public class JoinServiceImpl implements JoinService {
	
	@Inject JoinDAO dao;
	
	@Override
	public void join(JoinVO vo) throws Exception {
		
		dao.join(vo);
	}

}
