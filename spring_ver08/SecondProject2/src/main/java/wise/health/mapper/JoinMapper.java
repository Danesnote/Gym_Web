package wise.health.mapper;

import org.apache.ibatis.annotations.Insert;

import wise.health.domain.JoinVO;

public interface JoinMapper {

	public void insert(JoinVO join);
	
	public void insertSelectKey(JoinVO join);
}
