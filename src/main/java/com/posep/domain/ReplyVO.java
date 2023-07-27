package com.posep.domain;

import java.sql.Date;

/*CREATE TABLE REPLY
(
   RE_CONTENTS          VARCHAR2(200) NULL ,
   RE_NAME              VARCHAR2(30) NULL ,
   RE_DATE              DATE NULL ,
   QNA_NO               NUMBER NOT NULL ,
   RE_NO                NUMBER NOT NULL 
);*/

public class ReplyVO {

   private int replyNo; // 댓글번호
   private String replyText; // 댓글내용
   private String replyName; // 작성자
   private Date regDate; // 댓글등록일자
   private int qnaNo; // 문의글번호
   private String memId;
   private String memName;
   private String techId;
   private String techName;

   public int getReplyNo() {
      return replyNo;
   }

   public void setReplyNo(int replyNo) {
      this.replyNo = replyNo;
   }

   public String getReplyText() {
      return replyText;
   }

   public void setReplyText(String replyText) {
      this.replyText = replyText;
   }

   public String getReplyName() {
      return replyName;
   }

   public void setReplyName(String replyName) {
      this.replyName = replyName;
   }

   public Date getRegDate() {
      return regDate;
   }

   public void setRegDate(Date regDate) {
      this.regDate = regDate;
   }

   public int getQnaNo() {
      return qnaNo;
   }

   public void setQnaNo(int qnaNo) {
      this.qnaNo = qnaNo;
   }

   public String getMemId() {
      return memId;
   }

   public void setMemId(String memId) {
      this.memId = memId;
   }

   public String getMemName() {
      return memName;
   }

   public void setMemName(String memName) {
      this.memName = memName;
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

}