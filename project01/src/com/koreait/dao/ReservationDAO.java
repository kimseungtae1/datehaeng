package com.koreait.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.koreait.BoardVO;
import com.koreait.PrereVO;
import com.koreait.reservationVO;

import util.DBManager;

public class ReservationDAO {
	private ReservationDAO() {
	}

	private static ReservationDAO instance = new ReservationDAO();

	public static ReservationDAO getInstance() {
		return instance;
	}

	//지금바로예약 눌렀을 시에 저장
	public boolean insertprere(PrereVO preVO) {
		Connection conn = DBManager.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs =null;
		try {
			pstmt = conn.prepareStatement("select nvl(max(preNo),0) from prere");
			rs = pstmt.executeQuery();
			rs.next();
			int num = rs.getInt(1);  
			num++; 
			String sql = "insert into prere(preNo,preDate,mUserid) values (?,systimestamp,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1,num);
			pstmt.setString(2, preVO.getmUserid());
			pstmt.executeUpdate();
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return false;
	}
	
	//결제완료페이지
	public boolean finish(reservationVO rsv) {
		Connection conn = DBManager.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs =null;
		try {
			pstmt = conn.prepareStatement("select nvl(max(rNo),0) from reserve");
			rs = pstmt.executeQuery();
			rs.next();
			int num = rs.getInt(1);  
			num++; 
			String sql = "insert into reserve(rNo, mUserid, mcNo, rDate, rName, rPhone, rEmail, adult, rDate1, rDate2,"
					+ "mcTitle, mcPrice, mcPicture, mcbuy) "
					+ "values (?, ?, ?, systimestamp, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.setString(2, rsv.getmUserid());
			pstmt.setInt(3, rsv.getMcNo());
			pstmt.setString(4, rsv.getrName());
			pstmt.setString(5, rsv.getrPhone());
			pstmt.setString(6, rsv.getrEmail());
			pstmt.setString(7, rsv.getAdult());
			pstmt.setString(8, rsv.getrDate1());
			pstmt.setString(9, rsv.getrDate2());
			pstmt.setString(10, rsv.getMcTitle());
			pstmt.setInt(11, rsv.getMcPrice());
			pstmt.setString(12, rsv.getMcPicture());
			pstmt.setInt(13, rsv.getMcbuy());
			pstmt.executeUpdate();
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return false;
	}
	
	//예약리스트 보기
	public List<reservationVO> selectAllReserves() {
		String sql = "select * from reserve order by rNo desc";		//글번호를 내림차순으로 정렬
		List<reservationVO> list = new ArrayList<reservationVO>();
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			conn = DBManager.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			while (rs.next()) {
				reservationVO rsVo = new reservationVO();
				rsVo.setrNo(rs.getInt("rNo"));
				rsVo.setmUserid(rs.getString("mUserid"));
				rsVo.setMcNo(rs.getInt("mcNo"));
				rsVo.setrDate(rs.getTimestamp("rDate"));
				rsVo.setrName(rs.getString("rName"));
				rsVo.setrPhone(rs.getString("rPhone"));
				rsVo.setrEmail(rs.getString("rEmail"));
				rsVo.setAdult(rs.getString("adult"));
				rsVo.setrDate1(rs.getString("rDate1"));
				rsVo.setrDate2(rs.getString("rDate2"));
				rsVo.setMcTitle(rs.getString("mcTitle"));
				rsVo.setMcPrice(rs.getInt("mcPrice"));
				rsVo.setMcPicture(rs.getString("mcPicture"));
				rsVo.setMcbuy(rs.getInt("mcbuy"));
				list.add(rsVo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, stmt, rs);
		}
		return list;
	}
	
	public reservationVO selectOneReserveByNum(String rNo) {
		String sql = "select * from reserve where rNo = ?";
		reservationVO rsVo = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, rNo);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				rsVo = new reservationVO();
				rsVo.setrNo(rs.getInt("rNo"));
				rsVo.setmUserid(rs.getString("mUserid"));
				rsVo.setMcNo(rs.getInt("mcNo"));
				rsVo.setrDate(rs.getTimestamp("rDate"));
				rsVo.setrName(rs.getString("rName"));
				rsVo.setrPhone(rs.getString("rPhone"));
				rsVo.setrEmail(rs.getString("rEmail"));
				rsVo.setAdult(rs.getString("adult"));
				rsVo.setrDate1(rs.getString("rDate1"));
				rsVo.setrDate2(rs.getString("rDate2"));
				rsVo.setMcTitle(rs.getString("mcTitle"));
				rsVo.setMcPrice(rs.getInt("mcPrice"));
				rsVo.setMcPicture(rs.getString("mcPicture"));
				rsVo.setMcbuy(rs.getInt("mcbuy"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return rsVo;
	}
	
	public void deleteReserve(String rNo) {
		String sql = "delete reserve where rNo=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, rNo);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	

}
