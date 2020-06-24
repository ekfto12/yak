package com.km.yak.service;

import java.util.ArrayList;

import com.km.yak.vo.ScheduleVO;

public interface iScheduleService {
	public ArrayList<ScheduleVO> selectRecord(String date);
	public void saveRecord(ScheduleVO vo);
	public void deleteRecord(String text);
}