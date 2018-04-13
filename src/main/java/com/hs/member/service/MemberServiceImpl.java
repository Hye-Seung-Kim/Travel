package com.hs.member.service;

import com.hs.member.dao.MemberDao;
import com.hs.member.vo.MemberVO;

public class MemberServiceImpl implements MemberService {
	
	private MemberDao memberDao;
	private MemberVO memberVO;

	@Override
	public boolean createMember(MemberVO member) {
		return memberDao.insertMember(memberVO) > 0;
	}

	@Override
	public MemberVO readMember(MemberVO member) {
		return null;
	}

	@Override
	public boolean removeMember(int id, String deleteFlag) {
		return false;
	}

	@Override
	public boolean readCountMemberEmail(String email) {
		return false;
	}

	@Override
	public boolean readCountMemberNickname(String nickname) {
		return false;
	}

}
