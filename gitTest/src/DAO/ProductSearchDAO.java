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
				"select pro.pno, pro.pbrend, pro.pname, pro.prodesc, pro.qty, pro.pcat, pro.imgfile, "
				+
				"price.pno, price.psite, price.pprice, price.plogo, price.pback "
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
					
					int pno1 = rs.getInt("pno1");
					String pbrend = rs.getString("pbrend");
					String pname = rs.getString("pname");
					String prodesc = rs.getString("prodesc");
					int qty = rs.getInt("qty");
					String pcat = rs.getString("pcat");
					String imgfile = rs.getString("imgfile");;
					int pno2 = rs.getInt("pno2");
					String psite = rs.getString("psite");
					int pprice = rs.getInt("pprice");
					String plogo = rs.getString("plogo");
					int pback = rs.getInt("pback");
			

					ProductVO vo = new ProductVO(pno1, pbrend, pname, prodesc, qty, pcat, imgfile, pno2, psite, pprice, plogo, pback);
							
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
					"select pro.pno, pro.pbrend, pro.pname, pro.prodesc, pro.qty, pro.pcat, pro.imgfile, pro.imgfile2, pro.imgfile3, pro.imgfile4"
					+
					"price.pno, price.psite, price.pprice, price.plogo, price.pback "
					+
					"from product pro INNER JOIN proprice price "
					+
					"on product.pno = proprice.pno "
					+
					"where pro.pbrend like upper('%" + x + "%') ";
		
				try {

					pstmt = conn.prepareStatement(sql);
					System.out.println(sql);

					rs = pstmt.executeQuery();
					while (rs.next()) {
						
						int pno1 = rs.getInt("pno1");
						String pbrend = rs.getString("pbrend");
						String pname = rs.getString("pname");
						String prodesc = rs.getString("prodesc");
						int qty = rs.getInt("qty");
						String pcat = rs.getString("pcat");
						String imgfile = rs.getString("imgfile");;
						int pno2 = rs.getInt("pno2");
						String psite = rs.getString("psite");
						int pprice = rs.getInt("pprice");
						String plogo = rs.getString("plogo");
						int pback = rs.getInt("pback");
				

						ProductVO vo = new ProductVO(pno1, pbrend, pname, prodesc, qty, pcat, imgfile, pno2, psite, pprice, plogo, pback);
								
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
						"select pro.pno, pro.pbrend, pro.pname, pro.prodesc, pro.qty, pro.pcat, pro.imgfile, pro.imgfile2, pro.imgfile3, pro.imgfile4"
						+
						"price.pno, price.psite, price.pprice, price.plogo, price.pback "
						+
						"from product pro INNER JOIN proprice price "
						+
						"on product.pno = proprice.pno "
						+
						"where pro.pcat like upper('%" + x + "%') ";
			
					try {

						pstmt = conn.prepareStatement(sql);
						System.out.println(sql);

						rs = pstmt.executeQuery();
						while (rs.next()) {
							
							int pno1 = rs.getInt("pno1");
							String pbrend = rs.getString("pbrend");
							String pname = rs.getString("pname");
							String prodesc = rs.getString("prodesc");
							int qty = rs.getInt("qty");
							String pcat = rs.getString("pcat");
							String imgfile = rs.getString("imgfile");;
							int pno2 = rs.getInt("pno2");
							String psite = rs.getString("psite");
							int pprice = rs.getInt("pprice");
							String plogo = rs.getString("plogo");
							int pback = rs.getInt("pback");
					

							ProductVO vo = new ProductVO(pno1, pbrend, pname, prodesc, qty, pcat, imgfile, pno2, psite, pprice, plogo, pback);
									
							list.add(vo);


						}

					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}

					return list;

				}
			
			
	
}
