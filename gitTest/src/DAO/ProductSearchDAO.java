package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;

import VO.ProductVO;
import connection.OracleXEConnection;

public class ProductSearchDAO {

	ResultSet rs = null;
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSetMetaData rsmd = null;
	StringBuffer sb = new StringBuffer();

	public ProductSearchDAO() {
		conn = OracleXEConnection.getInstance().getConnection();
	}

	// 상품 검색
	public ArrayList<ProductVO> searchProduct(String x) {

		ArrayList<ProductVO> list = new ArrayList<ProductVO>();
		
		String sql =
				"select * "
				+
				"from product pro INNER JOIN proprice price "
				+
				"on pro.pno = price.pno "
				+
				"where pro.pname like upper('%" + x + "%') ";
	
			try {

				pstmt = conn.prepareStatement(sql);
				System.out.println(sql);

				rs = pstmt.executeQuery();

				while (rs.next()) {
					
					int pno = rs.getInt(1);
					String pbrand = rs.getString(2);
					String pname = rs.getString(3);
					String prodesc = rs.getString(4);
					String pcat = rs.getString(5);
					String imgfile = rs.getString(6);
					String imgfile2 = rs.getString(7);
					String imgfile3 = rs.getString(8);
					String imgfile4 = rs.getString(9);
					String psite = rs.getString(11);
					int pprice = rs.getInt(12);
					String plogo = rs.getString(13);
					int pback = rs.getInt(14);
			

					ProductVO vo = new ProductVO(pno, pname, pbrand, pcat, prodesc, imgfile, imgfile2, imgfile3, imgfile4, psite, pprice, plogo, pback);
					list.add(vo);

				}

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			return list;

		}
	
	
		
		
		// 브랜드별 검색
		public ArrayList<ProductVO> searchBrand (String x) {

			ArrayList<ProductVO> list = new ArrayList<ProductVO>();
			

			String sql =
					"select * "
					+
					"from product pro INNER JOIN proprice price "
					+
					"on pro.pno =  price.pno "
					+
					"where pro.pbrand like upper('%" + x + "%') ";
		
				try {

					pstmt = conn.prepareStatement(sql);
					System.out.println(sql);

					rs = pstmt.executeQuery();
					while (rs.next()) {
						int pno = rs.getInt(1);
						String pbrand = rs.getString(2);
						String pname = rs.getString(3);
						String prodesc = rs.getString(4);
						String pcat = rs.getString(5);
						String imgfile = rs.getString(6);
						String imgfile2 = rs.getString(7);
						String imgfile3 = rs.getString(8);
						String imgfile4 = rs.getString(9);
						String psite = rs.getString(11);
						int pprice = rs.getInt(12);
						String plogo = rs.getString(13);
						int pback = rs.getInt(14);
				

						ProductVO vo = new ProductVO(pno, pname, pbrand, pcat, prodesc, imgfile, imgfile2, imgfile3, imgfile4, psite, pprice, plogo, pback);
								
						list.add(vo);



					}

				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

				return list;

			}
		
		
		// 카테고리 검색

			public ArrayList<ProductVO> searchCategory(String x) {

				ArrayList<ProductVO> list = new ArrayList<ProductVO>();

				String sql =
						"select * "
						+
						"from product pro INNER JOIN proprice price "
						+
						"on pro.pno = price.pno "
						+
						"where pro.pcat like upper('%" + x + "%') ";
			
					try {

						pstmt = conn.prepareStatement(sql);
						System.out.println(sql);

						rs = pstmt.executeQuery();
						while (rs.next()) {
							
							int pno = rs.getInt(1);
							String pbrand = rs.getString(2);
							String pname = rs.getString(3);
							String prodesc = rs.getString(4);
							String pcat = rs.getString(5);
							String imgfile = rs.getString(6);
							String imgfile2 = rs.getString(7);
							String imgfile3 = rs.getString(8);
							String imgfile4 = rs.getString(9);
							String psite = rs.getString(11);
							int pprice = rs.getInt(12);
							String plogo = rs.getString(13);
							int pback = rs.getInt(14);
					

							ProductVO vo = new ProductVO(pno, pname, pbrand, pcat, prodesc, imgfile, imgfile2, imgfile3, imgfile4, psite, pprice, plogo, pback);
									
							list.add(vo);



						}

					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}

					return list;

				}
			
			
	
}
