package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import VO.BoardVO;
import connection.OracleXEConnection;

public class BoardSearchDAO {
	
	StringBuffer sb = new StringBuffer();
	ResultSet rs = null;
	PreparedStatement pstmt = null;
	Connection conn = null;
	
	
	
	public BoardSearchDAO() {
		// TODO Auto-generated constructor stub
		
		conn = OracleXEConnection.getInstance().getConnection();
	}
	
	
	
	public ArrayList<BoardVO> searchTitle(String x){
		
	}
	
	
}
