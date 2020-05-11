package connection;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

public class ConnTest {
	public static void main(String[] args) {
		SqlSessionFactory factory = ConnectionManager.getInstance().getFactory();
		
		System.out.println(factory);
		
		SqlSession ss = factory.openSession(true);
		
		String memid = "asd";
		
		String str = ss.selectOne("getOneEmailByMemid",memid);
		
		System.out.println(str);
	}

}
