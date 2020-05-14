package connection;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import DAO.noticeDAO;
import VO.noticeVO;

public class ConnTest {
	public static void main(String[] args) {
		SqlSessionFactory factory = ConnectionManager.getInstance().getFactory();
		
		System.out.println(factory);
		
		SqlSession ss = factory.openSession(true);
		
//		String memid = "asd";
//		String str = ss.selectOne("getOneEmailByMemid",memid);
//		System.out.println(str);
		
		noticeDAO dao = new noticeDAO();
		List<noticeVO> list = dao.getAllData(1);
		for(noticeVO vo : list) {
			System.out.println(vo.getTitle());
		}
	}

}
