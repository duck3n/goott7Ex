package DAO;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import VO.noticeVO;
import connection.ConnectionManager;

public class noticeDAO {
	private SqlSession ss;

	public noticeDAO() {
        SqlSessionFactory factory = ConnectionManager.getInstance().getFactory();
        ss = factory.openSession(true);
    }
	
	public List<noticeVO> getAllData(Map<String, Integer> nums) {
		int total = getTotalCount();
		
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
}
