package cn.TaylorPublic.Javabean;
/**
 * javabean实体层，封装数据。
 * @author Allow
 *
 */
public class UserPublic {
	private String name;
	private String stuno;
	private Integer id;
	private String gender;
	private String age;
	private String Number;
	private String ticket_num;
	private String csn;
	
	
	
	
	
	
	public String getTicket_num() {
		return ticket_num;
	}
	public void setTicket_num(String ticket_num) {
		this.ticket_num = ticket_num;
	}
	public String getCsn() {
		return csn;
	}
	public void setCsn(String csn) {
		this.csn = csn;
	}
	public String getNumber() {
		return Number;
	}
	public void setNumber(String number) {
		Number = number;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getStuno() {
		return stuno;
	}
	public void setStuno(String stuno) {
		this.stuno = stuno;
	}
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	@Override
	public String toString() {
		return "UserPublic [id=" + id + ",stuno="+ stuno +", name=" + name + ",gender="+ gender+",age="+age+",ticket_num="+ticket_num+"]";
	}
	
}
