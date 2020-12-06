package com.km.yak.vo;

import java.sql.Date;

public class BannerVO {
		private String ban_name;
		private String company_name;
		private Date ban_start;
		private Date ban_exit;
		private int price;
		private String img_dir;
		private String img_dirr;
		private int ban_num;
		private String state;
		public String getBan_name() {
			return ban_name;
		}
		public void setBan_name(String ban_name) {
			this.ban_name = ban_name;
		}
		public String getCompany_name() {
			return company_name;
		}
		public void setCompany_name(String company_name) {
			this.company_name = company_name;
		}
		public Date getBan_start() {
			return ban_start;
		}
		public void setBan_start(Date ban_start) {
			this.ban_start = ban_start;
		}
		public Date getBan_exit() {
			return ban_exit;
		}
		public void setBan_exit(Date ban_exit) {
			this.ban_exit = ban_exit;
		}
		public int getPrice() {
			return price;
		}
		public void setPrice(int price) {
			this.price = price;
		}
		public String getImg_dir() {
			return img_dir;
		}
		public void setImg_dir(String img_dir) {
			this.img_dir = img_dir;
		}
		public String getImg_dirr() {
			return img_dirr;
		}
		public void setImg_dirr(String img_dirr) {
			this.img_dirr = img_dirr;
		}
		public int getBan_num() {
			return ban_num;
		}
		public void setBan_num(int ban_num) {
			this.ban_num = ban_num;
		}
		public String getState() {
			return state;
		}
		public void setState(String state) {
			this.state = state;
		}
		
		
	}

