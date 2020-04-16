package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import connection.OracleXEConnection;

public class won_C_qnaDAO {
	StringBuffer sb = new StringBuffer();
	ResultSet rs = null;
	PreparedStatement pstmt = null;
	Connection conn = null;
		
	public won_C_qnaDAO() {
		conn = OracleXEConnection.getInstance().getConnection();
	}
	
	

}
