package com.km.yak.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.km.yak.DAO.ScheduleDAO;
import com.km.yak.service.ScheduleService;
import com.km.yak.vo.ScheduleVO;

@Controller
public class ScheduleController {
	ScheduleDAO dao = new ScheduleDAO();
	
	@Inject
	ScheduleService scheduleService;
	
	@RequestMapping(method = RequestMethod.POST, value = "/insert")
	public String save(@ModelAttribute ScheduleVO vo, HttpSession session) {
		
		return "redirect:/";
	}
	
	@RequestMapping(method = RequestMethod.POST, value = "/select")
	public String select() {
		
		return "redirect:/";
	}
	
	@RequestMapping(method = RequestMethod.POST, value = "/delete")
	public String delete() {
		
		return "redirect:/";
	}
}