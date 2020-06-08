package com.package1;
public class Disease {
 
    private String name_dis;
  private double mortalityrate_dis;
  private int nubvict_dis;
  private int nubdead_dis;
  private int id_dis;
  
 
   public Disease(String name_dis,int nubvict_dis,int nubdead_dis,double mortalityrate_dis,int id_dis)
  {
	  this.name_dis=name_dis;
	  this.nubvict_dis=nubvict_dis;
	  this.nubdead_dis=nubdead_dis;
          this.mortalityrate_dis=mortalityrate_dis;
          this.id_dis=id_dis;
	  
	  
  }
  
  
   public String getname_dis(){
   return name_dis;
   }
   public void setname_dis(String name_dis){
   this.name_dis=name_dis;
   }
      public double getmortalityrate_dis() {
    return mortalityrate_dis;
  }
  public void setmortalityrate_dis(double mortalityrate_dis) {
    this.mortalityrate_dis = mortalityrate_dis;
	}
 public int getnubvict_dis(){
   return nubvict_dis;
   }
   public void setnubvict_dis(int nubvict_dis){
   this.nubvict_dis=nubvict_dis;
   }
    public int getnubdead_dis(){
   return nubdead_dis;
   }
   public void setnubdead_dis(int nubdead_dis){
   this.nubdead_dis=nubdead_dis;
   }
   
     public int getid_dis(){
   return id_dis;
   }
   public void setid_dis(int id_dis){
   this.id_dis=id_dis;
   }
   
}