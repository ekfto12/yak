package com.km.yak.vo;

import java.sql.Timestamp;

public class ScheduleVO {
	private String text;
	private Timestamp date;
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public Timestamp getDate() {
		return date;
	}
	public void setDate(Timestamp date) {
		this.date = date;
	}
}