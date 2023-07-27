package com.posep.domain;

/*CREATE TABLE FILES
(
   FILE_NO              NUMBER NOT NULL ,
   FILE_NAME            VARCHAR2(300) NULL ,
   TECH_ID              NUMBER NOT NULL ,
   QNA_NO               NUMBER NOT NULL 
);
*/
public class FilesVO {
   private String fileNo;  //파일번호
   private String fileName;  //파일이름
   private String techId;  //과학기술자등록번호
   private String qnaNo;  //문의글번호
   private String fileLocation;
   public String getFileNo() {
      return fileNo;
   }
   public void setFileNo(String fileNo) {
      this.fileNo = fileNo;
   }
   public String getFileName() {
      return fileName;
   }
   public void setFileName(String fileName) {
      this.fileName = fileName;
   }
   public String getTechId() {
      return techId;
   }
   public void setTechId(String techId) {
      this.techId = techId;
   }
   public String getQnaNo() {
      return qnaNo;
   }
   public void setQnaNo(String qnaNo) {
      this.qnaNo = qnaNo;
   }
   public String getFileLocation() {
      return fileLocation;
   }
   public void setFileLocation(String fileLocation) {
      this.fileLocation = fileLocation;
   }
   @Override
   public String toString() {
      return "FilesVO [fileNo=" + fileNo + ", fileName=" + fileName + ", techId=" + techId + ", qnaNo=" + qnaNo
            + ", fileLocation=" + fileLocation + "]";
   }

   
}