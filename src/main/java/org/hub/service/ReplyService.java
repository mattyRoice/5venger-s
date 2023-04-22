package org.hub.service;

import java.util.List;

import org.hub.domain.Criteria;
import org.hub.domain.ReplyPageDTO;
import org.hub.domain.ReplyVO;

public interface ReplyService {
	public int register(ReplyVO vo);
	public ReplyVO get(int rno);
	public int modify(ReplyVO vo);
	public int remove(int rno);
	public List<ReplyVO> getList(Criteria cri, int bno);
	public ReplyPageDTO getListPage(Criteria cri, int bno);
	
}
