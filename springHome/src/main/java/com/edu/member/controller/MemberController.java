package com.edu.member.controller;

import java.util.List;

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
	
	// 회원 리스트 화면으로
	@RequestMapping(value = "/member/list.do", method = RequestMethod.GET)
	public String memberList(Model model) {
		logger.info("Welcome MemberController! login");

		List<MemberVo> memberList = memberService.memberSelectList();

		model.addAttribute("memberList", memberList);

		return "member/MemberListView";
	}
}