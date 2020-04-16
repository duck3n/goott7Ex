package DAO;

import java.sql.*;
import java.util.ArrayList;

import VO.reqnaVO;
import VO.won_reqnaVO;
import connection.OracleXEConnection;

public class won_reqnaDAO {
	StringBuffer sb = new StringBuffer();
	ResultSet rs = null;
	PreparedStatement pstmt = null;
	Connection conn = null;
	
	public won_reqnaDAO() {
		conn = OracleXEConnection.getInstance().getConnection();
	}
	// 댓글 입력 메소드
	public void insComnts(reqnaVO vo) {
		sb.setLength(0);
		sb.append("insert into reqna ");
		sb.append("values (reqna_seq.nextval, upper(?), upper(?), sysdate, ? ) ");
		
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
	
	public ArrayList<won_reqnaVO> getAllComm(int bno){
		ArrayList<won_reqnaVO> list = new ArrayList<won_reqnaVO>();
		
		sb.setLength(0);
		sb.append("select * from reqna ");
		sb.append("where ref = ? ");
		sb.append("order by renum desc ");
		
		try {
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setInt(1, bno);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				won_reqnaVO vo = new won_reqnaVO(rs.getInt(1), rs.getInt(5), rs.getString(2), rs.getString(3), rs.getString(4));
				
				list.add(vo);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}
	// 댓글 조회 메소드 - 전체 조회
	public ArrayList<won_reqnaVO> getAllComm(){
		ArrayList<won_reqnaVO> list = new ArrayList<won_reqnaVO>();
		
		sb.setLength(0);
		sb.append("select * from reqna ");
		sb.append("order by renum desc ");
		
		try {
			pstmt = conn.prepareStatement(sb.toString());
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				won_reqnaVO vo = new won_reqnaVO(rs.getInt(1), rs.getInt(5), rs.getString(2), rs.getString(3), rs.getString(4));
				
				list.add(vo);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}
}
