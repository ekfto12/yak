package com.km.yak.service;

import java.util.List;

import com.km.yak.vo.ScheduleVO;

public interface iScheduleService {
	public List<ScheduleVO> selectRecord(String date);
	public void saveRecord(ScheduleVO vo);
	public void deleteRecord(int number);
}