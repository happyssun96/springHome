package com.edu.member.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.edu.member.dao.MemberDao;
import com.edu.member.model.MemberVo;

@Service
public class MemberServiceImpl implements MemberService{


	@Autowired
	public MemberDao memberDao;
	
	@Override
	public List<MemberVo> memberSelectList() {
		
		return memberDao.memberSelectList();
	}

	@Override
	public MemberVo memberExist(String email, String password) {
		
		return memberDao.memberExist(email, password);
	}

	
}
