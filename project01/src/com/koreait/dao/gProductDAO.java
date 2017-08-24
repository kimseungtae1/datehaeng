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
import com.koreait.gProductVO;
import com.koreait.mProductVO;

import util.DBManager;

public class gProductDAO {
	private gProductDAO() {
	}
	
	private static gProductDAO instance = new gProductDAO();

	public static gProductDAO getInstance() {
		return instance;
	}
	
	public List<gProductVO> selectAllmPros(int pageNum, int limit, String column, String find) {
		Connection conn = DBManager.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<gProductVO> list = new ArrayList<gProductVO>();	
		int startrow = (pageNum -1) * limit +1;
		int endrow = startrow + limit -1;
		//글번호를 내림차순으로 정렬
		String sql = "select * from (select rownum rnum, gNo, gTitle, gEx, gReplycount, gPicture, "
				+ "gMapX, gMapY, gMapTitle1, gMapTitle2 from"
				+ "(select * from charge order by gNo desc ) ) where rnum >=? and rnum <=? ";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, startrow);
			pstmt.setInt(2, endrow);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				gProductVO mpVO = new gProductVO();
				mpVO.setgNo(rs.getInt("gNo"));
				mpVO.setgTitle(rs.getString("gTitle"));
				mpVO.setgEx(rs.getString("gEx"));
				mpVO.setgReplycount(rs.getInt("gReplycount"));
				mpVO.setgPicture(rs.getString("gPicture"));
				mpVO.setgMapX(rs.getString("gMapX"));
				mpVO.setgMapY(rs.getString("gMapY"));
				mpVO.setgMapTitle1(rs.getString("gMapTitle1"));
				mpVO.setgMapTitle2(rs.getString("gMapTitle2"));
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
	
	public List<gProductVO> selectBestcPros() {
		Connection conn = DBManager.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<gProductVO> list = new ArrayList<gProductVO>();	
		//글번호를 내림차순으로 정렬
		String sql = "select * from (select rownum rnum, gNo, gTitle, gEx, gReplycount, gPicture, "
				+ "gMapX, gMapY, gMapTitle1, gMapTitle2 from"
				+ "(select * from charge order by gPrice asc) ) where rnum < 3 ";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				gProductVO mpVO = new gProductVO();
				mpVO.setgNo(rs.getInt("gNo"));
				mpVO.setgTitle(rs.getString("gTitle"));
				mpVO.setgEx(rs.getString("gEx"));
				mpVO.setgReplycount(rs.getInt("gReplycount"));
				mpVO.setgPicture(rs.getString("gPicture"));
				mpVO.setgMapX(rs.getString("gMapX"));
				mpVO.setgMapY(rs.getString("gMapY"));
				mpVO.setgMapTitle1(rs.getString("gMapTitle1"));
				mpVO.setgMapTitle2(rs.getString("gMapTitle2"));
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
	
	public int gProCount(String column, String find) {
		Connection conn = DBManager.getConnection();
	      PreparedStatement pstmt = null;
	      ResultSet rs = null;
	      try{
	         pstmt = conn.prepareStatement("select count(*) from charge");
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

	public boolean insertBoard(gProductVO mpVO) {
		Connection conn = DBManager.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs =null;
		try {
			pstmt = conn.prepareStatement("select nvl(max(gNo),0) from charge");
			rs = pstmt.executeQuery();
			rs.next();
			int num = rs.getInt(1);
			num++;  
			String sql = "insert into charge (gNo,gTitle,gEx,gReplycount,gPicture,"
					+ "gMapX,gMapY,gMapTitle1,gMapTitle2)"
					+" values (?,?,?,?,?,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.setString(2, mpVO.getgTitle());
			pstmt.setString(3, mpVO.getgEx());
			pstmt.setInt(4, mpVO.getgReplycount());
			pstmt.setString(5, mpVO.getgPicture());
			pstmt.setString(6, mpVO.getgMapX());
			pstmt.setString(7, mpVO.getgMapY());
			pstmt.setString(8, mpVO.getgMapTitle1());
			pstmt.setString(9, mpVO.getgMapTitle2());
			pstmt.executeUpdate();
			return true;
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt, rs);
		}
		return false;
	}

	public gProductVO selectOnemProByNum(int gNo) {
		String sql = "select * from charge where gNo = ?";
		gProductVO mpVo = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, gNo);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				mpVo = new gProductVO();
				mpVo.setgNo(rs.getInt("gNo"));
				mpVo.setgTitle(rs.getString("gTitle"));
				mpVo.setgEx(rs.getString("gEx"));
				mpVo.setgPicture(rs.getString("gPicture"));
				mpVo.setgMapX(rs.getString("gMapX"));
				mpVo.setgMapY(rs.getString("gMapY"));
				mpVo.setgMapTitle1(rs.getString("gMapTitle1"));
				mpVo.setgMapTitle2(rs.getString("gMapTitle2"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return mpVo;
	}
}
