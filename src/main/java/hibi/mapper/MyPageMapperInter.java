package hibi.mapper;

import java.sql.Timestamp;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.fasterxml.jackson.annotation.JsonFormat;

import hibi.dto.BadgeDto;
import hibi.dto.CommentDto;
import hibi.dto.LikeProductDto;
import hibi.dto.MemberDto;
import hibi.dto.ProductDto;

@Mapper
public interface MyPageMapperInter {
	
	// user 로그인 정보수정..?
	public MemberDto getMemberData(MemberDto dto);
	
	// 찜 게시물
	public LikeProductDto getLikeProductData(LikeProductDto dto);
	
	// 댓글
	public CommentDto getCommentData(CommentDto dto);
	
	// 작성한 게시물
	public ProductDto getProductData(ProductDto dto);
	
	// 뱃지
	public void updateBadge(Map<String, Integer> map);
	
}
