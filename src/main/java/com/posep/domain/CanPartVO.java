package com.posep.domain;


/*CREATE TABLE CAN_PART
(
	CAN_PART             NUMBER NOT NULL ,
	CLASS3_NO            NUMBER NOT NULL ,
	TECH_ID              NUMBER NOT NULL ,
	TYPE                 VARCHAR2(30) NULL 
);
*/
public class CanPartVO {

	private int canPartNo; //가능분야번호
	private String techId; //과학기술자등록번호
	private String type;	//가능분야 타입 (협업/컨설팅)
	private String class3No; //소분류번호
	private String class3Name; //소분류번호
	
	public int getCanPartNo() {
		return canPartNo;
	}
	public void setCanPartNo(int canPartNo) {
		this.canPartNo = canPartNo;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getTechId() {
		return techId;
	}
	public void setTechId(String techId) {
		this.techId = techId;
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
		return "CanPartVO [canPartNo=" + canPartNo + ", type=" + type + ", techId=" + techId + ", class3No=" + class3No
				+ ", class3Name=" + class3Name + "]";
	}
	
	
	
}
