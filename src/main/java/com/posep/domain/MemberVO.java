package com.posep.domain;

/* MEM_NO               INT(9) NOT NULL AUTO_INCREMENT PRIMARY KEY ,
   MEM_ID               VARCHAR(30) NOT NULL ,
   MEM_PW               VARCHAR(30) NOT NULL ,
   MEM_NAME              VARCHAR(25) NOT NULL ,
   COMPANY              VARCHAR(30) NULL ,
   TEL                  VARCHAR(30) NULL ,
   EMAIL                VARCHAR(70) NULL ,
   ADDRESS              VARCHAR(100) NULL ,
   HOW                  VARCHAR(30) NULL ,
   GOAL                 VARCHAR(30) NULL ,
   AUTORITY             VARCHAR(10) NOT NULL DEFAULT '일반회원' 

*/
public class MemberVO {

   private String memId;//회원 ID
   private String memPw; // 회원비밀번호
   private String memName; //회원 이름
   private String company; // 소속
   private String tel; // 연락처
   private String email; // 이메일
   private String address; // 주소
   private String how; // 가입경로
   private String goal; // 가입목적
   private String authority;
   public String getMemId() {
      return memId;
   }
   public void setMemId(String memId) {
      this.memId = memId;
   }
   public String getMemPw() {
      return memPw;
   }
   public void setMemPw(String memPw) {
      this.memPw = memPw;
   }
   public String getMemName() {
      return memName;
   }
   public void setMemName(String memName) {
      this.memName = memName;
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
   public String getHow() {
      return how;
   }
   public void setHow(String how) {
      this.how = how;
   }
   public String getGoal() {
      return goal;
   }
   public void setGoal(String goal) {
      this.goal = goal;
   }
   public String getAuthority() {
      return authority;
   }
   public void setAuthority(String authority) {
      this.authority = authority;
   }
   @Override
   public String toString() {
      return "MemberVO [memId=" + memId + ", memPw=" + memPw + ", memName=" + memName + ", company=" + company
            + ", tel=" + tel + ", email=" + email + ", address=" + address + ", how=" + how + ", goal=" + goal
            + ", authority=" + authority + "]";
   }
   

   
}