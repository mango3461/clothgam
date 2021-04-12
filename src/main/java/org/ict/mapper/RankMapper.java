package org.ict.mapper;

import java.util.List;

import org.ict.domain.RankVO;

public interface RankMapper {

	
	public List<RankVO> getList();
	
	public RankVO read(int cglikeno);
	
	public List<RankVO> likeList();

	public List<RankVO> youngList();
	
	public List<RankVO> secondList();
	
	public List<RankVO> thirdList();

	public List<RankVO> youngMList();
	
	public List<RankVO> youngGList();
	
	public List<RankVO> rank();
	
}
