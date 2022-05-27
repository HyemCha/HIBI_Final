package hibi.dto;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Data
@Alias("usernaver")
public class NaverMemberDto {

	private Long userIdx;
	private String loginId;
	private String nickName;
	private String userPhoneNumber;
	private String userEmail;
	private String userAddress;
}