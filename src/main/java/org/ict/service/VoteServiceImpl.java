package org.ict.service;

import java.util.ArrayList;
import java.util.List;

import org.ict.domain.VoteVO;
import org.ict.mapper.VoteMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class VoteServiceImpl implements VoteService{
	
	@Autowired
	private VoteMapper mapper;

//	@Override
//	public void upcount(VoteVO vote) {
//		mapper.update(vote);
//		
//	}

	@Override
	public VoteVO get(int cglikeno) {
		return mapper.read(cglikeno);
	}

	@Override
	public List<VoteVO> getList() {
		return mapper.getList();
	}

	@Override
	public int[] list() {
		
		return mapper.num();
	}


	@Override
	public VoteVO likeCnt(int cglikeno) {
		return mapper.likeNum(cglikeno);
	}

	@Override
	public int upcountA(int vo) {
		return mapper.updateA(vo);
	}

	@Override
	public int upcountB(int vo) {
		return mapper.updateB(vo);
	}

	@Override
	public int upcount(int vo) {
		return mapper.update(vo);
	}


	

}
