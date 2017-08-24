package com.koreait.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.koreait.BoardVO;
import com.koreait.mProductVO;

import util.DBManager;

public class mProductDAO {
	private mProductDAO() {
	}
	
	private static mProductDAO instance = new mProductDAO();

	public static mProductDAO getInstance() {
		return instance;
	}
	
	//식당 리스트
	public List<mProductVO> selectAllmPros(int pageNum, int limit, String column, String find) {
		Connection conn = DBManager.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<mProductVO> list = new ArrayList<mProductVO>();	
		int startrow = (pageNum -1) * limit +1;
		int endrow = startrow + limit -1;
		//글번호를 내림차순으로 정렬
		String sql = "select * from (select rownum rnum, mNo, mTitle, mType, mPrice, mRcount, mReplycount, mPicture, mPicture2,"
				+ "mMapX, mMapY, mMapTitle1, mMapTitle2, mctype, mEx "
				+ "from (select * from meal order by mNo desc ) ) "
				+ "where rnum >=? and rnum <=? and mctype=1";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, startrow);
			pstmt.setInt(2, endrow);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				mProductVO mpVO = new mProductVO();
				mpVO.setmNo(rs.getInt("mNo"));
				mpVO.setmTitle(rs.getString("mTitle"));
				mpVO.setmType(rs.getString("mType"));
				mpVO.setmPrice(rs.getInt("mPrice"));
				mpVO.setmRcount(rs.getInt("mRcount"));
				mpVO.setmReplycount(rs.getInt("mReplycount"));
				mpVO.setmPicture(rs.getString("mPicture"));
				mpVO.setmPicture2(rs.getString("mPicture2"));
				mpVO.setmMapX(rs.getString("mMapX"));
				mpVO.setmMapY(rs.getString("mMapY"));
				mpVO.setmMapTitle1(rs.getString("mMapTitle1"));
				mpVO.setmMapTitle2(rs.getString("mMapTitle2"));
				mpVO.setMctype(rs.getInt("mctype"));
				mpVO.setmEx(rs.getString("mEx"));
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
	
