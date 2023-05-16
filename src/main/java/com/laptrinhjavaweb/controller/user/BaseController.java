package com.laptrinhjavaweb.controller.user;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;

import com.laptrinhjavaweb.service.ICategorysService;
import com.laptrinhjavaweb.service.IMenusService;

@Controller
public class BaseController {
	@Autowired
	private IMenusService menusService;
	
	@Autowired
	private ICategorysService categorysService;
	
	public ModelAndView mvShare = new ModelAndView();
	
	//Để xét phần menu được load lên trước trong trang page
	@PostConstruct
	public ModelAndView BasePage () {
		mvShare.addObject("menus", menusService.findAll());
		mvShare.addObject("categorys", categorysService.findAll());
		return mvShare;
	}
	
	
}
