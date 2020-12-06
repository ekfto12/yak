package com.km.yak.DAO;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.km.yak.vo.VisitCountVO;

@Component("visitDAO")
public class VisitDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public void insertVisitor(VisitCountVO vo){
		System.out.println(vo.getVisit_ip());
		sqlSession.insert("visit.insertvisit", vo);
    }
	
	public void today(int count) {
		sqlSession.update("visit.toady", count);
	}
}
