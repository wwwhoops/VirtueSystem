package cn.Evaluation.Bean;
 
/*
 * 学生实体
 * */
public class Student {
	private int id;
	private String stuno;
	private String name;
	private String gender;
	private int age;
	private String ineva;
	private String ticket_num;
	private int csn;

	
	
	public Student(int id,String stuno,String name,String gender,int age,String ineva,int csn,String ticket_num){
		super();
		this.id=id;
		this.stuno=stuno;
		this.name=name;
		this.gender=gender;
		this.age=age;
		this.ineva=ineva;
		this.ticket_num=ticket_num;
		this.csn=csn;
		
		
	}
	
	
 
	



	public String getTicket_num() {
		return ticket_num;
	}

	public void setTicket_num(String ticket_num) {
		this.ticket_num = ticket_num;
	}



	public int getCsn() {
		return csn;
	}


	public void setCsn(int csn) {
		this.csn = csn;
	}







	public int getId() {
		return id;
	}
 
	public void setId(int id) {
		this.id = id;
	}
 
	public String getStuno() {
		return stuno;
	}
 
	public void setStuno(String stuno) {
		this.stuno = stuno;
	}
 
	public String getName() {
		return name;
	}
 
	public void setName(String name) {
		this.name = name;
	}
 
	public String getGender() {
		return gender;
	}
 
	public void setGender(String gender) {
		this.gender = gender;
	}
 
	public int getAge() {
		return age;
	}
 
	public void setAge(int age) {
		this.age = age;
	}

	public String getIneva() {
		return ineva;
	}

	public void setIneva(String ineva) {
		this.ineva = ineva;
	}

	
	
 
}
