package com.hs.member.dao;

import com.hs.member.vo.MemberVO;

public interface MemberDao {
	
	public int insertMember(MemberVO memberVO);
	
	public MemberVO selectMember(MemberVO memberVO);
	
	public int deleteMember(int id);
	
	public int selectCountMemberEmail(String email);
	
	public int selectCountMemberNickname(String nickname);
}
