package hibi.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.catalina.mapper.Mapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import hibi.dto.BadgeDto;
import hibi.service.MypageService;
import util.FileUtil;

@Controller
@RequestMapping("/mypage")
public class MypageController {
	
	@Autowired
	private MypageService service;
	
	
	// 메인
	@GetMapping("/")
	public String mypageMain() {
		return "/sub3/mypage/mypageMain";
	}
	
	@GetMapping("/badge")
	public String badge() {
		return "/sub4/mypage/badge";
	}

	@GetMapping("/commentList")
	public String commentList() {
		return "/sub3/mypage/commentList";
	}
	@GetMapping("/commentList2")
	public String commentList2() {
		return "/sub3/mypage/commentList2";
	}
	
	@GetMapping("/likeList")
	public String likeList() {
		return "/sub3/mypage/likeList";
	}
	
	@GetMapping("/modifyMyInfo")
	public String modifyMyInfo() {
			
		return "/sub4/mypage/modifyMyInfo";
	}

	@GetMapping("/productList")
	public String productList() {
		return "/sub3/mypage/productList";
	}
	
	@GetMapping("/secession")
	public String secession() {
		return "/sub5/mypage/secession";
	}
	
}
