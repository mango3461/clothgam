package org.ict.service;

import java.sql.Date;

import org.ict.domain.LoginDTO;
import org.ict.domain.MemberVO;
import org.ict.mapper.MemberMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService{
	
	@Autowired
	private MemberMapper mapper;
	
	@Override
	public MemberVO login(LoginDTO dto) throws Exception {
		return mapper.login(dto);
	}
	
	@Override
	public void keepLogin(String mid, String sessionId, Date next) throws Exception {
		mapper.keepLogin(mid, sessionId, next);
	}
	
	@Override
	public MemberVO checkLoginBefore(String value) {
		return mapper.checkUserWithSessionKey(value);
	}

	@Override
	public void joinMem(MemberVO vo) {
		mapper.joinMem(vo);
	}

	@Override
	public MemberVO getUserInfo(String mid) {
		return mapper.getUserInfo(mid);
	}
}
