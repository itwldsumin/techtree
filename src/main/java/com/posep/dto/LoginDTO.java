package com.posep.dto;

public class LoginDTO {

   private String memId;

   private String memPw;
   private String authority;
   private String memName;
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
   public String getAuthority() {
      return authority;
   }
   public void setAuthority(String authority) {
      this.authority = authority;
   }
   public String getMemName() {
      return memName;
   }
   public void setMemName(String memName) {
      this.memName = memName;
   }
   @Override
   public String toString() {
      return "LoginDTO [memId=" + memId + ", memPw=" + memPw + ", authority=" + authority + ", memName=" + memName
            + "]";
   }
   
   
   


   
}