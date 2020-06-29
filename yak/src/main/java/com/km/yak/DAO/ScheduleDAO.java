package com.km.yak.DAO;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.km.yak.vo.ScheduleVO;

@Repository
public class ScheduleDAO {
	
	@Inject
	private SqlSession sqlSession;
	
	public List<ScheduleVO> selectRecord(String date) {
		//return sqlSession.selectRecord();
		return sqlSession.selectList(date);
	}
	
	public void saveRecord(ScheduleVO vo) {
		sqlSession.insert("saveRecord", vo);
	}
	
	public void deleteRecord(int number) {
		sqlSession.delete("deleteRecord", number);
	}
}