	//식당 베스트
	public List<mProductVO> selectBestmPros() {
		Connection conn = DBManager.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<mProductVO> list = new ArrayList<mProductVO>();	
		//글번호를 내림차순으로 정렬
		String sql = "select * from (select rownum rnum, mNo, mTitle, mType, mPrice, mRcount, mReplycount, mPicture, mPicture2, "
				+ "mMapX, mMapY, mMapTitle1, mMapTitle2, mctype, mEx "
				+ "from (select * from meal where mctype=1 order by mPrice desc) ) "
				+ "where rnum < 4";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				mProductVO mpVO = new mProductVO();
				mpVO.setmNo(rs.getInt("mNo"));
				mpVO.setmTitle(rs.getString("mTitle"));
				mpVO.setmType(rs.getString("mType"));
				mpVO.setmPrice(rs.getInt("mPrice"));
				mpVO.setmRcount(rs.getInt("mRcount"));
				mpVO.setmReplycount(rs.getInt("mReplycount"));
				mpVO.setmPicture(rs.getString("mPicture"));
				mpVO.setmPicture2(rs.getString("mPicture2"));
				mpVO.setmMapX(rs.getString("mMapX"));
				mpVO.setmMapY(rs.getString("mMapY"));
				mpVO.setmMapTitle1(rs.getString("mMapTitle1"));
				mpVO.setmMapTitle2(rs.getString("mMapTitle2"));
				mpVO.setMctype(rs.getInt("mctype"));
				mpVO.setmEx(rs.getString("mEx"));
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
	
	
	public List<mProductVO> selectTypemPros(int pageNum, int limit, String column, String find, String mType) {
		Connection conn = DBManager.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<mProductVO> list = new ArrayList<mProductVO>();	
		int startrow = (pageNum -1) * limit +1;
		int endrow = startrow + limit -1;
		//글번호를 내림차순으로 정렬
		String sql = "select * from (select rownum rnum, mNo, mTitle, mType, mPrice, mRcount, mReplycount, mPicture, mPicture2,"
				+ "mMapX, mMapY, mMapTitle1, mMapTitle2, mctype, mEx from (select * from meal where mType=? order by mNo desc ) ) "
				+ "where rnum >=? and rnum <=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, startrow);
			pstmt.setInt(2, endrow);
			pstmt.setString(3, mType);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				mProductVO mpVO = new mProductVO();
				mpVO.setmNo(rs.getInt("mNo"));
				mpVO.setmTitle(rs.getString("mTitle"));
				mpVO.setmType(rs.getString("mType"));
				mpVO.setmPrice(rs.getInt("mPrice"));
				mpVO.setmRcount(rs.getInt("mRcount"));
				mpVO.setmReplycount(rs.getInt("mReplycount"));
				mpVO.setmPicture(rs.getString("mPicture"));
				mpVO.setmPicture2(rs.getString("mPicture2"));
				mpVO.setmMapX(rs.getString("mMapX"));
				mpVO.setmMapY(rs.getString("mMapY"));
				mpVO.setmMapTitle1(rs.getString("mMapTitle1"));
				mpVO.setmMapTitle2(rs.getString("mMapTitle2"));
				mpVO.setMctype(rs.getInt("mctype"));
				mpVO.setmEx(rs.getString("mEx"));
				
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
	
	//카페 리스트
		public List<mProductVO> selectAllmPros2(int pageNum, int limit, String column, String find) {
			Connection conn = DBManager.getConnection();
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			List<mProductVO> list = new ArrayList<mProductVO>();	
			int startrow = (pageNum -1) * limit +1;
			int endrow = startrow + limit -1;
			//글번호를 내림차순으로 정렬
			String sql = "select * from (select rownum rnum, mNo, mTitle, mType, mPrice, mRcount, mReplycount, mPicture, mPicture2,"
					+ "mMapX, mMapY, mMapTitle1, mMapTitle2, mctype, mEx from"
					+ "(select * from meal order by mNo desc ) ) where rnum >=? and rnum <=? and mctype=2";
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, startrow);
				pstmt.setInt(2, endrow);
				rs = pstmt.executeQuery();
				while (rs.next()) {
					mProductVO mpVO = new mProductVO();
					mpVO.setmNo(rs.getInt("mNo"));
					mpVO.setmTitle(rs.getString("mTitle"));
					mpVO.setmType(rs.getString("mType"));
					mpVO.setmPrice(rs.getInt("mPrice"));
					mpVO.setmRcount(rs.getInt("mRcount"));
					mpVO.setmReplycount(rs.getInt("mReplycount"));
					mpVO.setmPicture(rs.getString("mPicture"));
					mpVO.setmPicture2(rs.getString("mPicture2"));
					mpVO.setmMapX(rs.getString("mMapX"));
					mpVO.setmMapY(rs.getString("mMapY"));
					mpVO.setmMapTitle1(rs.getString("mMapTitle1"));
					mpVO.setmMapTitle2(rs.getString("mMapTitle2"));
					mpVO.setMctype(rs.getInt("mctype"));
					mpVO.setmEx(rs.getString("mEx"));
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
		
	
		//카페 베스트
		public List<mProductVO> selectBestmPros2() {
			Connection conn = DBManager.getConnection();
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			List<mProductVO> list = new ArrayList<mProductVO>();	
			//글번호를 내림차순으로 정렬
			String sql = "select * from (select rownum rnum, mNo, mTitle, mType, mPrice, mRcount, mReplycount, mPicture, mPicture2, "
					+ "mMapX, mMapY, mMapTitle1, mMapTitle2, mctype, mEx "
					+ "from (select * from meal where mctype=2 order by mPrice asc) ) "
					+ "where rnum < 4";
			try {
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				while (rs.next()) {
					mProductVO mpVO = new mProductVO();
					mpVO.setmNo(rs.getInt("mNo"));
					mpVO.setmTitle(rs.getString("mTitle"));
					mpVO.setmType(rs.getString("mType"));
					mpVO.setmPrice(rs.getInt("mPrice"));
					mpVO.setmRcount(rs.getInt("mRcount"));
					mpVO.setmReplycount(rs.getInt("mReplycount"));
					mpVO.setmPicture(rs.getString("mPicture"));
					mpVO.setmPicture2(rs.getString("mPicture2"));
					mpVO.setmMapX(rs.getString("mMapX"));
					mpVO.setmMapY(rs.getString("mMapY"));
					mpVO.setmMapTitle1(rs.getString("mMapTitle1"));
					mpVO.setmMapTitle2(rs.getString("mMapTitle2"));
					mpVO.setMctype(rs.getInt("mctype"));
					mpVO.setmEx(rs.getString("mEx"));
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
	
	
	
	public int mProCount(String column, String find) {
		Connection conn = DBManager.getConnection();
	      PreparedStatement pstmt = null;
	      ResultSet rs = null;
	      try{
	         pstmt = conn.prepareStatement("select count(*) from meal");
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

	public boolean insertBoard(mProductVO mpVO) {
		Connection conn = DBManager.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs =null;
		try {
			pstmt = conn.prepareStatement("select nvl(max(mNo),0) from meal");
			rs = pstmt.executeQuery();
			rs.next();
			int num = rs.getInt(1);
			num++;  
			String sql = "insert into meal (mNo,mTitle,mType,mPrice,mRcount,mReplycount,mPicture,mPicture2,"
					+ "mMapX,mMapY,mMapTitle1,mMapTitle2,mctype,mEx)"
					+" values (?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.setString(2, mpVO.getmTitle());
			pstmt.setString(3, mpVO.getmType());
			pstmt.setInt(4, mpVO.getmPrice());
			pstmt.setInt(5, mpVO.getmRcount());
			pstmt.setInt(6, mpVO.getmReplycount());
			pstmt.setString(7, mpVO.getmPicture());
			pstmt.setString(8, mpVO.getmPicture2());
			pstmt.setString(9, mpVO.getmMapX());
			pstmt.setString(10, mpVO.getmMapY());
			pstmt.setString(11, mpVO.getmMapTitle1());
			pstmt.setString(12, mpVO.getmMapTitle2());
			pstmt.setInt(13, mpVO.getMctype());
			pstmt.setString(14, mpVO.getmEx());
			pstmt.executeUpdate();
			return true;
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt, rs);
		}
		return false;
	}

	public mProductVO selectOnemProByNum(int mNo) {
		String sql = "select * from meal where mNo = ?";
		mProductVO mpVo = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, mNo);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				mpVo = new mProductVO();
				mpVo.setmNo(rs.getInt("mNo"));
				mpVo.setmTitle(rs.getString("mTitle"));
				mpVo.setmType(rs.getString("mType"));
				mpVo.setmPrice(rs.getInt("mPrice"));
				mpVo.setmPicture(rs.getString("mPicture"));
				mpVo.setmPicture2(rs.getString("mPicture2"));
				mpVo.setmMapX(rs.getString("mMapX"));
				mpVo.setmMapY(rs.getString("mMapY"));
				mpVo.setmMapTitle1(rs.getString("mMapTitle1"));
				mpVo.setmMapTitle2(rs.getString("mMapTitle2"));
				mpVo.setMctype(rs.getInt("mctype"));
				mpVo.setmEx(rs.getString("mEx"));
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return mpVo;
	}

	public mProductVO getmProList(int mNo) {
		String sql = "select * from meal where mNo = ?";
		mProductVO mpVo = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, mNo);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				mpVo = new mProductVO();
				mpVo.setmNo(rs.getInt("mNo"));
				mpVo.setmTitle(rs.getString("mTitle"));
				mpVo.setmType(rs.getString("mType"));
				mpVo.setmPrice(rs.getInt("mPrice"));
				mpVo.setmPicture(rs.getString("mPicture"));
				mpVo.setmPicture2(rs.getString("mPicture2"));
				mpVo.setmMapX(rs.getString("mMapX"));
				mpVo.setmMapY(rs.getString("mMapY"));
				mpVo.setmMapTitle1(rs.getString("mMapTitle1"));
				mpVo.setmMapTitle2(rs.getString("mMapTitle2"));
				mpVo.setMctype(rs.getInt("mctype"));
				mpVo.setmEx(rs.getString("mEx"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return mpVo;
	}

}
