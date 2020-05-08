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
	private final int postCount = 15; //한 페이지당 불러올 게시글 수 설정
	private int pageCount = 1;

	public noticeDAO() {
        SqlSessionFactory factory = ConnectionManager.getInstance().getFactory();
        ss = factory.openSession(true);
    }
	
	public List<noticeVO> getAllData(int pno) {
		Map<String, Integer> nums = new HashMap<String, Integer>(); //데이터 : startNo번째 게시물, endNo번째 게시물 
		
		int total = getTotalCount();//총 게시물 리턴
		pageCount = (total / postCount) + 1; //페이지 갯수 계산
		int lastCount = total % postCount; //마지막 페이지 게시글 수
		
		
		
		nums.put("startNo", pageCount*);
		nums.put("endNo", (pageCount*));
		
		return ss.selectList("getAllDataNotice", nums); //List<noticeVO>형태로 리턴
	}// getAllData(startNo, endNo) end
	
	
	public int getTotalCount() {
		return ss.selectOne("getTotalCountNotice");
	}
	
	public void addData(noticeVO vo) {
		ss.insert("insertOneNotice",vo);
	}// addData() end

	public noticeVO getData(int bno) {

		return null;
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
