package com.km.yak.DAO;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.km.yak.vo.VisitCountVO;


public class VisitCountDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public void insertVisitor(VisitCountVO vo) throws Exception{
		System.out.println(vo.toString());
		sqlSession.insert("visit.insertvisit",vo);
	}

}
