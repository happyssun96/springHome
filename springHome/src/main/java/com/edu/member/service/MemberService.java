package com.edu.member.service;

import java.util.List;

import com.edu.member.model.MemberVo;

public interface MemberService {

	public List<MemberVo> memberSelectList();

	public MemberVo memberExist(String email, String password);

}
