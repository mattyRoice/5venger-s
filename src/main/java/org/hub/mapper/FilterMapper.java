package org.hub.mapper;

import java.util.List;

import org.hub.domain.BoardVO;
import org.hub.domain.Criteria;

public interface FilterMapper {
	public List<BoardVO> getListWithFilter(Criteria cri);
	
}
