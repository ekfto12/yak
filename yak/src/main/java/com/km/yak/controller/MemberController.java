package com.km.yak.controller;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.km.yak.exception.AlreadyExistingEmailException;
import com.km.yak.exception.AlreadyExistingIdException;
import com.km.yak.service.MemberService;
import com.km.yak.util.AuthInfo;
import com.km.yak.util.RegisterRequest;
import com.km.yak.util.RegisterRequestValidator;
import com.km.yak.vo.DrugVO;
import com.km.yak.vo.FavoriteVO;
import com.km.yak.vo.MemberVO;

import javax.servlet.http.HttpSession;




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
    
    
    @RequestMapping("/favoriteAdd")
	public String favrit(FavoriteVO vo, HttpServletResponse response) throws Exception{
		   memberSer.favoriteAdd(vo);
		   response.setContentType("text/html; charset=UTF-8");
		   PrintWriter writer = response.getWriter();    
           writer.println("<script type='text/javascript'>");
           writer.println("window.onload = function(){alert('즐겨찾기에 추가되었습니다'); history.go(-1);}");//alert 이후, URL 이동
           writer.println("</script>"); 
           writer.flush();
          return null;
	}
    
    @RequestMapping("/modify")
    public ModelAndView mdofiy(HttpSession session) {
    	AuthInfo ss = (AuthInfo) session.getAttribute("authInfo");
    	String id = ss.getId();
       MemberVO vo = memberSer.selectMember(id);
       
       ModelAndView mov = new ModelAndView();
       mov.setViewName("modify_form");
       mov.addObject("vo", vo);
       return mov;
    }
    

    
}
