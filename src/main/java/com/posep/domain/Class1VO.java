package com.posep.domain;


/*CREATE TABLE CLASS_1
(
	CLASS1_NO            NUMBER NOT NULL ,
	CLASS1_NAME          VARCHAR2(30) NOT NULL ,
	CLASS1_CONTENTS      VARCHAR2(100) NULL 
);*/


public class Class1VO {

	
	private String class1No;	//대분류번호
	private String class1Name;  //대분류이름
	private String class1Contents;  //대분류설명
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
	public String getClass1Contents() {
		return class1Contents;
	}
	public void setClass1Contents(String class1Contents) {
		this.class1Contents = class1Contents;
	}
	
	
	@Override
	public String toString() {
		return "Class1VO [class1No=" + class1No + ", class1Name=" + class1Name + ", class1Contents=" + class1Contents
				+ "]";
	}
	
	
	
	
}
