package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import VO.hwang_memberVo;

public class hwang_memberDao {
	final String DRIVER = "oracle.jdbc.driver.OracleDriver";
	final String URL = "jdbc:oracle:thin:@localhost:1521:XE";
	final String USER = "scott";
	final String PASSWORD = "tiger";

	StringBuffer sb = new StringBuffer();
	ResultSet rs = null;
	PreparedStatement pstmt = null;
	Connection conn = null;

	// 생성자 호출시 db접속이 완료되게 처리
	public hwang_memberDao() {
		// TODO Auto-generated constructor stub
		try {
			Class.forName(DRIVER);
			conn = DriverManager.getConnection(URL, USER, PASSWORD);
			System.out.println(conn);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}// 생성자 end

	// 멤버 추가
	public void addData(hwang_memberVo vo) {
		sb.append("insert into member2 ");
		sb.append(
				"values (upper(?), upper(?), upper(?) , upper(?) , upper(?) , upper(?) , upper(?) , upper(?) , upper(?) ) ");

		try {
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setString(1, vo.getId());
			pstmt.setString(2, vo.getPw());
			pstmt.setString(3, vo.getName());
			pstmt.setString(4, vo.getGender());
			pstmt.setString(5, vo.getEmail());
			pstmt.setString(6, vo.getPhone());
			pstmt.setString(7, vo.getGrade());
			pstmt.setString(8, vo.getBirth());
			pstmt.setInt(9, vo.getAge());

			pstmt.executeUpdate();
			
			System.out.println(sb.toString());

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}// addData end

	public ArrayList getAllData() {

		ArrayList<hwang_memberVo> list = new ArrayList<hwang_memberVo>();

		sb.setLength(0);
		sb.append("select * from member2 ");

		try {
			pstmt = conn.prepareStatement(sb.toString());
			rs = pstmt.executeQuery();
			while (rs.next()) {
				String id = rs.getString("id");
				String pw = rs.getString("pw");
				String name = rs.getString("mname");
				String gender = rs.getString("gender");
				String email = rs.getString("email");
				String phone = rs.getString("phone");
				String grade = rs.getString("grade");
				String birth = rs.getString("birth");
				int age = rs.getInt("age");

				hwang_memberVo vo = new hwang_memberVo(id, pw, name, gender, email, phone, grade, birth, age);

				list.add(vo);

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}// getAllData end

	// 존재하는 회원인지 여부를 확인하는 메소드
	public boolean isExist(String id, String pw) {

		sb.setLength(0);
		sb.append("select * from member2 ");
		sb.append("where id = upper(?) and pw = upper(?) ");

		boolean isOk = false;

		try {
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setString(1, id);
			pstmt.setString(2, pw);

			rs = pstmt.executeQuery();

			isOk = rs.next(); // 존재 여부만 파악해서 리턴
			
			System.out.println(sb.toString());
			System.out.println(isOk);

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return isOk;
	}// isExist end

	public boolean isExistById(String id) {
		sb.setLength(0);
		sb.append("select * from member2 ");
		sb.append("where id = upper(?) ");

		boolean flag = false;

		try {
			
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setString(1, id);

			rs = pstmt.executeQuery();
			
			
			flag = rs.next();
			
			System.out.println(sb.toString());
			System.out.println(flag);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return flag;
	}// isExistById end

	public String searchId(String email) {
		sb.setLength(0);
		String id = null;
		sb.append("select id ");
		sb.append("from member2 ");
		sb.append("where email = upper(?) ");

		try {
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setString(1, email);

			rs = pstmt.executeQuery();
			while (rs.next()) {
				id = rs.getString("id");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return id;
	}

	public String searchPw(String id, String name) {
		sb.setLength(0);
		String pw = null;
		sb.append("select pw ");
		sb.append("from member2 ");
		sb.append("where id = upper(?) and mname = upper(?) ");

		try {
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setString(1, id);
			pstmt.setString(2, name);

			rs = pstmt.executeQuery();
			while (rs.next()) {
				pw = rs.getString("pw");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return pw;
	}

	// 회원 정보 변경
	public void updateData(String id, String pw, String phone, String email) {
		sb.setLength(0);
		sb.append("update member2 ");
		sb.append("set email= upper(?) , pw = upper(?) , phone = upper(?) ");
		sb.append("where id = upper(?) ");

		try {
			
			System.out.println(sb.toString());
			
			pstmt = conn.prepareStatement(sb.toString());
			
			pstmt.setString(1, email);
			pstmt.setString(2, pw);
			pstmt.setString(3, phone);
			pstmt.setString(4, id);

			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}// updateData end

}
