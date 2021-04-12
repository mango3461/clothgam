package org.ict.mapper;

import java.sql.Date;

import org.ict.domain.LoginDTO;
import org.ict.domain.MemberVO;

public interface MemberMapper {

	public MemberVO login(LoginDTO dto) throws Exception;
	
	public void keepLogin(String mid, String sessionId, Date next);
	
	public MemberVO checkUserWithSessionKey(String value);

	public void joinMem(MemberVO vo);

	public MemberVO getUserInfo(String mid);
}
