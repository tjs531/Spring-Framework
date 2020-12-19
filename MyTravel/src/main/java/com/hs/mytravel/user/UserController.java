package com.hs.mytravel.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.hs.mytravel.user.model.UserVO;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	private UserService service;
	

	@RequestMapping(value="/login", method = RequestMethod.GET)
	public String login(Model model) {
		model.addAttribute("title", "로그인");
		model.addAttribute("view", "user/login");
		return "home";
	}
	
	@RequestMapping(value="/join", method = RequestMethod.GET)
	public String join(Model model) {
		model.addAttribute("title", "회원가입");
		model.addAttribute("view", "user/join");
		return "home";
	}
	
	@RequestMapping(value="/join", method = RequestMethod.POST)
	public String join(UserVO param, RedirectAttributes ra) {
		int result = service.join(param);
		
		if(result == 1) {
			return "redirect:/user/login"; 
		}
		
		ra.addAttribute("err", result);
		return "redirect:/user/join";
	}
	

}
