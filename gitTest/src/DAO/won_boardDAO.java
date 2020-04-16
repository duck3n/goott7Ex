package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import VO.boardVO;
import VO.won_boardVO;
import connection.OracleXEConnection;

public class won_boardDAO {
	StringBuffer sb = new StringBuffer();
	ResultSet rs = null;
	PreparedStatement pstmt = null;
	Connection conn = null;
	
	public won_boardDAO() {
		conn = OracleXEConnection.getInstance().getConnection();
	}
	// 게시글 추가
	public void addData(won_boardVO vo) {
		sb.setLength(0);
		sb.append("insert into bqna ");
		sb.append("values (b_qna_seq.nextval, upper(?), upper(?), sysdate, upper(?), 0, upper(?) ) ");
		
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
	// 게시글 검색
	public ArrayList<won_boardVO> getAllData(int startNo, int endNo){
		ArrayList<won_boardVO> list = new ArrayList<won_boardVO>();
		
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
				String memid = rs.getString(6);
				String title = rs.getString(3);
				String contents = rs.getString(4);
				String dates = rs.getString(5);
				String category = rs.getString(7);
//				String pId = rs.getString(7);
				int status = rs.getInt(8);
				
//				boardVO vo = new boardVO(bno, hits, status, title, memid, contents, dates, pId, category);
//				list.add(vo);
				
				won_boardVO vo = new won_boardVO();
				vo.setBno(bno);
				vo.setTitle(title);
				vo.setContents(contents);
				vo.setCategory(category);
				vo.setDates(dates);
				vo.setStatus(status);
				vo.setMemid(memid);
				list.add(vo);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}// getAllData(startNo, endNo) end
	// 게시글 파악 메소드
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
	// 데이터 가져오기 method.
	public won_boardVO getData(int bno) {
		sb.setLength(0);
		sb.append("select * from bqna ");
		sb.append("where bno = ? ");
		
		won_boardVO vo = null;
//	title, writer, contents, date(sysdate), hits(0), category, pId, status(0)
		
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
			
			vo = new won_boardVO(bno, status, title, memid, contents, dates, category);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return vo;
	}
	// 게시글 수정 method. 제목, 내용, 카테고리 변경 가능.
	public void modifyData(won_boardVO vo) {
		sb.setLength(0);
		sb.append("update bqna ");
		sb.append("set title = upper(?), contents = upper(?), category = upper(?) ");
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
	// 게시글 삭제 method
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
	// 댓글 달렸는지 유무 파악하기. 댓글 달리면 status가 2로 바뀌고, 답변유무 column에 답변완료 라고 뜨게 함. 댓글 안달리면 '대기중'
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
	// 글 내리기. 삭제 x
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

}


