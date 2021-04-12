package org.ict.service;

import java.util.List;

import org.ict.domain.CgDowncVO;
import org.ict.domain.CgUpcVO;
import org.ict.domain.ClosetVO;
import org.ict.domain.LikeVO;
import org.ict.mapper.MixMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MixServiceImpl implements MixService {

	@Autowired
	private MixMapper mapper;
	
	
	@Override
	public List<CgUpcVO> getUpList() {
		return mapper.getUpList();
	}


	@Override
	public List<CgDowncVO> getDownList() {
		return mapper.getDownList();
	}


	
	@Override
	public void closetMix(ClosetVO vo) {
		mapper.closetMix(vo);
	}


	@Override
	public void likeMix(LikeVO vo) {
		mapper.likeMix(vo);
	}
}
