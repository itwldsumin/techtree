package com.posep.domain;

/*CREATE TABLE INTEREST_PART
(
	CLASS3_NO            NUMBER NOT NULL ,
	MEM_NO               NUMBER NOT NULL ,
	INTERESET_PART_NO    NUMBER NOT NULL ,
	TYPE                 VARCHAR2(30) NULL 
);*/

public class InterestPartVO {
	private int interestPartNo;  //관심분야번호
	private String memId;  //회원번호
	private String type;	//가능분야 타입 (협업/컨설팅)
	private String class3No; //소분류번호
	private String class3Name; //소분류번호
	public int getInterestPartNo() {
		return interestPartNo;
	}
	public void setInterestPartNo(int interestPartNo) {
		this.interestPartNo = interestPartNo;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getClass3No() {
		return class3No;
	}
	public void setClass3No(String class3No) {
		this.class3No = class3No;
	}
	public String getClass3Name() {
		return class3Name;
	}
	public void setClass3Name(String class3Name) {
		this.class3Name = class3Name;
	}
	@Override
	public String toString() {
		return "InterestPartVO [interestPartNo=" + interestPartNo + ", memId=" + memId + ", type=" + type
				+ ", class3No=" + class3No + ", class3Name=" + class3Name + "]";
	}
	
	
}
