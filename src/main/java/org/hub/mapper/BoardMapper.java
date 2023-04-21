package org.hub.mapper;
     
import java.util.List;
     
import org.hub.domain.BoardVO;
import org.hub.domain.Criteria;

public interface BoardMapper {

	public List<BoardVO> getListWithPaging(Criteria cri);
	public List<BoardVO> getListWithPagingWithFilter(Criteria cri);
	
	public void insert(BoardVO board);

	public Integer insertSelectKey(BoardVO board);

	public BoardVO read(int bno);

	public int delete(int bno);

	public int update(BoardVO board);

	public int getTotalCount(Criteria cri);

	// 추천목록 가져오기
	public List<Integer> getRecommend(String uidkey);
	
	// 관심목록 가져오기
	public List<Integer> getInterest(String uidkey); 
	
	// 조회수 증가시키기
	public void updateViewCnt(int bno);
}
