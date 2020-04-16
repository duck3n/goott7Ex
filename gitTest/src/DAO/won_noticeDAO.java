package DAO;

import java.sql.*;
import java.util.ArrayList;

import VO.noticeVO;
import VO.won_noticeVO;
import connection.OracleXEConnection;

public class won_noticeDAO {
	StringBuffer sb = new StringBuffer();
	ResultSet rs = null;
	PreparedStatement pstmt = null;
	Connection conn = null;

	public won_noticeDAO() {
        conn = OracleXEConnection.getInstance().getConnection();
    }
	
	public void addData(won_noticeVO vo) {
		sb.setLength(0);
		sb.append("insert into notice ");
		sb.append("values (notice_nt_seq.nextval, ?, ?, ?, sysdate, 0, 0, ? ) ");

		try {
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setString(1, vo.getTitle());
			pstmt.setString(2, vo.getWriter());
			pstmt.setString(3, vo.getContents());
			pstmt.setString(4, vo.getCategory());

			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}// addData() end

	public ArrayList<won_noticeVO> getAllData(int startNo, int endNo) {
		ArrayList<won_noticeVO> list = new ArrayList<won_noticeVO>();

		sb.setLength(0);
		sb.append("select * ");
		sb.append("from (select rownum rn, bno, title, writer, contents, hits, regdate, status, category ");
		sb.append("from(select * from notice ");
		sb.append("order by bno desc ) ");
		sb.append("where rownum <= ? ) ");
		sb.append("where rn >= ? ");

		try {
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setInt(1, endNo);
			pstmt.setInt(2, startNo);

			rs = pstmt.executeQuery();

			while (rs.next()) {
				int bno = rs.getInt("bno");
				String title = rs.getString("title");
				String writer = rs.getString("writer");
				String contents = rs.getString("contents");
				String regdate = rs.getString("regdate");
				int status = rs.getInt("status");
				int hits = rs.getInt("hits");
				String category = rs.getString("category");

//				noticeVO vo = new noticeVO(bno, status, hits, title, writer, contents, regdate);
				won_noticeVO vo = new won_noticeVO();
				vo.setBno(bno); vo.setTitle(title); vo.setContents(contents); vo.setWriter(writer);
				vo.setRegdate(regdate); vo.setHits(hits); vo.setStatus(status); vo.setCategory(category);
				list.add(vo);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return list;
	}// getAllData(startNo, endNo) end


	public int getTotalCount() {
		sb.setLength(0); // buffer ����
		sb.append("select count(*) cnt "); // count��� column �����ϱ� ��Ī cnt �޾ƾ���
		sb.append("from notice ");

		int cnt = 0;

		try {
			pstmt = conn.prepareStatement(sb.toString());

			rs = pstmt.executeQuery();

			rs.next();
			// cnt = rs.getInt(1); // �ȵ�
			cnt = rs.getInt("cnt");

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return cnt;
	}

	public won_noticeVO getData(int bno) {
		sb.setLength(0);
		sb.append("select * from notice ");
		sb.append("where bno = ? ");

		won_noticeVO vo = null; 

		try {
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setInt(1, bno);

			rs = pstmt.executeQuery();
			rs.next();

			String title = rs.getString(2);
			String writer = rs.getString(3);
			String contents = rs.getString(4);
			String regdate = rs.getString(5);
			int status = rs.getInt(6);
			int hits = rs.getInt(7);
			String category = rs.getString(8);

			// VO�� ���
			vo = new won_noticeVO(bno, status, hits, title, writer, contents, regdate, category);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return vo;
	}// getData() end


	public void modifyData(won_noticeVO vo) {
		sb.setLength(0);
		sb.append("update notice ");
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
	}// modifyData() end

	public void deleteData(int bno) {
		sb.setLength(0);
		sb.append("delete notice ");
		sb.append("where bno = ? ");

		try {
			pstmt = conn.prepareStatement(sb.toString()); // �׸��� ������
			pstmt.setInt(1, bno);

			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}// deleteData() end

	public void raiseHits(int bno) {
		sb.setLength(0);
		sb.append("update notice ");
		sb.append("set hits = hits+1 ");
		sb.append("where bno = ? ");

		try {
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setInt(1, bno);

			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}// raiseHits() end

	public void blindData(int bno) {
		sb.setLength(0);
		sb.append("update notice ");
		sb.append("set status = 1 ");
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
	
	
	
//	public ArrayList<won_noticeVO> get9Data() {
//		ArrayList<won_noticeVO> list = new ArrayList<won_noticeVO>();
//
//		sb.setLength(0);
//		sb.append("select * ");
//		sb.append("from (select bno, title, writer, contents, hits, regdate, status, category ");
//		sb.append("from(select * from notice ");
//		sb.append("order by bno desc ) ");
//		sb.append("limit 0, 9 ");
//
//		try {
//			pstmt = conn.prepareStatement(sb.toString());
//	
//
//			rs = pstmt.executeQuery();
//
//			while (rs.next()) {
//				int bno = rs.getInt("bno");
//				String title = rs.getString("title");
//				String writer = rs.getString("writer");
//				String contents = rs.getString("contents");
//				String regdate = rs.getString("regdate");
//				int status = rs.getInt("status");
//				int hits = rs.getInt("hits");
//				String category = rs.getString("category");
//
////				noticeVO vo = new noticeVO(bno, status, hits, title, writer, contents, regdate);
//				won_noticeVO vo = new won_noticeVO();
//				vo.setBno(bno); vo.setTitle(title); vo.setContents(contents); vo.setWriter(writer);
//				vo.setRegdate(regdate); vo.setHits(hits); vo.setStatus(status); vo.setCategory(category);
//				list.add(vo);
//			}
//
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//
//		return list;
//	}// getAllData(startNo, endNo) end

}
