package wise.health.domain;

import java.util.Date;

import lombok.Data;

@Data
public class JoinVO {

	private String userid;
	private String userpw;
	private String username;
	private Date regdate;
	private Date updatedate;
	private String enabled;
	
	@Override
	public String toString() {
		return "JoinVO [userid=" + userid + ", userpw=" + userpw + ", username=" + username +"]";
					}
}
