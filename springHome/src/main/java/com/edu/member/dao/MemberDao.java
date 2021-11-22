package com.edu.member.dao;

import java.util.List;

import com.edu.member.model.MemberVo;

public interface MemberDao {

	public List<MemberVo> memberSelectList();

	public MemberVo memberExist(String email, String password);
}
