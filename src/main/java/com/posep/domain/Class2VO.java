package com.posep.domain;
/*
CREATE TABLE CLASS_2
(
	CLASS2_NO            NUMBER NOT NULL ,
	CLASS2_NAME          VARCHAR2(30) NOT NULL ,
	CLASS2_CONTENTS      VARCHAR2(100) NULL ,
	CLASS1_NO            NUMBER NOT NULL 
);*/


public class Class2VO {
	
	private String class2No; //중분류번호
	private String class2Name;  //중분류이름
	private String class2Contents;  //중분류설명
	private String class1No;  //대분류번호
	private String class1Name;  //대분류이름
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
	public String getClass2Contents() {
		return class2Contents;
	}
	public void setClass2Contents(String class2Contents) {
		this.class2Contents = class2Contents;
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
		return "Class2VO [class2No=" + class2No + ", class2Name=" + class2Name + ", class2Contents=" + class2Contents
				+ ", class1No=" + class1No + ", class1Name=" + class1Name + "]";
	}
	
	
	
	
	
}
