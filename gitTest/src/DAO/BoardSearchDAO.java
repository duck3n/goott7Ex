package DAO;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import VO.*;
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

	public ArrayList<won_boardVO> searchTitle(String x) {
		ArrayList<won_boardVO> list = new ArrayList<won_boardVO>();

		String sql = "select * from bqna " + "where title like upper('%" + x + "%') ";

		try {
			pstmt = conn.prepareStatement(sql);
			System.out.println(sql);

			rs = pstmt.executeQuery();

			while (rs.next()) {

				int bno = rs.getInt("bno");
				int status = rs.getInt("status");
				String title = rs.getString("title");
				String memid = rs.getString("memid");
				String contents = rs.getString("contents");
				String dates = rs.getString("dates");
				String category = rs.getString("category");

				won_boardVO vo = new won_boardVO(bno, status, title, memid, contents, dates, category);

				list.add(vo);

			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;

	}

	public ArrayList<won_boardVO> searchContents(String x) {
		ArrayList<won_boardVO> list = new ArrayList<won_boardVO>();

		String sql = "select * from bqna " + "where contents like upper('%" + x + "%') ";

		try {
			pstmt = conn.prepareStatement(sql);
			System.out.println(sql);

			rs = pstmt.executeQuery();

			while (rs.next()) {

				int bno = rs.getInt("bno");
				int status = rs.getInt("status");
				String title = rs.getString("title");
				String memid = rs.getString("memid");
				String contents = rs.getString("contents");
				String dates = rs.getString("dates");
				String category = rs.getString("category");

				won_boardVO vo = new won_boardVO(bno, status, title, memid, contents, dates, category);

				list.add(vo);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;

	}

	public ArrayList<won_boardVO> searchMemid(String x) {
		ArrayList<won_boardVO> list = new ArrayList<won_boardVO>();

		String sql = "select * from bqna " + "where memid like upper('%" + x + "%') ";

		try {
			pstmt = conn.prepareStatement(sql);
			System.out.println(sql);

			rs = pstmt.executeQuery();

			while (rs.next()) {

				int bno = rs.getInt("bno");
				int status = rs.getInt("status");
				String title = rs.getString("title");
				String memid = rs.getString("memid");
				String contents = rs.getString("contents");
				String dates = rs.getString("dates");
				String category = rs.getString("category");

				won_boardVO vo = new won_boardVO(bno, status, title, memid, contents, dates, category);

				list.add(vo);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;

	}
	
	
	
	public ArrayList<won_boardVO> searchConTitle(String x){
		ArrayList<won_boardVO> list = new ArrayList<won_boardVO>();
		
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

			while (rs.next()) {

				int bno = rs.getInt("bno");
				int status = rs.getInt("status");
				String title = rs.getString("title");
				String memid = rs.getString("memid");
				String contents = rs.getString("contents");
				String dates = rs.getString("dates");
				String category = rs.getString("category");

				won_boardVO vo = new won_boardVO(bno, status, title, memid, contents, dates, category);

				list.add(vo);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
}
