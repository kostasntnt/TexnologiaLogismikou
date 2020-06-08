package com.package1;


public class Symptom {
      private String name_sym;
    private String desc_sym;
    private int id_sym;
    
    public Symptom(String name_sym,String desc_sym,int id_sym){
    
    this.name_sym=name_sym;
    this.desc_sym=desc_sym;
    this.id_sym=id_sym;
    
    }
       public String getname_sym() {
    return name_sym;
  }
  public void setname_sym(String name_sym) {
    this.name_sym = name_sym;
	}
       public String getdesc_sym() {
    return desc_sym;
  }
  public void setdesc_sym(String desc_sym) {
    this.desc_sym = desc_sym;
	}
    public int getid_sym(){
    return id_sym;
    }
    
    public void setid_sym(int id_sym){
    this.id_sym=id_sym;
    }
    
}
