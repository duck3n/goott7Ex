package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;

import connection.OracleXEConnection;
import vo.BoardVO;

public class BoardSearchDAO {

	ResultSet rs = null;
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSetMetaData rsmd = null;
	StringBuffer sb = new StringBuffer();

	public BoardSearchDAO() {
		conn = OracleXEConnection.getInstance().getConnection();
	}

	// 제목만 검색
	public ArrayList<BoardVO> searchTitle(String x) {

		ArrayList<BoardVO> list = new ArrayList<BoardVO>();

		String sql = "select * from bqna " 
					+ "where title like upper('%" + x + "%') ";

		try {
			pstmt = conn.prepareStatement(sql);
			System.out.println(sql);

			rs = pstmt.executeQuery();

			while (rs.next()) {

				int bno = rs.getInt("bno");
				String title = rs.getString("title");
				String contents = rs.getString("contents");
				Date dates = rs.getDate("dates");
				String category = rs.getString("category");
				int status = rs.getInt("status");
				String memid = rs.getString("memid");

				BoardVO vo = new BoardVO(bno, title, contents, dates, category, status, memid);

				list.add(vo);

			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return list;

	}

	// 내용만 검색
	public ArrayList<BoardVO> searchContents(String x) {

		ArrayList<BoardVO> list = new ArrayList<BoardVO>();

		String sql = "select * from bqna " 
					+ "where contents like upper('%" + x + "%') ";

		try {
			pstmt = conn.prepareStatement(sql);
			System.out.println(sql);

			rs = pstmt.executeQuery();

			while (rs.next()) {

				int bno = rs.getInt("bno");
				String title = rs.getString("title");
				String contents = rs.getString("contents");
				Date dates = rs.getDate("dates");
				String category = rs.getString("category");
				int status = rs.getInt("status");
				String memid = rs.getString("memid");

				BoardVO vo = new BoardVO(bno, title, contents, dates, category, status, memid);

				list.add(vo);

			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return list;

	}

	// 작성자만 검색
	public ArrayList<BoardVO> searchMemid(String x) {

		ArrayList<BoardVO> list = new ArrayList<BoardVO>();

		String sql = "select * from bqna " 
					+ "where memid like upper('%" + x + "%') ";

		try {
			pstmt = conn.prepareStatement(sql);
			System.out.println(sql);

			rs = pstmt.executeQuery();

			while (rs.next()) {

				int bno = rs.getInt("bno");
				String title = rs.getString("title");
				String contents = rs.getString("contents");
				Date dates = rs.getDate("dates");
				String category = rs.getString("category");
				int status = rs.getInt("status");
				String memid = rs.getString("memid");

				BoardVO vo = new BoardVO(bno, title, contents, dates, category, status, memid);

				list.add(vo);

			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return list;

	}
	
	// 제목 + 내용 검색
		public ArrayList<BoardVO> searchTitleContents(String x){
			
			ArrayList<BoardVO> list = new ArrayList<BoardVO>();
			
			String sql = 
					"select * from bqna "
					+
					"where title like upper('%" + x + "%') or "
					+
					"contents like upper('%" + x + "%') ";
					
			
			try {
				pstmt = conn.prepareStatement(sql);
				System.out.println(sql);
				
				rs = pstmt.executeQuery();
				
				while(rs.next()) {
					
					int bno = rs.getInt("bno");
					String title = rs.getString("title");
					String contents = rs.getString("contents");
					Date dates = rs.getDate("dates");
					String category = rs.getString("category");
					int status = rs.getInt("status");
					String memid = rs.getString("memid");
					
					BoardVO vo = new BoardVO(bno, title, contents, dates, category, status, memid);
					
					
					list.add(vo);
					
				}
				
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			return list;
			
		}
	
	

}
