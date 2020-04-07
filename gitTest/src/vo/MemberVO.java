package vo;

public class MemberVO {
	private String memid;
	private String mempw;
	private String mname;
	private char gender;
	private String email;
	private String phone;
	private String favorite;
	private String grade;
	private String birth;
	private int age;
	
	public MemberVO() {}

	public MemberVO(String memid, String mempw, String mname, char gender, String email, String phone, String favorite,
			String grade, String birth, int age) {
		super();
		this.memid = memid;
		this.mempw = mempw;
		this.mname = mname;
		this.gender = gender;
		this.email = email;
		this.phone = phone;
		this.favorite = favorite;
		this.grade = grade;
		this.birth = birth;
		this.age = age;
	}

	public String getMemid() {
		return memid;
	}

	public void setMemid(String memid) {
		this.memid = memid;
	}

	public String getMempw() {
		return mempw;
	}

	public void setMempw(String mempw) {
		this.mempw = mempw;
	}

	public String getMname() {
		return mname;
	}

	public void setMname(String mname) {
		this.mname = mname;
	}

	public char getGender() {
		return gender;
	}

	public void setGender(char gender) {
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

	public String getFavorite() {
		return favorite;
	}

	public void setFavorite(String favorite) {
		this.favorite = favorite;
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
