package com.hs.mytravel.place;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/place")
public class PlaceController {
	
	@Autowired
	private PlaceService service;
	
	@RequestMapping(value="/", method = RequestMethod.GET)
	public String login(Model model) {
		model.addAttribute("title", "루트 만들기");
		model.addAttribute("view", "/travel/travelMap");
		return "home";
	}
	
	
}
