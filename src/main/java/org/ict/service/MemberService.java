package org.ict.service;

import java.sql.Date;

import org.ict.domain.LoginDTO;
import org.ict.domain.MemberVO;

public interface MemberService {

	public MemberVO login(LoginDTO dto) throws Exception;

	public void keepLogin(String mid, String sessionId, Date next) throws Exception;

	public MemberVO checkLoginBefore(String value);

	public void joinMem(MemberVO vo);
	
	public MemberVO getUserInfo(String mid);

}
