package com.posep.domain;

import java.sql.Date;
import java.sql.Timestamp;




public class QnaVO {

   private String  memId;  //회원번호
   private int qnaNo;  //문의글번호
   private String  type;  //분류 (협업/컨설팅)
   private String  hopeDate;  //희망일자
   private String  regDate;  //등록일자
   private String  contents;  //문의글 내용
   private String  title;  //문의글 제목
   private String  class3No;  //소분류번호-분야
   /*private String  c3No;  //소분류번호-분야*/
   private String  techId;  //과학기술인등록번호
   private String  techName;  //과학기술인 이름
   private String  email;  //과학기술인 이름
   private String  schedule;  //과학기술인 이름
   private String  intro;  //과학기술인 이름
   private String  memName;
   private String  class3Name;
public String getMemId() {
	return memId;
}
public void setMemId(String memId) {
	this.memId = memId;
}
public int getQnaNo() {
	return qnaNo;
}
public void setQnaNo(int qnaNo) {
	this.qnaNo = qnaNo;
}
public String getType() {
	return type;
}
public void setType(String type) {
	this.type = type;
}
public String getHopeDate() {
	return hopeDate;
}
public void setHopeDate(String hopeDate) {
	this.hopeDate = hopeDate;
}
public String getRegDate() {
	return regDate;
}
public void setRegDate(String regDate) {
	this.regDate = regDate;
}
public String getContents() {
	return contents;
}
public void setContents(String contents) {
	this.contents = contents;
}
public String getTitle() {
	return title;
}
public void setTitle(String title) {
	this.title = title;
}
public String getClass3No() {
	return class3No;
}
public void setClass3No(String class3No) {
	this.class3No = class3No;
}
public String getTechId() {
	return techId;
}
public void setTechId(String techId) {
	this.techId = techId;
}
public String getTechName() {
	return techName;
}
public void setTechName(String techName) {
	this.techName = techName;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getSchedule() {
	return schedule;
}
public void setSchedule(String schedule) {
	this.schedule = schedule;
}
public String getIntro() {
	return intro;
}
public void setIntro(String intro) {
	this.intro = intro;
}
public String getMemName() {
	return memName;
}
public void setMemName(String memName) {
	this.memName = memName;
}
public String getClass3Name() {
	return class3Name;
}
public void setClass3Name(String class3Name) {
	this.class3Name = class3Name;
}
@Override
public String toString() {
	return "QnaVO [memId=" + memId + ", qnaNo=" + qnaNo + ", type=" + type + ", hopeDate=" + hopeDate + ", regDate="
			+ regDate + ", contents=" + contents + ", title=" + title + ", class3No=" + class3No + ", techId=" + techId
			+ ", techName=" + techName + ", email=" + email + ", schedule=" + schedule + ", intro=" + intro
			+ ", memName=" + memName + ", class3Name=" + class3Name + "]";
}


//   private String canPart; //가능 분야

   
}