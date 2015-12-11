package com.moma.trip.controller.web;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

@Scope(value="prototype")
@Controller
@RequestMapping("/web/v1/help")
public class HelpController extends MultiActionController {

	@RequestMapping(value="/help.html",method=RequestMethod.GET)
	public ModelAndView help(){
		
		return new ModelAndView("help-help");
	}
	
	@RequestMapping(value="/about.html",method=RequestMethod.GET)
	public ModelAndView about(){
		
		return new ModelAndView("help-about");
	}
	
	@RequestMapping(value="/contactus.html",method=RequestMethod.GET)
	public ModelAndView contactus(){
		
		return new ModelAndView("help-contactus");
	}
	
	@RequestMapping(value="/joinus.html",method=RequestMethod.GET)
	public ModelAndView joinus(){
		
		return new ModelAndView("help-joinus");
	}
	
	@RequestMapping(value="/term.html",method=RequestMethod.GET)
	public ModelAndView term(){
		
		return new ModelAndView("help-term");
	}
	
}
