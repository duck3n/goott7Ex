package VO;

public class hwang_memberVo {
	private String id;
	private String pw;
	private String mname;
	private String gender;
	private String email;
	private String phone;
	private String grade;
	private int age;
	private String birth;
	
	
	public hwang_memberVo() {
		// TODO Auto-generated constructor stub
	}
	public hwang_memberVo(String id, String pw, String name, String gender, String email, String phone,
			String grade, String birth, int age ) {
		super();
		this.id = id;
		this.pw = pw;
		this.mname = name;
		this.gender = gender;
		this.email = email;
		this.phone = phone;
		this.grade = grade;
		this.birth = birth;
		this.age = age;
	}
	public hwang_memberVo(String email) {
		this.email=email;
	}
	public hwang_memberVo(String id, String name) {
		this.id=id;
		this.mname = name;
	}
	public hwang_memberVo(String id, String pw, String phone, String email) {
		this.id=id;
		this.pw=pw;
		this.phone=phone;
		this.email=email;
		
	}
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getName() {
		return mname;
	}

	public void setName(String name) {
		this.mname = name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}
	
}
