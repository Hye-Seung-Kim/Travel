package com.hs.travel.web;


import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;


import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.hs.travel.service.TravelService;
import com.hs.travel.vo.TravelVO;
import com.hs.member.constants.Member;
import com.hs.member.vo.MemberVO;



@Controller
public class TravelController {
	
	private TravelService travelService;
	
	public void setTravelService(TravelService travelService) {
		this.travelService = travelService;
	}
	
	@RequestMapping("/")
	public String list() {
		return "travel/main";
	}
	
	@RequestMapping("/list")
	public ModelAndView viewListPage(HttpSession session) {
		
		if(session.getAttribute(Member.USER) == null ) {
			return new ModelAndView("redirect:/login");
		}
		
		ModelAndView view = new ModelAndView();
		view.setViewName("travel/list");
		List<TravelVO> travelList = travelService.getAll();
		view.addObject("travelList", travelList);
		
		return view;
	}
	

	@RequestMapping(value ="/write", method = RequestMethod.GET)
	public String viewWritePage(HttpSession session) {
		
		if(session.getAttribute(Member.USER) == null) {
			return "redirect:/login";
		}
		
		return "travel/write";
	}
	
	@RequestMapping(value="/write", method = RequestMethod.POST)
	public ModelAndView doWrite(@ModelAttribute("writeForm") @Valid TravelVO  travelVO, Errors errors,HttpSession session) {
		
		if ( session.getAttribute(Member.USER) == null ) {
			return new ModelAndView("redirect:/login");
		}
		
		ModelAndView view = new ModelAndView();
		if( errors.hasErrors() ) {
			view.setViewName("travel/write");
			view.addObject("travelVO", travelVO);
			return view;
		}
		
		
		boolean isSuccess = travelService.createTravel(travelVO);
		
		if ( isSuccess ) {
			return new ModelAndView("redirect:/list");
		}
		
		return new ModelAndView("travel/write");
	}
	
	
	@RequestMapping("/view/{id}")
	public ModelAndView viewViewPage(HttpSession session, @PathVariable int id) {
		
		if ( session.getAttribute(Member.USER) == null ) {
			return new ModelAndView("redirect:/login");
		}
		
		ModelAndView view = new ModelAndView();
		view.setViewName("/travel/view");
		
		//id로 게시글 얻어오기
		TravelVO travel = travelService.getOne(id);
		view.addObject("travel", travel);
		
		return view;
		
		
	}
}
