package org.ict.service;

import java.util.List;

import org.ict.domain.RankVO;
import org.ict.mapper.RankMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RankServiceImpl implements RankService{

	@Autowired
	private RankMapper mapper;
	
	@Override
	public List<RankVO> cgList() {
		return mapper.getList();
	}

	@Override
	public RankVO get(int cglikeno) {
		return mapper.read(cglikeno);
	}

	@Override
	public List<RankVO> getLikeList() {
		return mapper.likeList();
	}

	@Override
	public List<RankVO> rankList() {
		return mapper.rank();
	}

	@Override
	public List<RankVO> getYoungList() {
		return mapper.youngList();
	}

	@Override
	public List<RankVO> getSecondList() {
		return mapper.secondList();
	}

	@Override
	public List<RankVO> getThirdList() {
		return mapper.thirdList();
	}

	@Override
	public List<RankVO> getYoungMList() {
		return mapper.youngMList();
	}

	@Override
	public List<RankVO> getYoungGList() {
		return mapper.youngGList();
	}
	
}
