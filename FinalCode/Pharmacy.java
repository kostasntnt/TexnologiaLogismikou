package com.package1;   
public class Pharmacy {
  private String name_pha;
  private String address_pha;
  private int phone_pha;
  private float lat_pha;
  private float lng_pha;
  private int id_pha;

  
   public Pharmacy(String name_pha,String address_pha,int phone_pha,float lat_pha,float lng_pha,int id_pha)
  {
	  this.name_pha=name_pha;
	  this.address_pha=address_pha;
          this.phone_pha=phone_pha;
          this.lat_pha=lat_pha;
          this.lng_pha=lng_pha;
          this.id_pha=id_pha;
	  
  }
  
  public String getaddress_pha(){
   return address_pha;
   }
   public void setaddress_pha(String address_pha){
   this.address_pha=address_pha;
   }
    public String getname_pha(){
   return name_pha;
   }
   public void setname_pha(String name_pha){
   this.name_pha=name_pha;
   }
    public int getphone_pha(){
   return phone_pha;
   }
   public void setphone_pha(int phone_pha){
   this.phone_pha=phone_pha;
   }

   public float getlng_pha(){
   return lng_pha;
   }
   public void setlng_pha(float lng_pha){
   this.lng_pha=lng_pha;
   }
   
           public float getlat_pha(){
   return lat_pha;
   }
   public void setlatg_pha(float lat_pha){
   this.lat_pha=lat_pha;
   }
  }