package com.km.yak;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	


	
	@RequestMapping("/login")
    public String step2() throws Exception {
        return "login_form";
    }
	
	@RequestMapping("/about")
    public String about() throws Exception {
        return "about";
    }
	@RequestMapping("/contact")
    public String contact() throws Exception {
        return "contact";
    }
	@RequestMapping("/help")
    public String help() throws Exception {
        return "help";
    }
	@RequestMapping("/mypage")
    public String mypage() throws Exception {
        return "mypage";
    }
	@RequestMapping("/search")
    public String search() throws Exception {
        return "search";
    }
	@RequestMapping("/account")
    public String account() throws Exception {
        return "account_change";
    }

	@RequestMapping("/favorite")
    public String favorite() throws Exception {
        return "favorite";
    }
}
