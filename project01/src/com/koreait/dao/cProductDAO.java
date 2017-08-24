package com.koreait.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.koreait.BoardVO;
import com.koreait.cProductVO;
import com.koreait.mProductVO;

import util.DBManager;

public class cProductDAO {
	private cProductDAO() {
	}
	
	private static cProductDAO instance = new cProductDAO();

	public static cProductDAO getInstance() {
		return instance;
	}
	
	public List<cProductVO> selectAllmPros(int pageNum, int limit, String column, String find) {
		Connection conn = DBManager.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<cProductVO> list = new ArrayList<cProductVO>();	
		int startrow = (pageNum -1) * limit +1;
		int endrow = startrow + limit -1;
		//글번호를 내림차순으로 정렬
		String sql = "select * from (select rownum rnum, cNo, cTitle, cType, cPrice, cRcount, cReplycount, cPicture, cPicture2, "
				+ "cMapX, cMapY, cMapTitle1, cMapTitle2 from"
				+ "(select * from cafe order by cNo desc ) ) where rnum >=? and rnum <=? ";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, startrow);
			pstmt.setInt(2, endrow);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				cProductVO mpVO = new cProductVO();
				mpVO.setcNo(rs.getInt("cNo"));
				mpVO.setcTitle(rs.getString("cTitle"));
				mpVO.setcType(rs.getString("cType"));
				mpVO.setcPrice(rs.getInt("cPrice"));
				mpVO.setcRcount(rs.getInt("cRcount"));
				mpVO.setcReplycount(rs.getInt("cReplycount"));
				mpVO.setcPicture(rs.getString("cPicture"));
				mpVO.setcPicture2(rs.getString("cPicture2"));
				mpVO.setcMapX(rs.getString("cMapX"));
				mpVO.setcMapY(rs.getString("cMapY"));
				mpVO.setcMapTitle1(rs.getString("cMapTitle1"));
				mpVO.setcMapTitle2(rs.getString("cMapTitle2"));
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
	
	public List<cProductVO> selectBestcPros() {
		Connection conn = DBManager.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<cProductVO> list = new ArrayList<cProductVO>();	
		//글번호를 내림차순으로 정렬
		String sql = "select * from (select rownum rnum, cNo, cTitle, cType, cPrice, cRcount, cReplycount, cPicture, cPicture2, "
				+ "cMapX, cMapY, cMapTitle1, cMapTitle2 from"
				+ "(select * from cafe order by cPrice asc) ) where rnum < 4 ";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				cProductVO mpVO = new cProductVO();
				mpVO.setcNo(rs.getInt("cNo"));
				mpVO.setcTitle(rs.getString("cTitle"));
				mpVO.setcType(rs.getString("cType"));
				mpVO.setcPrice(rs.getInt("cPrice"));
				mpVO.setcRcount(rs.getInt("cRcount"));
				mpVO.setcReplycount(rs.getInt("cReplycount"));
				mpVO.setcPicture(rs.getString("cPicture"));
				mpVO.setcPicture2(rs.getString("cPicture2"));
				mpVO.setcMapX(rs.getString("cMapX"));
				mpVO.setcMapY(rs.getString("cMapY"));
				mpVO.setcMapTitle1(rs.getString("cMapTitle1"));
				mpVO.setcMapTitle2(rs.getString("cMapTitle2"));
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
	
	public int cProCount(String column, String find) {
		Connection conn = DBManager.getConnection();
	      PreparedStatement pstmt = null;
	      ResultSet rs = null;
	      try{
	         pstmt = conn.prepareStatement("select count(*) from cafe");
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

	public boolean insertBoard(cProductVO mpVO) {
		Connection conn = DBManager.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs =null;
		try {
			pstmt = conn.prepareStatement("select nvl(max(cNo),0) from cafe");
			rs = pstmt.executeQuery();
			rs.next();
			int num = rs.getInt(1);
			num++;  
			String sql = "insert into cafe (cNo,cTitle,cType,cPrice,cRcount,cReplycount,cPicture,cPicture2,"
					+ "cMapX,cMapY,cMapTitle1,cMapTitle2)"
					+" values (?,?,?,?,?,?,?,?,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.setString(2, mpVO.getcTitle());
			pstmt.setString(3, mpVO.getcType());
			pstmt.setInt(4, mpVO.getcPrice());
			pstmt.setInt(5, mpVO.getcRcount());
			pstmt.setInt(6, mpVO.getcReplycount());
			pstmt.setString(7, mpVO.getcPicture());
			pstmt.setString(8, mpVO.getcPicture2());
			pstmt.setString(9, mpVO.getcMapX());
			pstmt.setString(10, mpVO.getcMapY());
			pstmt.setString(11, mpVO.getcMapTitle1());
			pstmt.setString(12, mpVO.getcMapTitle2());
			pstmt.executeUpdate();
			return true;
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt, rs);
		}
		return false;
	}

	public cProductVO selectOnemProByNum(int cNo) {
		String sql = "select * from cafe where cNo = ?";
		cProductVO mpVo = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, cNo);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				mpVo = new cProductVO();
				mpVo.setcNo(rs.getInt("cNo"));
				mpVo.setcTitle(rs.getString("cTitle"));
				mpVo.setcType(rs.getString("cType"));
				mpVo.setcPrice(rs.getInt("cPrice"));
				mpVo.setcPicture(rs.getString("cPicture"));
				mpVo.setcPicture2(rs.getString("cPicture2"));
				mpVo.setcMapX(rs.getString("cMapX"));
				mpVo.setcMapY(rs.getString("cMapY"));
				mpVo.setcMapTitle1(rs.getString("cMapTitle1"));
				mpVo.setcMapTitle2(rs.getString("cMapTitle2"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return mpVo;
	}
	
	public cProductVO getcProList(int cNo) {
		String sql = "select * from cafe where cNo = ?";
		cProductVO cpVo = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, cNo);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				cpVo = new cProductVO();
				cpVo.setcNo(rs.getInt("cNo"));
				cpVo.setcTitle(rs.getString("cTitle"));
				cpVo.setcType(rs.getString("cType"));
				cpVo.setcPrice(rs.getInt("cPrice"));
				cpVo.setcPicture(rs.getString("cPicture"));
				cpVo.setcPicture2(rs.getString("cPicture2"));
				cpVo.setcMapX(rs.getString("cMapX"));
				cpVo.setcMapY(rs.getString("cMapY"));
				cpVo.setcMapTitle1(rs.getString("cMapTitle1"));
				cpVo.setcMapTitle2(rs.getString("cMapTitle2"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return cpVo;
	}
}
