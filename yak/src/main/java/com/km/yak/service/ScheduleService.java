package com.km.yak.service;

import java.sql.Timestamp;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.km.yak.DAO.ScheduleDAO;
import com.km.yak.vo.ScheduleVO;

@Service
public class ScheduleService implements iScheduleService {
	@Inject
	ScheduleDAO scheduleDAO;
	
	@Override
	public List<ScheduleVO> selectRecord(String date) {
		return scheduleDAO.selectRecord(date);
	}
	
	@Override
	public void saveRecord(ScheduleVO vo) {
		String text = vo.getText();
		int number = vo.getNumber();
		
		scheduleDAO.saveRecord(vo);
		return ;
	}
	
	@Override
	public void deleteRecord(int number) {
		scheduleDAO.deleteRecord(number);
	}
}