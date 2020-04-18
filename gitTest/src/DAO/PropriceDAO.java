package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import connection.OracleXEConnection;
import VO.PropriceVO;

public class PropriceDAO {
	
	StringBuffer sb = new StringBuffer();
	
	ResultSet rs = null;
	PreparedStatement pstmt = null;
	Connection conn = null;
	
	public PropriceDAO() {
		
		conn = OracleXEConnection.getInstance().getConnection();

		}// 생성자 end
	
	public int addData(PropriceVO vo) {
		
		sb.setLength(0);
		sb.append("insert into proprice ");
		sb.append("values (?, ?, ?, ?, ? ) ");
		
		int result = -1;
		
		try {
			pstmt = conn.prepareStatement(sb.toString());

			pstmt.setInt(1, vo.getPno());
			pstmt.setString(2, vo.getPsite());
			pstmt.setInt(3, vo.getPprice());
			pstmt.setString(4, vo.getPlogo());
			pstmt.setInt(5, vo.getPback());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;

	}
	
	//addData() end
	
	// 데이터 전체를 조회하는 메소드 - getAllDate()
	
	public ArrayList getAllDate() {
		
		ArrayList<PropriceVO> list = new ArrayList<PropriceVO>();
		
		sb.setLength(0);
		sb.append("select * from proprice ");
		
		try {
			pstmt = conn.prepareStatement(sb.toString());
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				int pno = rs.getInt(1);
				String psite = rs.getString(2);
				int pprice = rs.getInt(3);
				String plogo = rs.getString(4);
				int pback = rs.getInt(5);
				
				PropriceVO vo = new PropriceVO(pno, psite, pprice, plogo, pback);
				
				list.add(vo);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	
	}	//getAllDate() end
	
	
	//번호로 리스트 출력
public ArrayList<PropriceVO> getsamedate(int ppno) {
		
		ArrayList<PropriceVO> list = new ArrayList<PropriceVO>();
		
		sb.setLength(0);
		sb.append("select * from proprice"
				+ "where ppno = ? ");
		
		try {
			pstmt = conn.prepareStatement(sb.toString());
			
			pstmt.setInt(1, ppno);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {

				String psite = rs.getString(2);
				int pprice = rs.getInt(3);
				String plogo = rs.getString(4);
				int pback = rs.getInt(5);
				
				PropriceVO vo = new PropriceVO(ppno, psite, pprice, plogo, pback);
				
				list.add(vo);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	
	}	//getAllDate() end
	

	
}
