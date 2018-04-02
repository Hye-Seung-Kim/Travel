package com.hs.member.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MemberController {
	
	@RequestMapping("/login")
	public String loginPage() {
		
				
		return "member/login";
	}
}
