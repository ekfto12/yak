package com.km.yak.DAO;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.km.yak.vo.ScheduleVO;

@Repository
public class ScheduleDAO {
	
	@Inject
	private SqlSession sqlSession;
	
	public ScheduleVO selectRecord() {
		//return sqlSession.selectRecord();
		return null;
	}
	
	public void saveRecord() {
		
	}
	
	public void deleteRecord() {
		
	}
}