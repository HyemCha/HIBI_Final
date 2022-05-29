package hibi.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import hibi.dto.MemberDto;
import hibi.dto.NaverMemberDto;
import hibi.mapper.MemberMapperInter;

@Controller
public class UserGuipController {
	
	@Autowired
	MemberMapperInter mapper;
	 
	
	   @PostMapping("/insert")
	   public String insert(@ModelAttribute MemberDto dto,
	         @RequestParam String userEmail,@RequestParam String email2)
	   { 
	      dto.setUserEmail(userEmail+"@"+email2);
	   
	      
	      
	      //DB에 저장
	     mapper.insertMember(dto);
	      //목록으로 이동
	      return "redirect:/";
	   }

	@PostMapping("/login/naver/insert")
	public String userguipnaver(
			@ModelAttribute NaverMemberDto dto
			)
	{
		mapper.insertMemberNaver(dto);
		
		return "redirect:/";
	}
	
	@GetMapping("/userguip")
   public String userguip()
   {
      return "/WEB-INF/login/userguip.jsp";
   }



	   
//	   @GetMapping("/idcheck")
//	   @ResponseBody //json으로 반환
//	   public Map<String, Integer> getSearchId(@RequestParam String id)
//	   {
//		   Map<String, Integer> map=new HashMap<>();
//		   int n=mapper.getSearchId(id);
//		   map.put("count", n);
//		   return map;
//		   
//	   }
	
}






