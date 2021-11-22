package com.edu.member.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.edu.member.model.MemberVo;

@Repository
public class MemberDaoImpl implements MemberDao{

	@Autowired
	SqlSessionTemplate sqlSession;
	
	@Override
	public List<MemberVo> memberSelectList() {
		
		return sqlSession.selectList("com.edu.member.memberSelectList");
	}

	@Override
	public MemberVo memberExist(String email, String password) {
		
		HashMap<String, Object> paramMap = new HashMap<String, Object>();
		
		paramMap.put("email", email);
		paramMap.put("password", password);
		
		return sqlSession.selectOne("com.edu.member.memberExist", paramMap);
	}

}
