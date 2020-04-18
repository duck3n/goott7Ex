package DAO;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import connection.OracleXEConnection;
import VO.ProductVO;

public class ProductDAO {
	
	StringBuffer sb = new StringBuffer();
	
	ResultSet rs = null;
	PreparedStatement pstmt = null;
	Connection conn = null;;
	
	public ProductDAO() {
		
		conn = OracleXEConnection.getInstance().getConnection();				//주석처리 부분을 한줄로 요약.
		
	} //생성자 end
	
	// 상품정보 입력하는 메소드 - addData()
	public int addData(ProductVO vo) {
	//public void addData(ProductVO vo) {
		
		sb.setLength(0);
		sb.append("insert into product ");
		sb.append("values (?, upper(?), upper(?), upper(?), upper(?), upper(?), upper(?), upper(?), upper(?) ) ");
		
		int result = -1;
		
		try {
			pstmt = conn.prepareStatement(sb.toString());
			
			pstmt.setInt(1, vo.getPno());
			pstmt.setString(2, vo.getPname());
			pstmt.setString(3, vo.getPbrand());
			pstmt.setString(4, vo.getPcat());
			pstmt.setString(5, vo.getProdesc());
			pstmt.setString(6, vo.getImgfile());
			pstmt.setString(7, vo.getImgfile2());
			pstmt.setString(8, vo.getImgfile3());
			pstmt.setString(9, vo.getImgfile4());
			
//			pstmt.setString(11, vo.getPsite());
//			pstmt.setString(12, vo.getPprice());
//			pstmt.setString(13, vo.getPlogo());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
		
	} //addData() end
	
	
	// 상품에 대한 정보만 전체 조회하는 메소드 - getAllDate() 
	public ArrayList getAllDate() {
		
		ArrayList<ProductVO> list = new ArrayList<ProductVO>();
		
		sb.setLength(0);
		sb.append("select * from product ORDER BY PNO ASC ");
		
		try {
			pstmt = conn.prepareStatement(sb.toString());
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				int pno = rs.getInt(1);
				String pname = rs.getString(2);
				String pbrand = rs.getString(3);
				String pcat = rs.getString(4);
				String prodesc = rs.getString(5);
				String imgfile = rs.getString(6);
				String imgfile2 = rs.getString(7);
				String imgfile3 = rs.getString(8);
				String imgfile4 = rs.getString(9);
				
				ProductVO vo = new ProductVO(pno, pname, pbrand, pcat, prodesc, imgfile, imgfile2, imgfile3, imgfile4);
						
				
				list.add(vo);
			}	
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	
	}		//getAllDate() end
	
	
	// 상품정보를 조회 - 상품번호로 조회하는 메소드 - getData()
	public ProductVO getData(int pno) {
		sb.setLength(0);
		sb.append("select * from product a inner JOIN proprice b ON a.pno = b.pno ");
		sb.append("where a.pno = ? ORDER BY PPRICE ASC ");
		
		ProductVO vo = null;
		
		try {
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setInt(1, pno);
			
			rs = pstmt.executeQuery();
			
			rs.next();
			
			String pname = rs.getString(2);
			String pbrand = rs.getString(3);
			String pcat = rs.getString(4);
			String prodesc = rs.getString(5);
			String imgfile = rs.getString(6);
			String imgfile2 = rs.getString(7);
			String imgfile3 = rs.getString(8);
			String imgfile4 = rs.getString(9);
			
			String psite = rs.getString(11);
			int pprice = rs.getInt(12);
			String plogo = rs.getString(13);
			int pback = rs.getInt(14);
			
			vo = new ProductVO(pno, pname, pbrand, pcat, prodesc, imgfile, imgfile2, imgfile3, imgfile4, psite, pprice, plogo, pback);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return vo;
	} 	//getData() end
	
	
	// product 와 proprice 테이블 조인 
	public ArrayList<ProductVO> AllDatas(){
		
		ArrayList<ProductVO> jlist = new ArrayList<ProductVO>();
		
		sb.setLength(0);
		sb.append("SELECT * " + 
				"FROM product a inner JOIN proprice b ON a.pno = b.pno " );
		
		try {
			pstmt = conn.prepareStatement(sb.toString());
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				int pno = rs.getInt(1);
				String pname = rs.getString(2);
				String pbrand = rs.getString(3);
				String pcat = rs.getString(4);
				String prodesc = rs.getString(5);
				String imgfile = rs.getString(6);
				String imgfile2 = rs.getString(7);
				String imgfile3 = rs.getString(8);
				String imgfile4 = rs.getString(9);
				
				String psite = rs.getString(10);
				int pprice = rs.getInt(11);
				String plogo = rs.getString(12);
				int pback = rs.getInt(13);
				
				ProductVO vo = new ProductVO(pno, pname, pbrand, pcat, prodesc, imgfile, imgfile2, imgfile3, imgfile4, psite, pprice, plogo, pback);
				
				jlist.add(vo);
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return jlist;
	}
	
	
	//최저가
	public ArrayList<ProductVO> datamin() {
		
		ArrayList<ProductVO> jlist = new ArrayList<ProductVO>();
		
		sb.setLength(0);
		sb.append("select a.pno, min(b.pprice) " + 
				"from product a inner JOIN proprice b ON a.pno = b.pno "
				+ "group by a.pno ");
		
		try {
			pstmt = conn.prepareStatement(sb.toString());
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				int pno = rs.getInt(1);
				int pprice = rs.getInt(2);
				
				ProductVO vo = new ProductVO();
				
				vo.setPno(pno);
				vo.setPprice(pprice);
				
				jlist.add(vo);
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return jlist;
	}
	
	
	//제품번호가 같은 데이터를 가격테이블에서 리스트 출력하기.
	public ArrayList<ProductVO> Datasame(int pno){
		
		ArrayList<ProductVO> slist = new ArrayList<ProductVO>();
		
		sb.setLength(0);
		sb.append("SELECT pno, plogo, pprice, psite, pback ");
		sb.append("FROM proprice ");
		sb.append("where pno = upper(?) ORDER BY PPRICE ASC ");
		
		ProductVO vo = null;
		
		try {
			pstmt = conn.prepareStatement(sb.toString());
			
			pstmt.setInt(1, pno);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				String plogo = rs.getString(2);
				int pprice = rs.getInt(3);
				String psite = rs.getString(4);
				int pback = rs.getInt(5);
				
				vo = new ProductVO(pno, psite, pprice, plogo, pback);
				
				slist.add(vo);
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return slist;
	}
	
	
	// 개별 상품 브랜드로 조회 - getDateByCat()
	public ArrayList<ProductVO> getDateByPbrand(String pbrand) {
		
		ArrayList<ProductVO> blist = new ArrayList<ProductVO>();
		
		sb.setLength(0);
		sb.append("select * from product ");
		sb.append("where pbrand = upper(?) order by pno ");
			
		ProductVO vo = null;
		
		try {
			pstmt = conn.prepareStatement(sb.toString());
			
			pstmt.setString(1, pbrand);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
			
			int pno = rs.getInt(1);
			String pname = rs.getString(2);
			String pcat = rs.getString(4);
			String prodesc = rs.getString(5);
			String imgfile = rs.getString(6);
			String imgfile2 = rs.getString(7);
			String imgfile3 = rs.getString(8);
			String imgfile4 = rs.getString(9);
			
			vo = new ProductVO(pno, pname, pbrand, pcat, prodesc, imgfile, imgfile2, imgfile3, imgfile4);
						
			blist.add(vo);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return blist;
	}		//getDateByPbrand() end
	

}
