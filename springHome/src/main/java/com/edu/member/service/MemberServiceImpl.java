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
	public List<MemberVo> memberSelectList(String searchOption, 
			String keyword, int start, int end) {
		
		return memberDao.memberSelectList(searchOption, keyword, start, end);
	}

	@Override
	public MemberVo memberExist(String email, String password) {
		
		return memberDao.memberExist(email, password);
	}

	@Override
	public int memberInsertOne(MemberVo memberVo) {
		
		return memberDao.memberInsertOne(memberVo);
	}

	@Override
	public int memberUpdateOne(MemberVo memberVo) {
		
		return memberDao.memberUpdateOne(memberVo);
	}

	@Override
	public MemberVo memberSelectOne(int no) {
		
		return memberDao.memberSelectOne(no);
	}

	@Override
	public void memberDeleteOne(int no) {
		
		memberDao.memberDeleteOne(no);
		
	}

	@Override
	public int memberSelectTotalCount() {
		
		return memberDao.memberSelectTotalCount();
	}	
}