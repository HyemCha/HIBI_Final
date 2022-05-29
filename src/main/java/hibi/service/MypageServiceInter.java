package hibi.service;

import java.util.Map;

import hibi.dto.BadgeDto;
import hibi.dto.CommentDto;
import hibi.dto.LikeProductDto;
import hibi.dto.MemberDto;
import hibi.dto.ProductDto;


public interface MypageServiceInter {
	
	// user 로그인 정보수정..?
		public MemberDto getMemberData(MemberDto dto);
		
		// 찜 게시물
		public void getLikeProductData(LikeProductDto dto);
		
		// 댓글
		public CommentDto getCommentData(CommentDto dto);
		
		// 작성한 게시물
		public ProductDto getProductData(ProductDto dto);
		
		// 뱃지
		public void updateBadge(Map<String, Integer> map);
}
