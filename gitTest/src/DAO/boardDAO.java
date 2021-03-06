package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import VO.boardVO;
import connection.OracleXEConnection;

public class boardDAO {
	StringBuffer sb = new StringBuffer();
	ResultSet rs = null;
	PreparedStatement pstmt = null;
	Connection conn = null;
	
	public boardDAO() {
		conn = OracleXEConnection.getInstance().getConnection();
	}
	//게시글 추가
	public void addData(boardVO vo) {
		sb.setLength(0);
		sb.append("insert into bqna ");
		sb.append("values (b_qna_seq.nextval, ?, ?, sysdate, ?, 0, ? ) ");
		
		try {
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setString(1, vo.getTitle());
			pstmt.setString(2, vo.getContents());
			pstmt.setString(3, vo.getCategory());
			pstmt.setString(4, vo.getMemid());
			
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}// addData()end
	//게시글 모두 가져오기
	public ArrayList<boardVO> getAllData(int startNo, int endNo){
		ArrayList<boardVO> list = new ArrayList<boardVO>();
		
		sb.setLength(0);
		sb.append("select * ");
		sb.append("from (select rownum rn, bno, title, contents, dates, memid, category, status ");
		sb.append("from (select * from bqna ");
		sb.append("order by bno desc ) ");
		sb.append("where rownum <= ? ) ");
		sb.append("where rn >= ? ");
		
		try {
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setInt(1, endNo);
			pstmt.setInt(2, startNo);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				int bno = rs.getInt(2);
				String title = rs.getString(3);
				String contents = rs.getString(4);
				String dates = rs.getString(5);
				String memid = rs.getString(6);
				String category = rs.getString(7);
				int status = rs.getInt("status");
				
				boardVO vo = new boardVO();
				vo.setBno(bno);
				vo.setTitle(title);
				vo.setContents(contents);
				vo.setCategory(category);
				vo.setDates(dates);
				vo.setMemid(memid);
				vo.setStatus(status);
				list.add(vo);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}// getAllData(startNo, endNo) end
	
	public int getTotalCount() {
		sb.setLength(0);
		sb.append("select count(*) cnt ");
		sb.append("from bqna ");
		
		int cnt = 0;
		
		try {
			pstmt = conn.prepareStatement(sb.toString());
			rs = pstmt.executeQuery();
			
			rs.next();
			cnt = rs.getInt("cnt");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return cnt;
	}
	//번호로 조회
	public boardVO getData(int bno) {
		sb.setLength(0);
		sb.append("select * from bqna ");
		sb.append("where bno = ? ");
		
		boardVO vo = null;
//	title, writer, contents, date(sysdate), category, pId, status(0)
		
		try {
			pstmt=conn.prepareStatement(sb.toString());
			pstmt.setInt(1, bno);
			
			rs = pstmt.executeQuery();
			rs.next();
			
			String title = rs.getString(2);
			String contents = rs.getString(3);
			String dates = rs.getString(4);
			String category = rs.getString(5);
			int status = rs.getInt(6);
			String memid = rs.getString(7);
			
			vo = new boardVO(bno, status, title, memid, contents, dates, category);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return vo;
	}
	//수정
	public void modifyData(boardVO vo) {
		sb.setLength(0);
		sb.append("update bqna ");
		sb.append("set title = ?, contents = ?, category = ? ");
		sb.append("where bno = ? ");
		
		try {
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setString(1, vo.getTitle());
			pstmt.setString(2, vo.getContents());
			pstmt.setString(3, vo.getCategory());
			pstmt.setInt(4, vo.getBno());
			
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	//삭제
	public void deleteData(int bno) {
		sb.setLength(0);
		sb.append("delete bqna ");
		sb.append("where bno = ? ");
		
		try {
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setInt(1, bno);
			
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void blindData(int bno) {
		sb.setLength(0);
		sb.append("update bqna ");
		sb.append("set status = 1 ");
		sb.append("where bno = ? ");
		
		try {
			pstmt=conn.prepareStatement(sb.toString());
			pstmt.setInt(1, bno);
			
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void name() {
		
	}
	
	public void addComm(int bno) {
		sb.setLength(0);
		sb.append("update bqna ");
		sb.append("set status = 2 ");
		sb.append("where bno = ? ");
		
		try {
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setInt(1, bno);
			
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
}


