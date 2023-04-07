package com.itwillbs.board;

import java.sql.Date;

public class BoardDTO { // Data transfer Object
	// BoardBean 
	
	
	private int num;

	private String name;			
	private String checkin;			
	private String checkout;
	private String am10;
	private String am11;
	private String pm12;
	private String pm13;
	private String pm14;
	private String pm15;
	private String pm16;
	private String pm17;
	private String pm18;
	private String pm19;
	private String pm20;
	private String memo;
	
//리스트용
	private int readcount;					
	private int re_ref;					
	private int re_lev;					
	private int re_seq;
	private Date date;
	
			
	
	
	
	// alt shift s + r
	public int getNum() {
		return num;
	}
	
	

	
	public String getCheckin() {
		return checkin;
	}

	public void setCheckin(String checkin) {
		this.checkin = checkin;
	}

	public String getCheckout() {
		return checkout;
	}

	public void setCheckout(String checkout) {
		this.checkout = checkout;
	}

	public String getAm10() {
		return am10;
	}

	public void setAm10(String am10) {
		this.am10 = am10;
	}

	public String getAm11() {
		return am11;
	}

	public void setAm11(String am11) {
		this.am11 = am11;
	}

	public String getPm12() {
		return pm12;
	}

	public void setPm12(String pm12) {
		this.pm12 = pm12;
	}

	public String getPm13() {
		return pm13;
	}

	public void setPm13(String pm13) {
		this.pm13 = pm13;
	}

	public String getPm14() {
		return pm14;
	}

	public void setPm14(String pm14) {
		this.pm14 = pm14;
	}

	public String getPm15() {
		return pm15;
	}

	public void setPm15(String pm15) {
		this.pm15 = pm15;
	}

	public String getPm16() {
		return pm16;
	}

	public void setPm16(String pm16) {
		this.pm16 = pm16;
	}

	public String getPm17() {
		return pm17;
	}

	public void setPm17(String pm17) {
		this.pm17 = pm17;
	}

	public String getPm18() {
		return pm18;
	}

	public void setPm18(String pm18) {
		this.pm18 = pm18;
	}

	public String getPm19() {
		return pm19;
	}

	public void setPm19(String pm19) {
		this.pm19 = pm19;
	}

	public String getPm20() {
		return pm20;
	}

	public void setPm20(String pm20) {
		this.pm20 = pm20;
	}

	public String getMemo() {
		return memo;
	}

	public void setMemo(String memo) {
		this.memo = memo;
	}

	public void setNum(int num) {
		this.num = num;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public int getReadcount() {
		return readcount;
	}
	public void setReadcount(int readcount) {
		this.readcount = readcount;
	}
	public int getRe_ref() {
		return re_ref;
	}

	public void setRe_ref(int re_ref) {
		this.re_ref = re_ref;
	}

	public int getRe_lev() {
		return re_lev;
	}

	public void setRe_lev(int re_lev) {
		this.re_lev = re_lev;
	}

	public int getRe_seq() {
		return re_seq;
	}

	public void setRe_seq(int re_seq) {
		this.re_seq = re_seq;
	}


				
	
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}

	
	// alt shift s + s
	@Override
	public String toString() {
		return "BoardDTO [num=" + num + ", name=" + name + ", checkin=" + checkin + ", checkout="
				+ checkout + ", am10=" + am10 + ", am11=" + am11 + ", pm12=" + pm12 + ", pm13=" + pm13 + ", pm14="
				+ pm14 + ", pm15=" + pm15 + ", pm16=" + pm16 + ", pm17=" + pm17 + ", pm18=" + pm18 + ", pm19=" + pm19
				+ ", pm20=" + pm20 + ", memo=" + memo + ", readcount=" + readcount + ", re_ref=" + re_ref + ", re_lev="
				+ re_lev + ", re_seq=" + re_seq + ", date=" + date + "]";
	}

}
