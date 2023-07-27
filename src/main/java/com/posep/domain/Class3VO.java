package com.posep.domain;

/*CREATE TABLE CLASS_3
(
	CLASS2_NO            NUMBER NOT NULL ,
	CLASS3_NO            NUMBER NOT NULL ,
	CLASS3_NAME          VARCHAR2(30) NOT NULL ,
	CLASS3_CONTENTS      VARCHAR2(100) NULL 
);*/

public class Class3VO {

	private String class3No;  //소분류번호
	private String class3Name;  //소분류이름
	private String class3Contents;  //소분류설명
	private String class2No;  //중분류번호
	private String class2Name;  //중분류이름
	private String class1No;
	private String class1Name;
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
	public String getClass3Contents() {
		return class3Contents;
	}
	public void setClass3Contents(String class3Contents) {
		this.class3Contents = class3Contents;
	}
	public String getClass2No() {
		return class2No;
	}
	public void setClass2No(String class2No) {
		this.class2No = class2No;
	}
	public String getClass2Name() {
		return class2Name;
	}
	public void setClass2Name(String class2Name) {
		this.class2Name = class2Name;
	}
	public String getClass1No() {
		return class1No;
	}
	public void setClass1No(String class1No) {
		this.class1No = class1No;
	}
	public String getClass1Name() {
		return class1Name;
	}
	public void setClass1Name(String class1Name) {
		this.class1Name = class1Name;
	}
	@Override
	public String toString() {
		return "Class3VO [class3No=" + class3No + ", class3Name=" + class3Name + ", class3Contents=" + class3Contents
				+ ", class2No=" + class2No + ", class2Name=" + class2Name + ", class1No=" + class1No + ", class1Name="
				+ class1Name + "]";
	}
	
	
	
}
