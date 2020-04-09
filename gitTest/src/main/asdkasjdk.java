package main;

import java.util.ArrayList;

import DAO.boardDAO;
import VO.boardVO;

public class asdkasjdk {
	public static void main(String[] args) {
//		ArrayList<boardVO> list = new boardDAO().getAllData(1, 5);
		boardDAO dao = new boardDAO();
		ArrayList<boardVO> list = dao.getAllData(1, 5);
		
		System.out.println(list);
	}
	
}
