package com.koreait.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.koreait.BoardVO;
import com.koreait.cProductVO;
import com.koreait.fProductVO;
import com.koreait.mProductVO;

import util.DBManager;

public class fProductDAO {
	private fProductDAO() {
	}
	
	private static fProductDAO instance = new fProductDAO();

	public static fProductDAO getInstance() {
		return instance;
	}
	
	public List<fProductVO> selectAllmPros(int pageNum, int limit, String column, String find) {
		Connection conn = DBManager.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<fProductVO> list = new ArrayList<fProductVO>();	
		int startrow = (pageNum -1) * limit +1;
		int endrow = startrow + limit -1;
		//글번호를 내림차순으로 정렬
		String sql = "select * from (select rownum rnum, fNo, fTitle, fType, fRcount, fReplycount, fPicture, fPicture2, "
				+ "fMapX, fMapY, fMapTitle1, fMapTitle2 from"
				+ "(select * from free order by fNo desc ) ) where rnum >=? and rnum <=? ";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, startrow);
			pstmt.setInt(2, endrow);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				fProductVO mpVO = new fProductVO();
				mpVO.setfNo(rs.getInt("fNo"));
				mpVO.setfTitle(rs.getString("fTitle"));
				mpVO.setfType(rs.getString("fType"));
				mpVO.setfRcount(rs.getInt("fRcount"));
				mpVO.setfReplycount(rs.getInt("fReplycount"));
				mpVO.setfPicture(rs.getString("fPicture"));
				mpVO.setfPicture2(rs.getString("fPicture2"));
				mpVO.setfMapX(rs.getString("fMapX"));
				mpVO.setfMapY(rs.getString("fMapY"));
				mpVO.setfMapTitle1(rs.getString("fMapTitle1"));
				mpVO.setfMapTitle2(rs.getString("fMapTitle2"));
				list.add(mpVO);
			}
			return list;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return null;
	}
	
	public List<fProductVO> selectBestcPros() {
		Connection conn = DBManager.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<fProductVO> list = new ArrayList<fProductVO>();	
		//글번호를 내림차순으로 정렬
		String sql = "select * from (select rownum rnum, fNo, fTitle, fType, fRcount, fReplycount, fPicture, fPicture2, "
				+ "fMapX, fMapY, fMapTitle1, fMapTitle2 from"
				+ "(select * from free order by fPrice asc) ) where rnum < 3 ";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				fProductVO mpVO = new fProductVO();
				mpVO.setfNo(rs.getInt("fNo"));
				mpVO.setfTitle(rs.getString("fTitle"));
				mpVO.setfType(rs.getString("fType"));
				mpVO.setfRcount(rs.getInt("fRcount"));
				mpVO.setfReplycount(rs.getInt("fReplycount"));
				mpVO.setfPicture(rs.getString("fPicture"));
				mpVO.setfPicture2(rs.getString("fPicture2"));
				mpVO.setfMapX(rs.getString("fMapX"));
				mpVO.setfMapY(rs.getString("fMapY"));
				mpVO.setfMapTitle1(rs.getString("fMapTitle1"));
				mpVO.setfMapTitle2(rs.getString("fMapTitle2"));
				list.add(mpVO);
			}
			return list;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return null;
	}	
	
	public int fProCount(String column, String find) {
		Connection conn = DBManager.getConnection();
	      PreparedStatement pstmt = null;
	      ResultSet rs = null;
	      try{
	         pstmt = conn.prepareStatement("select count(*) from free");
	         rs = pstmt.executeQuery();
	         rs.next();
	         return rs.getInt(1);
	      }catch(SQLException e){
	         e.printStackTrace();
	      }finally{
	    	  DBManager.close(conn,pstmt,rs);
	      }
	      return 0;
	   }

	public boolean insertBoard(fProductVO mpVO) {
		Connection conn = DBManager.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs =null;
		try {
			pstmt = conn.prepareStatement("select nvl(max(fNo),0) from free");
			rs = pstmt.executeQuery();
			rs.next();
			int num = rs.getInt(1);
			num++;  
			String sql = "insert into free (fNo,fTitle,fType,fRcount,fReplycount,fPicture,fPicture2,"
					+ "fMapX,fMapY,fMapTitle1,fMapTitle2)"
					+" values (?,?,?,?,?,?,?,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.setString(2, mpVO.getfTitle());
			pstmt.setString(3, mpVO.getfType());
			pstmt.setInt(4, mpVO.getfRcount());
			pstmt.setInt(5, mpVO.getfReplycount());
			pstmt.setString(6, mpVO.getfPicture());
			pstmt.setString(7, mpVO.getfPicture2());
			pstmt.setString(8, mpVO.getfMapX());
			pstmt.setString(9, mpVO.getfMapY());
			pstmt.setString(10, mpVO.getfMapTitle1());
			pstmt.setString(11, mpVO.getfMapTitle2());
			pstmt.executeUpdate();
			return true;
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt, rs);
		}
		return false;
	}

	public fProductVO selectOnemProByNum(int fNo) {
		String sql = "select * from free where fNo = ?";
		fProductVO mpVo = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, fNo);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				mpVo = new fProductVO();
				mpVo.setfNo(rs.getInt("fNo"));
				mpVo.setfTitle(rs.getString("fTitle"));
				mpVo.setfType(rs.getString("fType"));
				mpVo.setfPicture(rs.getString("fPicture"));
				mpVo.setfPicture2(rs.getString("fPicture2"));
				mpVo.setfMapX(rs.getString("fMapX"));
				mpVo.setfMapY(rs.getString("fMapY"));
				mpVo.setfMapTitle1(rs.getString("fMapTitle1"));
				mpVo.setfMapTitle2(rs.getString("fMapTitle2"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return mpVo;
	}
}
