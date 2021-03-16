package com.scit.ekuru.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.scit.ekuru.service.ChannelService;
import com.scit.ekuru.vo.ChannelVO;
import com.scit.ekuru.vo.ProductCommentVO;
import com.scit.ekuru.vo.ProductVO;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping(value = "/channel")
public class ChViewContoroller {

	private static final Logger logger = LoggerFactory.getLogger(ChViewContoroller.class);

	@Autowired
	private ChannelService service;

//	채널 메인 보기
	@RequestMapping(value = "/ch_main")
	public String chMain(Model model) {
		ArrayList<ChannelVO> chListResult = service.getListAll();
		model.addAttribute("chListResult", chListResult);
		return "channel/ch_main";
	}

//	채널 검색 결과 보기
	@RequestMapping(value = "/ch_search", method = RequestMethod.POST)
	public String chSearch(@RequestParam(defaultValue = "") String search, Model model) {
		service.chSearch(search, model);
		return "channel/ch_search";
	}

//	특정 카테고리만
	@RequestMapping(value = "/ch_categoryresult", method = RequestMethod.GET)
	public String chCategoryResult(int categoryCode, Model model) {
		service.chCategoryResult(model, categoryCode);
		return "channel/ch_categoryresult";
	}

//	개인 채널 보기
	@RequestMapping(value = "/ch_personal_main")
	public String chPersonalMain(String chId, Model model) {
		ChannelVO channel = service.chRead(chId);
		ArrayList<ProductVO> prodListResult = service.getProdList(chId);
		model.addAttribute("prodListResult", prodListResult);
		model.addAttribute("channel", channel);
		return "channel/ch_personal_main";
	}

//	개인 채널 수정 폼으로 가기
	@RequestMapping(value = "/ch_management")
	public String chManagement(String chId, Model model) {
		ChannelVO channel = service.chRead(chId);
		ArrayList<ProductVO> prodListResult = service.getProdList(chId);
		model.addAttribute("prodListResult", prodListResult);
		model.addAttribute("channel", channel);
		return "channel/ch_management";
	}

//	상품 삭제
	@ResponseBody
	@RequestMapping(value = "/prodDelete")
	public HashMap<String, Object> prodDelete(@RequestBody HashMap<String, Object> json) {
		return service.prodDelete(json);
	}

//	채널 게시글 폼
	@RequestMapping(value = "/ch_posters")
	public String chPosters(String chId, Model model) {
		ChannelVO channel = service.chRead(chId);
		model.addAttribute("channel", channel);
		return "channel/ch_posters";
	}

// 채널 게시글 쓰기
	@RequestMapping(value = "/ch_posters_Write", method = RequestMethod.POST)
	public String ch_posters_Write(ProductVO vo, HttpSession session) {
		String userId = (String) session.getAttribute("userId");
		vo.setUserId(userId);
		service.ch_posters_Write(vo);
		return "redirect:/channel/ch_personal_main?chId=" + vo.getUserId();
	}

//	채널 게시글 수정 폼
	@RequestMapping(value = "/ch_contentModify")
	public String ch_contentModify(ProductVO prodVo,Model model) {
		ProductVO prodResult = service.getProdEach(prodVo);
		ArrayList<ProductCommentVO> commentResult = service.getProdComment(prodVo.getProdNum());
		service.getCategory(prodVo,model);
		model.addAttribute("prodResult", prodResult);
		model.addAttribute("commentResult", commentResult);
		return "channel/ch_contentModify";

	}

//	채널 게시글 수정
	@RequestMapping(value = "/contentModify")
	public String contentModify(ProductVO vo) {
		service.contentModify(vo);
		return "redirect:/channel/ch_management?chId="+vo.getUserId();
	}


//	채널 게시글 보기 (구매자)
	@RequestMapping(value = "/ch_content")
	public String chContent(String chId, ProductVO prodVo, Model model, HttpSession session, HttpServletResponse response, HttpServletRequest request) throws UnsupportedEncodingException {
		ChannelVO channel = service.chRead(chId);
		ProductVO prodEachResult = service.getProdEach(prodVo);
		ArrayList<ProductCommentVO> commentResult = service.getProdComment(prodVo.getProdNum());
		String userType = "0";
		String userId = (String) session.getAttribute("userId");
		boolean result = false;

		if (userId != null) {
			userType = service.getUserType(userId);
			for (ProductCommentVO productCommentVO : commentResult) {
				if (productCommentVO.getUserId().equals(userId)) {
					result = true;
					break;
				}
			}
		}

		//현재 시간을 가져옴
		//SimpleDateFormat sysdate = new SimpleDateFormat ( "MM-DD HH:mm");
		//Date time = new Date();
		//String time1 = sysdate.format(time);


		String prod = Integer.toString(prodVo.getProdNum());
		Cookie cook = new Cookie("prodnum", URLEncoder.encode(prod, "UTF-8"));
		cook.setMaxAge(300);
		cook.setPath("/user/viewedItems");
		response.addCookie(cook);
		//System.out.println(cook.getValue());

		model.addAttribute("channel", channel);
		model.addAttribute("prodEachResult", prodEachResult);
		model.addAttribute("commentResult", commentResult);
		model.addAttribute("userType", userType);
		model.addAttribute("result", result);

		return "channel/ch_content";
	}




//	채널 댓글 달기
	@ResponseBody
	@RequestMapping(value = "addComment")
	public HashMap<String, Object> addComment(@RequestBody HashMap<String, Object> json) {
		return service.addComment(json);
	}




}
