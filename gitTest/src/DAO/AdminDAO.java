package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import connection.OracleXEConnection;

public class AdminDAO {
	StringBuffer sb = new StringBuffer();
	ResultSet rs = null;
	PreparedStatement pstmt = null;
	Connection conn = null;
		
	public AdminDAO() {
		conn = OracleXEConnection.getInstance().getConnection();
	}
	
	public boolean regIdCheck(String mid) {
		//아이디 유효성 검사
		sb.setLength(0);
		sb.append("select rownum rn ");
		sb.append("from admin_table ");
		sb.append("where mid = ? ");
		
		boolean flag = false;
		
		try {
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setString(1, mid);
			
			pstmt.executeQuery();
			
			//값이 없을경우 참 값 반환
			flag = !rs.next();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return flag;
	}
	
	public void addManager(String mid, String mpw) {
		sb.setLength(0);
		sb.append("insert into admin_table ");
		sb.append("values (?, 'C', ?) ");
		
		try {
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setString(1, mid);
			pstmt.setString(2, mpw);
			
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void deleteManager(String mid) {
		sb.setLength(0);
		sb.append("delete admin_table ");
		sb.append("where mid = ? ");
		
		try {
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setString(1, mid);
			
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void changeLevel(char mlevel) {
		sb.setLength(0);
		sb.append("update bqna ");
		sb.append("set mlevel = ? ");
		
		try {
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.set(1, mlevel);
			
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
}
