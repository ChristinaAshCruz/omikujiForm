package com.christinac.omikujiform.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {
	
	@GetMapping("/omikuji")
	public String index() {
		return "index.jsp";
	}
	
	@PostMapping("/omikuji/send")
	public String processFortune(@RequestParam(value="number") Integer number, @RequestParam(value="city") String city, @RequestParam(value="personName") String personName, @RequestParam(value="hobby") String hobby, @RequestParam(value="animal") String animal, @RequestParam(value="message") String message, HttpSession session) {
		
		session.setAttribute("number", number);
		session.setAttribute("city", city);
		session.setAttribute("personName", personName);
		session.setAttribute("hobby", hobby);
		session.setAttribute("animal", animal);
		session.setAttribute("message", message);
		return "redirect:/omikuji/show";
	}
	
	@GetMapping("/omikuji/show")
	public String showFortune() {
		return "showFortune.jsp";
	}
}