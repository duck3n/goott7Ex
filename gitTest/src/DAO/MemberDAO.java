package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import connection.OracleXEConnection;

public class MemberDAO {
	StringBuffer sb = new StringBuffer();
	ResultSet rs = null;
	PreparedStatement pstmt = null;
	Connection conn = null;
		
	public MemberDAO() {
		conn = OracleXEConnection.getInstance().getConnection();
	}
	
	

}
