package hibi.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import hibi.dto.BadgeDto;
import hibi.dto.CommentDto;
import hibi.dto.LikeProductDto;
import hibi.dto.MemberDto;
import hibi.dto.ProductDto;
import hibi.mapper.MyPageMapperInter;

@Service
public class MypageService implements MypageServiceInter {

	@Autowired
	private MyPageMapperInter mapper;
	
	
	
	public void updateBadge(int badgeIdx, int loopyBadge) {
		// TODO Auto-generated method stub
		Map<String, Integer> map=new HashMap<>();
		map.put("badgeIdx", badgeIdx);
		map.put("loopyBadge",loopyBadge);
		mapper.updateBadge(map);
	}



	@Override
	public MemberDto getMemberData(MemberDto dto) {
		// TODO Auto-generated method stub
		return null;
	}



	@Override
	public void getLikeProductData(LikeProductDto dto) {
		// TODO Auto-generated method stub
		mapper.getLikeProductData(dto);
	}



	@Override
	public CommentDto getCommentData(CommentDto dto) {
		// TODO Auto-generated method stub
		return null;
	}



	@Override
	public ProductDto getProductData(ProductDto dto) {
		// TODO Auto-generated method stub
		return null;
	}



	@Override
	public void updateBadge(Map<String, Integer> map) {
		// TODO Auto-generated method stub
		
	}


	

	
}
