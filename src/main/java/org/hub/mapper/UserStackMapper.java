package org.hub.mapper;

import java.util.List;
import org.hub.domain.UserStackVO;

public interface UserStackMapper {
	// 첨부파일의 수정이라는 개념 없이 insert(), delete() 작업만 처리한다
	
		public void insert(UserStackVO vo);
		
		public void delete(UserStackVO vo);
		
		public List<UserStackVO> findByUidKey(String uidKey); // uidKey로 해당 user의 관심 스택 리스트 찾는다

		public void deleteAll(String uidKey);
}
