package DAO;

import java.sql.*;
import java.util.ArrayList;

import VO.reqnaVO;
import connection.OracleXEConnection;

public class reqnaDAO {
	StringBuffer sb = new StringBuffer();
	ResultSet rs = null;
	PreparedStatement pstmt = null;
	Connection conn = null;
	
	public reqnaDAO() {
		conn = OracleXEConnection.getInstance().getConnection();
	}
	// 댓글 입력 메소드
	public void insComnts(reqnaVO vo) {
		sb.setLength(0);
		sb.append("insert into reqna ");
		sb.append("values (reqna_seq.nextval, ?, ?, sysdate, ? ) ");
		
		try {
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setString(1, vo.getId());
			pstmt.setString(2, vo.getComments());
			pstmt.setInt(3, vo.getRef());
			
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public ArrayList<reqnaVO> getAllComm(int bno){
		ArrayList<reqnaVO> list = new ArrayList<reqnaVO>();
		
		sb.setLength(0);
		sb.append("select * from reqna ");
		sb.append("where ref = ? ");
		sb.append("order by renum desc ");
		
		try {
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setInt(1, bno);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				reqnaVO vo = new reqnaVO(rs.getInt(1), rs.getInt(5), rs.getString(2), rs.getString(3), rs.getString(4));
				
				list.add(vo);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}
	// 댓글 조회 메소드 - 전체 조회
	public ArrayList<reqnaVO> getAllComm(){
		ArrayList<reqnaVO> list = new ArrayList<reqnaVO>();
		
		sb.setLength(0);
		sb.append("select * from reqna ");
		sb.append("order by renum desc ");
		
		try {
			pstmt = conn.prepareStatement(sb.toString());
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				reqnaVO vo = new reqnaVO(rs.getInt(1), rs.getInt(5), rs.getString(2), rs.getString(3), rs.getString(4));
				
				list.add(vo);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}
}
