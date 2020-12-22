package com.km.yak.util;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.km.yak.DAO.MemberDAO;
import com.km.yak.DAO.VisitDAO;
import com.km.yak.service.DrugService;
import com.km.yak.service.MemberService;
import com.km.yak.vo.VisitCountVO;

@Component
public class SessionListener implements HttpSessionListener{



	public static int count;

	public static int getCount() {
		return count;
	}

	public void sessionCreated(HttpSessionEvent event) {

		// dao = template.getMapper(MemberDao.class);

		

		// 세션이 만들어질 때 호출
		HttpSession session = event.getSession(); // request에서 얻는 session과 동일한 객체
		session.setMaxInactiveInterval(60 * 20);
		System.out.println(session);
		count++;

		session.getServletContext().log(session.getId() + " 세션생성 " + ", 접속자수 : " + count);

		WebApplicationContext wac = WebApplicationContextUtils.getRequiredWebApplicationContext(session.getServletContext());
        //등록되어있는 빈을 사용할수 있도록 설정해준다
        HttpServletRequest req = ((ServletRequestAttributes)RequestContextHolder.currentRequestAttributes()).getRequest();
        //request를 파라미터에 넣지 않고도 사용할수 있도록 설정
        VisitDAO visitCountDAO = (VisitDAO)wac.getBean(VisitDAO.class);

		VisitCountVO vo = new VisitCountVO();
		System.out.println("ip" + req.getRemoteAddr());
		System.out.println("agent" + req.getHeader("User-Agent"));
		vo.setVisit_ip(req.getRemoteAddr());
		vo.setVisit_agent(req.getHeader("User-Agent"));;
		vo.setVisit_refer(req.getHeader("referer"));
		visitCountDAO.insertVisitor(vo);
		visitCountDAO.today(count);
	}

	public void sessionDestroyed(HttpSessionEvent event) {
		// 세션이 소멸될 때 호출
		count--;
		if (count < 0)
			count = 0;
		HttpSession session = event.getSession();
		
		WebApplicationContext wac = WebApplicationContextUtils.getRequiredWebApplicationContext(session.getServletContext());
		VisitDAO visitCountDAO = (VisitDAO)wac.getBean(VisitDAO.class);
		
		
		visitCountDAO.today(count);
		session.getServletContext().log(session.getId() + " 세션소멸 " + ", 접속자수 : " + count);
	}

	
}
