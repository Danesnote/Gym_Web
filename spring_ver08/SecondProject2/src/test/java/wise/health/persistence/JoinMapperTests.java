package wise.health.persistence;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
import wise.health.domain.JoinVO;
import wise.health.mapper.JoinMapper;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class JoinMapperTests {

	@Setter(onMethod_ = @Autowired)
	private JoinMapper mappers;
	
	@Test
	public void testInsert() {
	JoinVO join = new JoinVO();
	join.setUserid("2");
	join.setUserpw("2");
	join.setUsername("3");
	
	mappers.insert(join);
	
	log.info(join);
	}
}
