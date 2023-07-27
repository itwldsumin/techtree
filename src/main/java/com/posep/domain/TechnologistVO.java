package com.posep.domain;

import java.util.Arrays;



/*CREATE TABLE TECHNOLOGIST
(
   TECH_ID              VARCHAR(20) NOT NULL ,
   TECH_NAME            VARCHAR2(30) NOT NULL ,
   COMPANY              VARCHAR2(30) NULL ,
   TEL                  VARCHAR2(30) NULL ,
   EMAIL                VARCHAR2(70) NULL ,
   ADDRESS              VARCHAR2(100) NULL ,
   EDUCATION            VARCHAR2(200) NULL ,
   VIDEO1               VARCHAR2(200) NULL ,
   VIDEO2               VARCHAR2(200) NULL ,
   VIDEO3               VARCHAR2(200) NULL ,
   MAJOR             VARCHAR(30) NULL,
   PERFORMANCE          VARCHAR2(300) NULL ,
   INTRO                VARCHAR2(100) NULL ,
   SCHEDULE             VARCHAR2(200) NULL ,
   TECH_PW              VARCHAR(30) NOT NULL ,
   CLASS3_NO            NUMBER NOT NULL 
);*/

public class TechnologistVO {

   private String techId;  //과학기술인등록번호
   private String techPW;  //과학기술인 비밀번호
   private String techName;  // 과학기술인 이름
   private String company;  //소속
   private String tel;  //연락처
   private String email;  //이메일
   private String address;  //주소
   private String education;  //최종학력
   private String video1;  //개발영상1
   private String video2;  //개발영상2
   private String video3;  //개발영상3
   private String major;   //전공분야
   private String class3No;   //소분류
   private String class3Name;   //소분류
   private String performance;  //주개발성과
   private String intro;  //소개글 한 줄
   private String schedule;  //스케줄링크
   private String[] files;
   
public String getTechId() {
	return techId;
}
public void setTechId(String techId) {
	this.techId = techId;
}
public String getTechPW() {
	return techPW;
}
public void setTechPW(String techPW) {
	this.techPW = techPW;
}
public String getTechName() {
	return techName;
}
public void setTechName(String techName) {
	this.techName = techName;
}
public String getCompany() {
	return company;
}
public void setCompany(String company) {
	this.company = company;
}
public String getTel() {
	return tel;
}
public void setTel(String tel) {
	this.tel = tel;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
public String getEducation() {
	return education;
}
public void setEducation(String education) {
	this.education = education;
}
public String getVideo1() {
	return video1;
}
public void setVideo1(String video1) {
	this.video1 = video1;
}
public String getVideo2() {
	return video2;
}
public void setVideo2(String video2) {
	this.video2 = video2;
}
public String getVideo3() {
	return video3;
}
public void setVideo3(String video3) {
	this.video3 = video3;
}
public String getMajor() {
	return major;
}
public void setMajor(String major) {
	this.major = major;
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
public String getPerformance() {
	return performance;
}
public void setPerformance(String performance) {
	this.performance = performance;
}
public String getIntro() {
	return intro;
}
public void setIntro(String intro) {
	this.intro = intro;
}
public String getSchedule() {
	return schedule;
}
public void setSchedule(String schedule) {
	this.schedule = schedule;
}
public String[] getFiles() {
	return files;
}
public void setFiles(String[] files) {
	this.files = files;
}
@Override
public String toString() {
	return "TechnologistVO [techId=" + techId + ", techPW=" + techPW + ", techName=" + techName + ", company=" + company
			+ ", tel=" + tel + ", email=" + email + ", address=" + address + ", education=" + education + ", video1="
			+ video1 + ", video2=" + video2 + ", video3=" + video3 + ", major=" + major + ", class3No=" + class3No
			+ ", class3Name=" + class3Name + ", performance=" + performance + ", intro=" + intro + ", schedule="
			+ schedule + ", files=" + Arrays.toString(files) + "]";
}
   
   

   
}