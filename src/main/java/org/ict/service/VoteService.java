package org.ict.service;

import java.util.List;

import org.ict.domain.VoteVO;

public interface VoteService {

//	public void upcount(VoteVO vote);

	public int upcount(int vo);
	
	public int upcountA(int vo);
	
	public int upcountB(int vo);
	
	public VoteVO get(int cglikeno);
	
	public List<VoteVO> getList();
	
	public VoteVO likeCnt(int cglikeno);
	
	public int[] list();

}
