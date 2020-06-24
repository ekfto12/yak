package com.km.yak.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.km.yak.DAO.ScheduleDAO;

@Service
public class ScheduleService {
	@Inject
	ScheduleDAO scheduleDAO;
	
	
}