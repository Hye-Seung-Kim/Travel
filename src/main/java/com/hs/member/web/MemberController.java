package com.hs.member.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.hs.member.service.MemberService;
import com.hs.member.vo.MemberVO;
import com.hs.travel.service.TravelService;

@Controller
public class MemberController {
	
	private TravelService travelService;
	private MemberService memberService;
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String viewLoginPage(HttpSession session) {
		
		//USER객체에 데이터가 들어가 있다면
		if ( session.getAttribute("__USER__") != null ) {
			return "redirect:/list";
		}
			
		return "member/login";
	}
	
	@RequestMapping(value="/login", method = RequestMethod.POST)
	public String doLoginAction(MemberVO memberVO, HttpServletRequest request) {
		HttpSession session = request.getSession();
		
		if( memberVO.getEmail() == null || memberVO.getEmail().length() == 0 ) {
			session.setAttribute("status", "emptyId");
			return "redirect:/login";
		}
		
		if( memberVO.getPassword() == null || memberVO.getPassword().length() == 0 ) {
			session.setAttribute("status", "emptyId");
			return "redirect:/login";
		}
		
		return "redirect:/";
		
	}
	
	@RequestMapping("/logout")
	public String doLogoutAction(HttpSession session) {
		session.invalidate();
		return "redirect:/login";
	}
	
	
	@RequestMapping("/join")
	public String joinPage() {
		return "member/join";
	}
	
}
