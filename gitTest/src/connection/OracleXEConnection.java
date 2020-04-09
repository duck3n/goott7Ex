package connection;
// singleTone pattern

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class OracleXEConnection {
		private static OracleXEConnection oc = null;
		private static Connection conn;
		
		// DB �젒�냽 �젙蹂� �븘�슂�븿
		final String DRIVER = "oracle.jdbc.driver.OracleDriver";
		final String URL = "jdbc:oracle:thin:@localhost:1521:XE";
		final String USER = "scott";
		final String PASSWORD = "tiger";
		
		// 湲곕?�� �깮�꽦�옄 �깮�꽦
		private OracleXEConnection() {}
		
		public static OracleXEConnection getInstance() {
			if(oc == null) oc = new OracleXEConnection();
			return oc;
		}
		
		public Connection getConnection() {
			if(conn==null) {
				try {
					Class.forName(DRIVER);
					
					conn =DriverManager.getConnection(URL, USER, PASSWORD);
					System.out.println("conn: "+conn);
				} catch (ClassNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					System.out.println("sdf");
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					System.out.println("weg");
				}
			}// if end
			return conn;
		}
}
