package com.package1; 
public class Patient {
  private String username_pat;
  private String password_pat;
  private String email_pat ;
  private String firstname_pat;
  private String lastname_pat;
  private String address_pat;
  private String description_pat;
  int phone_pat;
  int registnub_pat;
  String record_pat;
  
  public Patient(String username_pat, String password_pat, String email_pat, String firstname_pat, String lastname_pat, String address_pat, String description_pat, int phone_pat, int registnub_pat, String record_pat)
  {  
      this.username_pat=username_pat;
      this.password_pat=password_pat;
      this.email_pat=email_pat;
      this.firstname_pat=firstname_pat;
      this.lastname_pat=lastname_pat;
      this.address_pat=address_pat;
      this.description_pat=description_pat;
      this.phone_pat=phone_pat;
      this.registnub_pat=registnub_pat;
      this.record_pat=record_pat;
      
     
  }        
          
  
  public String getpassword_pat(){
   return password_pat;
   }
   public void setpassword_pat(String password_pat){
   this.password_pat=password_pat;
   }
  public String getusername_pat() {
    return username_pat;
  }
  public void setusername_pat(String username_pat) {
    this.username_pat = username_pat;
	}
  public String getemail_pat(){
   return email_pat;
   }
   public void setemail_pat(String email_pat){
   this.email_pat= email_pat;;
   }
   
     public String getfirstname_pat(){
   return firstname_pat;
   }
   public void setfirstname_pat(String firstname_pat){
   this.firstname_pat= firstname_pat;;
   }
   
     public String getlastname_pat(){
   return lastname_pat;
   }
   public void setlastname_pat(String lastname){
   this.lastname_pat= lastname_pat;;
   }
   
        public String address_pat(){
   return address_pat;
   }
   public void setaddress_pat(String address_pat){
   this.address_pat= address_pat;;
   }
   
   public int phone_pat(){return phone_pat;}
   
   public void setphone_pat(int phone_pat){
       this.phone_pat=phone_pat;}
   
   
      public int registnub_pat(){return registnub_pat;}
   
   public void setregistnub_pat(int registnub_pat){
       this.registnub_pat=registnub_pat;}
   
   
        public String record_pat(){return record_pat;}
   
   public void setrecord_pat(String record_pat){
       this.record_pat=record_pat;}
   
   }