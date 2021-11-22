package com.edu.member.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.edu.member.model.MemberVo;
import com.edu.member.service.MemberService;

@Controller
public class MemberController {
	private static final Logger logger 
		= LoggerFactory.getLogger(MemberController.class);

	@Autowired
	private MemberService memberService;
	
	// 로그인 화면으로
	@RequestMapping(value="/login.do", method = RequestMethod.GET)
	public String login(HttpSession session, Model model) {
		logger.info("Welcome MemberController! login");
		
		return "auth/LoginForm";
	}
		
	// 
	@RequestMapping(value="/loginCtr.do", method = RequestMethod.POST)
	public String loginCtr(String email, String password,
			HttpSession session, Model model) {
		logger.info("Welcome MemberController! loginCtr!" + email + 
				", " + password);
		
		MemberVo memberVo = memberService.memberExist(email, password);
		
		if(memberVo != null) {
			// 회원이 존재한다면 회원 전체 조회 페이지로 이동
			session.setAttribute("member", memberVo);
			
			return "redirect:/member/list.do";
		} else {
			
			return "/auth/LoginFail";
		}
		
	}
	
	// 회원 리스트 화면으로
	@RequestMapping(value = "/member/list.do", method = RequestMethod.GET)
	public String memberList(Model model) {
		logger.info("Welcome MemberController! memberList");

		List<MemberVo> memberList = memberService.memberSelectList();

		model.addAttribute("memberList", memberList);

		return "member/MemberListView";
	}
}