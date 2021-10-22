package wise.health.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import wise.health.domain.JoinVO;

@Repository
public class JoinDAOImpl implements JoinDAO {
	
	@Inject SqlSession sql;
	
	@Override
	public void join(JoinVO vo) throws Exception{
		sql.insert("JoinMapper.insert", vo);
	}

}
