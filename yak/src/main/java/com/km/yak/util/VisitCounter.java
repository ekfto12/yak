package com.km.yak.util;

import java.sql.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.context.support.WebApplicationContextUtils;


import com.km.yak.DAO.VisitCountDAO;
import com.km.yak.vo.VisitCountVO;

public class VisitCounter implements HttpSessionListener {

	
	@Override
	public void sessionCreated(HttpSessionEvent arg0){
		Date aa = new Date(0);
		HttpSession session = arg0.getSession();
        WebApplicationContext wac = WebApplicationContextUtils.getRequiredWebApplicationContext(session.getServletContext());
        //등록되어있는 빈을 사용할수 있도록 설정해준다
        HttpServletRequest req = ((ServletRequestAttributes)RequestContextHolder.currentRequestAttributes()).getRequest();
        //request를 파라미터에 넣지 않고도 사용할수 있도록 설정
        VisitCountDAO visitCountDAO = (VisitCountDAO)wac.getBean("visitCountDAO");
        VisitCountVO vo = new VisitCountVO();
        try {
        vo.setVisit_ip(req.getRemoteAddr());
        vo.setVisit_agent(req.getHeader("User-Agent"));//브라우저 정보
        vo.setVisit_refer(req.getHeader("referer"));//접속 전 사이트 정보
        vo.setVisit_time(aa);
        vo.setVisit_refer("aa");
        System.out.println(req.getRemoteAddr());
        System.out.println(req.getHeader("User-Agent"));
        	System.out.println(vo.toString());
			visitCountDAO.insertVisitor(vo);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
    }
    @Override
    public void sessionDestroyed(HttpSessionEvent arg0){
        //TODO Auto-generated method stub
    }

}
