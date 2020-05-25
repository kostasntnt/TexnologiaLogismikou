public class Medicine {
  private String name_med;
  private double milligram_med;
  private int id_med;
  private String activesub_med;
  private Symptom sym1;
  private Allergy all1;
  
  
  
  public Medicine(String name_med,String activesub_med,int milligram,int id_med)
  {
	  this.name_med=name_med;
	  this.activesub_med=activesub_med;
	  this.milligram_med=milligram_med;
	  this.id_med=id_med;
	  
	  
  }
  
  
    public String getname_med() {
    return name_med;
  }
  public void setname_med(String name_med) {
    this.name_med = name_med;
	}
	public double getmilligram_med() {
    return milligram_med;
  }
  public void setmilligram_med(double milligram_med) {
    this.milligram_med = milligram_med;
	}
	 public String getactivesub_med(){
   return activesub_med;
   }
   public void setactivesub_med(String activesub_med){
   this.activesub_med =activesub_med;
   }
   
   
    public int getid_med(){
   return id_med;
   }
   public void setid_med(int id_med){
   this.id_med =id_med;}
      
    public Symptom getsym1(){
   return sym1;
   }
   public void setsym1(Symptom sym1){
   this.sym1=sym1;
   }
   
   
    public Allergy getall1(){
   return all1;
   }
   public void setsym1(Allergy all1){
   this.all1=all1;
   }
   
	}