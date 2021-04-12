package org.ict.service;

import java.util.List;

import org.ict.domain.CgDowncVO;
import org.ict.domain.CgUpcVO;
import org.ict.domain.ClosetVO;
import org.ict.domain.LikeVO;

public interface MixService {

	public List<CgUpcVO> getUpList();
	public List<CgDowncVO> getDownList();
	public void closetMix(ClosetVO vo);
	public void likeMix(LikeVO vo);
	
}
