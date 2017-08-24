package com.koreait.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.koreait.BoardVO_notice;

/*import mapper.BoardMapper;*/
import util.DBManager;

public class BoardDAO_notice {
	private BoardDAO_notice() {
	}

	private static BoardDAO_notice instance = new BoardDAO_notice();

	public static BoardDAO_notice getInstance() {
		return instance;
	}

	public List<BoardVO_notice> selectAllBoards(int pageNum, int limit, String column, String find) {
		Connection conn = DBManager.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<BoardVO_notice> list = new ArrayList<BoardVO_notice>();	
		int startrow = (pageNum -1) * limit +1;
		int endrow = startrow + limit -1;
		//글번호를 내림차순으로 정렬
		String sql = "select * from (select rownum rnum, nNo, nTitle, nContext, nDate, nReadcount, nReplynum, mUserid from"
				+ "(select * from notice order by nNo desc ) ) where rnum >=? and rnum <=? ";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, startrow);
			pstmt.setInt(2, endrow);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				BoardVO_notice bVo = new BoardVO_notice();
				bVo.setnNo(rs.getInt("nNo"));
				bVo.setnTitle(rs.getString("nTitle"));
				bVo.setnContext(rs.getString("nContext"));
				bVo.setnDate(rs.getTimestamp("nDate"));
				bVo.setnReadcount(rs.getInt("nReadcount"));
				bVo.setnReplynum(rs.getInt("nReplynum"));
				bVo.setmUserid(rs.getString("mUserid"));
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

	public boolean insertBoard(BoardVO_notice bVo) {
		Connection conn = DBManager.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs =null;
		try {
			pstmt = conn.prepareStatement("select nvl(max(nNo),0) from notice");
			rs = pstmt.executeQuery();
			rs.next();
			int num = rs.getInt(1);  
			num++; 
			String sql = "insert into notice("
					+ "nNo, nTitle, nContext, nReadcount, nReplynum, mUserid) "
					+ "values(?, ?, ?, ?, ?, ?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1,num);
			pstmt.setString(2, bVo.getnTitle());
			pstmt.setString(3, bVo.getnContext());
			pstmt.setInt(4, bVo.getnReadcount());
			pstmt.setInt(5, bVo.getnReplynum());
			pstmt.setString(6, bVo.getmUserid());
			pstmt.executeUpdate();
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt,rs);
		}
		return false;
	}
	
	// 게시글 세기
	 public int boardCount(String column, String find){
	      Connection conn = DBManager.getConnection();
	      PreparedStatement pstmt = null;
	      ResultSet rs = null;
	      try{
	         pstmt = conn.prepareStatement("select count(*) from notice");
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

	public void updateReadCount(String nNo) {
		String sql = "update notice set nReadcount=nReadcount+1 where nNo=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, nNo);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, null);
		}
	}

	// 게시판 글 상세 내용 보기 :글번호로 찾아온다. : 실패 null,
	public BoardVO_notice selectOneBoardByNum(String nNo) {
		String sql = "select * from notice where nNo = ?";
		BoardVO_notice bVo = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, nNo);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				bVo = new BoardVO_notice();
				bVo.setnNo(rs.getInt("nNo"));
				bVo.setnTitle(rs.getString("nTitle"));
				bVo.setnContext(rs.getString("nContext"));
				bVo.setnDate(rs.getTimestamp("nDate"));
				bVo.setnReadcount(rs.getInt("nReadcount"));
				bVo.setnReplynum(rs.getInt("nReplynum"));
				bVo.setmUserid(rs.getString("mUserid"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return bVo;
	}

	public void updateBoard(BoardVO_notice bVo) {
		String sql = "update notice set nTitle=?, nContext=?, "
				+ "nReadcount=?, nReplynum=? , mUserid=? where nNo=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, bVo.getnTitle());
			pstmt.setString(2, bVo.getnContext());
			pstmt.setInt(3, bVo.getnReadcount());
			pstmt.setInt(4, bVo.getnReplynum());
			pstmt.setString(5, bVo.getmUserid());
			pstmt.setInt(6, bVo.getnNo());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, null);
		}
	}

	/*public BoardVO checkPassWord(String pass, String num) {
		String sql = "select * from board where pass=? and num=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		BoardVO bVo = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, pass);
			pstmt.setString(2, num);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				bVo = new BoardVO();
				bVo.setNum(rs.getInt("num"));
				bVo.setName(rs.getString("name"));
				bVo.setEmail(rs.getString("email"));
				bVo.setPass(rs.getString("pass"));
				bVo.setTitle(rs.getString("title"));
				bVo.setContent(rs.getString("content"));
				bVo.setReadcount(rs.getInt("readcount"));
				bVo.setWritedate(rs.getTimestamp("writedate"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return bVo;
	}
*/
	public void deleteBoard(String nNo) {
		String sql = "delete notice where nNo=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, nNo);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}


}
