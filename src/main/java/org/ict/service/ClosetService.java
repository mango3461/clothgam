package org.ict.service;

import java.util.List;

import org.ict.domain.CgDowncVO;
import org.ict.domain.CgUpcVO;
import org.ict.domain.ClosetVO;

public interface ClosetService {
	
//	public List<ClosetVO> closetList(int mno);

	public List<ClosetVO> closetList(int mno);
	
	public CgUpcVO closetUp(int cgupcno);
	
	public CgDowncVO closetDown(int cgdowncno);

}
