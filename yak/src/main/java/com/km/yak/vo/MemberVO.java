package com.km.yak.vo;

import java.util.Date;

public class MemberVO {
	    private String ID;
	    private String PW;
	    private String NAME;
	    private String GENDER;
	    private String YEAR;
	    private String EMAIL;
	    private int GRADE;
	    
	    public int getGRADE() {
			return GRADE;
		}
		public void setGRADE(int gRADE) {
			GRADE = gRADE;
		}
		public boolean matchPassword(String pw) {
	        return this.PW.equals(pw);
	    }
		public String getID() {
			return ID;
		}
		public void setID(String iD) {
			ID = iD;
		}
		public String getPW() {
			return PW;
		}
		public void setPW(String pW) {
			PW = pW;
		}
		public String getNAME() {
			return NAME;
		}
		public void setNAME(String nAME) {
			NAME = nAME;
		}
		public String getGENDER() {
			return GENDER;
		}
		public void setGENDER(String gENDER) {
			GENDER = gENDER;
		}
		public String getYEAR() {
			return YEAR;
		}
		public void setYEAR(String yEAR) {
			YEAR = yEAR;
		}
		public String getEMAIL() {
			return EMAIL;
		}
		public void setEMAIL(String eMAIL) {
			EMAIL = eMAIL;
		}
	    
	   
	    
}
