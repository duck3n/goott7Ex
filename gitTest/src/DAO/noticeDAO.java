package DAO;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import VO.noticeVO;
import connection.ConnectionManager;

public class noticeDAO {
	private SqlSession ss;
	private final int viewRowCount = 15; //페이지 당 출력할 게시글 수
	private int pageCount; //페이지 총 갯수

	public noticeDAO() {
        SqlSessionFactory factory = ConnectionManager.getInstance().getFactory();
        ss = factory.openSession(true);
    }
	
	public List<noticeVO> getAllData(int pno) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		int startNo = 0;
		
//		int total = getTotalCount();//총 게시물 리턴
//		pageCount = (total / postCount) + 1; //페이지 갯수 계산
//		int lastRowCount = total % 15; //마지막 페이지 게시글 수
//		
//		if (total%15 > 0) pageCount++; //나머지 존재시 페이지 하나 더 할당
		
		map.put("startNo", startNo);
		map.put("viewRowCount", viewRowCount);
		return ss.selectList("getAllDataNotice", map); //List<noticeVO>형태로 리턴
	}// getAllData(startNo, endNo) end
	
	
	public int getTotalCount() {
		return ss.selectOne("getTotalCountNotice");
	}
	
	public void addData(noticeVO vo) {
		ss.insert("insertOneNotice",vo);
	}// addData() end

	public noticeVO getOneData(int bno) {
		return ss.selectOne("getOneDataNotice", bno);
	}// getData() end


	public void modifyData(noticeVO vo) {
	}// modifyData() end

	public void deleteData(int bno) {
	}// deleteData() end

	public void raiseHits(int bno) {
	}// raiseHits() end

	public void blindData(int bno) {
	}

	public int getPageCount() {
		return pageCount;
	}
	
}
