package com.koreait.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.koreait.BoardVO;
import com.koreait.CartVO;
import com.koreait.cProSet;
import com.koreait.mNoSet;
import com.koreait.mProSet;
import com.koreait.mProductVO;

import util.DBManager;

public class CartDAO {
	private CartDAO() {
	}
	
	private static CartDAO instance = new CartDAO();

	public static CartDAO getInstance() {
		return instance;
	}
	private List<mProSet> mProList = new ArrayList<mProSet>();
	private List<mProSet> mProList2 = new ArrayList<mProSet>();
	private List<cProSet> cProList = new ArrayList<cProSet>();
	
	public List<CartVO> selectAllCart(int pageNum, int limit, String column, String find) {
		Connection conn = DBManager.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<CartVO> list = new ArrayList<CartVO>();	
		List<mNoSet> list2 = new ArrayList<mNoSet>();
		int startrow = (pageNum -1) * limit +1;
		int endrow = startrow + limit -1;
		//글번호를 내림차순으로 정렬
		String sql = "select * from (select rownum rnum, mNo, mTitle, mType, mPrice, mRcount, mReplycount, mPicture, mPicture2 from"
				+ "(select * from meal order by mNo desc ) ) where rnum >=? and rnum <=? ";
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
				//list.add(mpVO);
			}
			return list;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return null;
	}

	/*public int mProCount(String column, String find) {
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
			String sql = "insert into meal (mNo,mTitle,mType,mPrice,mRcount,mReplycount,mPicture,mPicture2)"
					+" values (?,?,?,?,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.setString(2, mpVO.getmTitle());
			pstmt.setString(3, mpVO.getmType());
			pstmt.setInt(4, mpVO.getmPrice());
			pstmt.setInt(5, mpVO.getmRcount());
			pstmt.setInt(6, mpVO.getmReplycount());
			pstmt.setString(7, mpVO.getmPicture());
			pstmt.setString(8, mpVO.getmPicture2());
			pstmt.executeUpdate();
			return true;
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt, rs);
		}
		return false;
	}

	public mProductVO selectOnemProByNum(String mNo) {
		String sql = "select * from meal where mNo = ?";
		mProductVO mpVo = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mNo);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				mpVo = new mProductVO();
				mpVo.setmNo(rs.getInt("mNo"));
				mpVo.setmTitle(rs.getString("mTitle"));
				mpVo.setmType(rs.getString("mType"));
				mpVo.setmPrice(rs.getInt("mPrice"));
				mpVo.setmPicture(rs.getString("mPicture"));
				mpVo.setmPicture2(rs.getString("mPicture2"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return mpVo;
	}*/
	
	//----------------------------------------------
	
	
	public List<mProSet> getmProList() {
		return mProList;
	}

	public void push(mProSet mProSet) {
		mProList.add(mProSet);
	}

	public int remove(int index) {
		mProSet mProSet = mProList.remove(index);
		return mProSet.getMproduct().getmNo();
	}

	public boolean isEmpty() {
		return (mProList==null || mProList.isEmpty())?true:false;
	}
	
	//선택상품주문
	public List<mProSet> getmProList2() {
		return mProList2;
	}
	
	//-------------------------------------------------
	
	public List<cProSet> getcProList() {
		return cProList;
	}

	public void push(cProSet cProSet) {
		cProList.add(cProSet);
	}

	public int remove2(int index2) {
		cProSet cProSet = cProList.remove(index2);
		return cProSet.getCproduct().getcNo();
	}

	public boolean isEmpty2() {
		return (cProList==null || cProList.isEmpty())?true:false;
	}
	
	//선택상품주문
	/*public List<cProSet> getcProList2() {
		return cProList2;
	}*/
	
}
