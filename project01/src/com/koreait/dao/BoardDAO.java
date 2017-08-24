package com.koreait.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.koreait.BoardVO;

/*import mapper.BoardMapper;*/
import util.DBManager;

public class BoardDAO {
	private BoardDAO() {
	}

	private static BoardDAO instance = new BoardDAO();

	public static BoardDAO getInstance() {
		return instance;
	}

	public List<BoardVO> selectAllBoards(int pageNum, int limit, String column, String find) {
		Connection conn = DBManager.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<BoardVO> list = new ArrayList<BoardVO>();	
		int startrow = (pageNum -1) * limit +1;
		int endrow = startrow + limit -1;
		//글번호를 내림차순으로 정렬
		String sql = "select * from (select rownum rnum, qNo, qTitle, qContext, qDate, qReadcount, qReplynum, mUserid, pass from"
				+ "(select * from qna order by qNo desc ) ) where rnum >=? and rnum <=? ";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, startrow);
			pstmt.setInt(2, endrow);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				BoardVO bVo = new BoardVO();
				bVo.setqNo(rs.getInt("qNo"));
				bVo.setqTitle(rs.getString("qTitle"));
				bVo.setqContext(rs.getString("qContext"));
				bVo.setqDate(rs.getTimestamp("qDate"));
				bVo.setqReadcount(rs.getInt("qReadcount"));
				bVo.setqReplynum(rs.getInt("qReplynum"));
				bVo.setmUserid(rs.getString("mUserid"));
				bVo.setPass(rs.getString("pass"));
				list.add(bVo);
			}
			return list;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return null;
	}

	public boolean insertBoard(BoardVO bVo) {
		Connection conn = DBManager.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs =null;
		try {
			pstmt = conn.prepareStatement("select nvl(max(qNo),0) from qna");
			rs = pstmt.executeQuery();
			rs.next();
			int num = rs.getInt(1);  
			num++; 
			String sql = "insert into qna("
					+ "qNo, qTitle, qContext, qReadcount, qReplynum, mUserid, pass) "
					+ "values(?, ?, ?, ?, ?, ?, ?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1,num);
			pstmt.setString(2, bVo.getqTitle());
			pstmt.setString(3, bVo.getqContext());
			pstmt.setInt(4, bVo.getqReadcount());
			pstmt.setInt(5, bVo.getqReplynum());
			pstmt.setString(6, bVo.getmUserid());
			pstmt.setString(7, bVo.getPass());
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
	
	// 게시글 세기
	 public int boardCount(String column, String find){
	      Connection conn = DBManager.getConnection();
	      PreparedStatement pstmt = null;
	      ResultSet rs = null;
	      try{
	         pstmt = conn.prepareStatement("select count(*) from qna");
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

	public void updateReadCount(String qNo) {
		String sql = "update qna set qReadcount=qReadcount+1 where qNo=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, qNo);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, null);
		}
	}

	// 게시판 글 상세 내용 보기 :글번호로 찾아온다. : 실패 null,
	public BoardVO selectOneBoardByNum(String qNo) {
		String sql = "select * from qna where qNo = ?";
		BoardVO bVo = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, qNo);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				bVo = new BoardVO();
				bVo.setqNo(rs.getInt("qNo"));
				bVo.setqTitle(rs.getString("qTitle"));
				bVo.setqContext(rs.getString("qContext"));
				bVo.setqDate(rs.getTimestamp("qDate"));
				bVo.setqReadcount(rs.getInt("qReadcount"));
				bVo.setqReplynum(rs.getInt("qReplynum"));
				bVo.setmUserid(rs.getString("mUserid"));
				bVo.setPass(rs.getString("pass"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return bVo;
	}

	public void updateBoard(BoardVO bVo) {
		String sql = "update qna set qTitle=?, qContext=?, "
				+ "qReadcount=?, qReplynum=? , mUserid=?, pass=? where qNo=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, bVo.getqTitle());
			pstmt.setString(2, bVo.getqContext());
			pstmt.setInt(3, bVo.getqReadcount());
			pstmt.setInt(4, bVo.getqReplynum());
			pstmt.setString(5, bVo.getmUserid());
			pstmt.setString(6, bVo.getPass());
			pstmt.setInt(7, bVo.getqNo());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, null);
		}
	}

	public BoardVO checkPassWord(String pass, String qNo) {
		String sql = "select * from qna where pass=? and qNo=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		BoardVO bVo = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, pass);
			pstmt.setString(2, qNo);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				bVo = new BoardVO();
				bVo.setqNo(rs.getInt("qNo"));
				bVo.setqTitle(rs.getString("qTitle"));
				bVo.setqContext(rs.getString("qContext"));
				bVo.setqReadcount(rs.getInt("qReadcount"));
				bVo.setqReplynum(rs.getInt("qReplynum"));
				bVo.setmUserid(rs.getString("mUserid"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return bVo;
	}

	public void deleteBoard(String qNo) {
		String sql = "delete qna where qNo=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, qNo);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}


}
