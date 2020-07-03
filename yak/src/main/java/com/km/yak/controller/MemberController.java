package com.km.yak.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.km.yak.exception.AlreadyExistingEmailException;
import com.km.yak.exception.AlreadyExistingIdException;
import com.km.yak.service.MemberService;
import com.km.yak.util.RegisterRequest;
import com.km.yak.util.RegisterRequestValidator;



@Controller
public class MemberController {
	@RequestMapping("/join_1")
    public String join_1() throws Exception {
        return "/join_form_1";
    }
	@RequestMapping("/join_2")
    public ModelAndView join_2(@RequestParam(value="agree", defaultValue="false") Boolean agree) throws Exception {
        if(!agree) {
            ModelAndView mv = new ModelAndView("join_form_1");
            return mv;
        }
        ModelAndView mv = new ModelAndView("join_form");
        mv.addObject("registerRequest", new RegisterRequest());
        return mv;
    }
	
	@Resource(name="memberService")
    private MemberService memberSer;
 
    @RequestMapping("/join_3")
    public ModelAndView join_3(RegisterRequest regReq, Errors errors) throws Exception{
        new RegisterRequestValidator().validate(regReq, errors);
        if(errors.hasErrors()) {
            ModelAndView mv = new ModelAndView("join_form");
            return mv;
        }
        try {
        	memberSer.register(regReq);
        } catch (AlreadyExistingEmailException e) {
            errors.rejectValue("email", "duplicate", "이미 가입된 이메일입니다.");
            ModelAndView mv = new ModelAndView("join_form");
            return mv;
        } catch (AlreadyExistingIdException e) {
            errors.rejectValue("id", "duplicate", "이미 가입된 아이디입니다.");
            ModelAndView mv = new ModelAndView("join_form");
            return mv;
        }
        ModelAndView mv = new ModelAndView("join_form_3");
        return mv;
    }
}
