package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;

import connection.OracleXEConnection;
import vo.ProductVO;

public class ProductSearchDAO {

	ResultSet rs = null;
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSetMetaData rsmd = null;
	StringBuffer sb = new StringBuffer();
	
	
	public ProductSearchDAO() {
		conn = OracleXEConnection.getInstance().getConnection();
	}
	

	
	

	// 상품 검색 (상세)
	public ArrayList<ProductVO> selectAllProduct(String pid, String pname, String pcat) {

		ArrayList<ProductVO> list = new ArrayList<ProductVO>();
		
		sb.setLength(0);

		sb.append("select pid, pname, pprice, pcat, pdesc, manuf, pstock, pimage ");
		sb.append("from product ");
		sb.append("where 1=1 ");10
		
		if(pid != "") {
			sb.append("and pid = ? ");11
		}
		
		if(pname != "") {
			sb.append("and pname LIKE '%' || ? || '%' ");20
		}
		
		if(pcat != "") {
			sb.append("and pcat LIKE '%' || ? || '%' "); 19
		}
		
	

		try {

			pstmt = conn.prepareStatement(sb.toString());
			
			switch(i) {
			
			case 21: break;
			case 42: rogic break;
			}
			
			if(pid != "") {
				pstmt.setString(1, pid);
			}
			if(pname != "") {
				pstmt.setString(2, pname);
			}
			if(pcat != "") {
				pstmt.setString(3, pcat);
			}
		
			rs = pstmt.executeQuery();
			

			while (rs.next()) {
		
				int pprice = rs.getInt(3);
				String pdesc = rs.getString(4);
				String manuf = rs.getString(5);
				int pstock = rs.getInt(6);
				String pimage = rs.getString(7);
		
				ProductVO vo = new ProductVO(pid, pname, pprice, pdesc, manuf, pstock, pimage, pcat);

				list.add(vo);

			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return list;

	}

}
