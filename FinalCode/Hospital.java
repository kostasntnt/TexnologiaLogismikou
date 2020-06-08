package com.package1;  
public class Hospital {
  private String name_hos;
  private String address_hos;
  private int phone_hos;
  private float lat_hos;
  private float lng_hos;
  private int id_hos;
  
  public Hospital(String name_hos,String address_hos,int phone_hos,float lat_hos,float lng_hos,int id_hos)
  {
	  this.name_hos=name_hos;
	  this.address_hos=address_hos;
          this.phone_hos=phone_hos;
          this.lat_hos=lat_hos;
          this.lng_hos=lng_hos;
          this.id_hos=id_hos;
	  
  }
  
  
  
  public String getaddress_hos(){
   return address_hos;
   }
   public void setaddress_hos(String address_hos){
   this.address_hos=address_hos;
   }
    public String getname_hos(){
   return name_hos;
   }
   public void setname_hos(String name_hos){
   this.name_hos=name_hos;
   }
    public int getphone_hos(){
   return phone_hos;
   }
   public void setphone_hos(int phone_hos){
   this.phone_hos=phone_hos;
   }
   
       public float getlat_hos(){
   return lat_hos;
   }
   public void setlat_hos(float lat_hos){
   this.lat_hos=lat_hos;
   }

        public float getlng_hos(){
   return lng_hos;
   }
   public void setlng_hos(float lng_hos){
   this.lng_hos=lng_hos;
   }
   
     public int getid_hos(){
   return id_hos;
   }
   public void setid_hos(int id_hos){
   this.id_hos=id_hos;
   }
   
  }