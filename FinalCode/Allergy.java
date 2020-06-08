package com.package1;


public class Allergy {
    
    private String name_all;
    private String desc_all;
    private int id_all;
    
    public Allergy(String name_all,String desc_all,int id_all){
    
    this.name_all=name_all;
    this.desc_all=desc_all;
    this.id_all=id_all;
    
    }
       public String getname_all() {
    return name_all;
  }
  public void setname_all(String name_all) {
    this.name_all = name_all;
	}
       public String getdesc_all() {
    return desc_all;
  }
  public void setdesc_all(String desc_all) {
    this.desc_all = desc_all;
	}
    public int getid_all(){
    return id_all;
    }
    
    public void setid_all(int id_all){
    this.id_all=id_all;
    }
    
}
