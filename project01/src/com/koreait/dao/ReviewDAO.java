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
import com.koreait.CReviewVO;
import com.koreait.FReviewVO;
import com.koreait.GReviewVO;
import com.koreait.MReviewVO;

/*import mapper.BoardMapper;*/
import util.DBManager;

public class ReviewDAO {
	private ReviewDAO() {
	}

	private static ReviewDAO instance = new ReviewDAO();

	public static ReviewDAO getInstance() {
		return instance;
	}

	//식당 리뷰 리스트 보기
	public List<MReviewVO> selectAllMealReviews(int pageNum, int limit, String column, String find) {
		Connection conn = DBManager.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<MReviewVO> list = new ArrayList<MReviewVO>();	
		int startrow = (pageNum -1) * limit +1;
		int endrow = startrow + limit -1;
		//글번호를 내림차순으로 정렬
		String sql = "select * from (select rownum rnum, mrNo, mrContext, mrDate, mUserid, mrReadcount, mNo from"
				+ "(select * from meal_review order by mrNo desc ) ) where rnum >=? and rnum <=? ";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, startrow);
			pstmt.setInt(2, endrow);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				MReviewVO mrVo = new MReviewVO();
				mrVo.setMrNo(rs.getInt("mrNo"));
				mrVo.setMrContext(rs.getString("mrContext"));
				mrVo.setMrDate(rs.getDate("mrDate"));
				mrVo.setmUserid(rs.getString("mUserid"));
				mrVo.setMrReadcount(rs.getInt("mrReadcount"));
				mrVo.setmNo(rs.getInt("mNo"));
				list.add(mrVo);
			}
			return list;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return null;
	}

	//식당 리뷰 등록
	public boolean insertMealReview(MReviewVO mrVo) {
		Connection conn = DBManager.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs =null;
		try {
			pstmt = conn.prepareStatement("select nvl(max(mrNo),0) from meal_review");
			rs = pstmt.executeQuery();
			rs.next();
			int num = rs.getInt(1);  
			num++; 
			String sql = "insert into meal_review(mrNo, mrContext, mUserid, mrReadcount, mNo) values(?, ?, ?, ?, ?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1,num);
			pstmt.setString(2, mrVo.getMrContext());
			pstmt.setString(3, mrVo.getmUserid());
			pstmt.setInt(4, mrVo.getMrReadcount());
			pstmt.setInt(5, mrVo.getmNo());
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
	 public int MealReviewCount(String column, String find){
	      Connection conn = DBManager.getConnection();
	      PreparedStatement pstmt = null;
	      ResultSet rs = null;
	      try{
	         pstmt = conn.prepareStatement("select count(*) from meal_review");
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

	 
	//카페 리뷰 리스트 보기
		public List<CReviewVO> selectAllCafeReviews(int pageNum, int limit, String column, String find) {
			Connection conn = DBManager.getConnection();
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			List<CReviewVO> list = new ArrayList<CReviewVO>();	
			int startrow = (pageNum -1) * limit +1;
			int endrow = startrow + limit -1;
			//글번호를 내림차순으로 정렬
			String sql = "select * from (select rownum rnum, crNo, crContext, crDate, mUserid, crReadcount, cNo from"
					+ "(select * from cafe_review order by crNo desc ) ) where rnum >=? and rnum <=? ";
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, startrow);
				pstmt.setInt(2, endrow);
				rs = pstmt.executeQuery();
				while (rs.next()) {
					CReviewVO crVo = new CReviewVO();
					crVo.setCrNo(rs.getInt("crNo"));
					crVo.setCrContext(rs.getString("crContext"));
					crVo.setCrDate(rs.getDate("crDate"));
					crVo.setmUserid(rs.getString("mUserid"));
					crVo.setCrReadcount(rs.getInt("crReadcount"));
					crVo.setcNo(rs.getInt("cNo"));
					list.add(crVo);
				}
				return list;
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				DBManager.close(conn, pstmt, rs);
			}
			return null;
		}

		//카페 리뷰 등록
		public boolean insertCafeReview(CReviewVO crVo) {
			Connection conn = DBManager.getConnection();
			PreparedStatement pstmt = null;
			ResultSet rs =null;
			try {
				pstmt = conn.prepareStatement("select nvl(max(crNo),0) from cafe_review");
				rs = pstmt.executeQuery();
				rs.next();
				int num = rs.getInt(1);  
				num++; 
				String sql = "insert into cafe_review(crNo, crContext, mUserid, crReadcount, cNo) values(?, ?, ?, ?, ?)";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1,num);
				pstmt.setString(2, crVo.getCrContext());
				pstmt.setString(3, crVo.getmUserid());
				pstmt.setInt(4, crVo.getCrReadcount());
				pstmt.setInt(5, crVo.getcNo());
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
		 public int CafeReviewCount(String column, String find){
		      Connection conn = DBManager.getConnection();
		      PreparedStatement pstmt = null;
		      ResultSet rs = null;
		      try{
		         pstmt = conn.prepareStatement("select count(*) from cafe_review");
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
	 
	 
		//무료관람 리뷰 리스트 보기
			public List<FReviewVO> selectAllFreeReviews(int pageNum, int limit, String column, String find) {
				Connection conn = DBManager.getConnection();
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				List<FReviewVO> list = new ArrayList<FReviewVO>();	
				int startrow = (pageNum -1) * limit +1;
				int endrow = startrow + limit -1;
				//글번호를 내림차순으로 정렬
				String sql = "select * from (select rownum rnum, frNo, frContext, frDate, mUserid, frReadcount, fNo from"
						+ "(select * from free_review order by frNo desc ) ) where rnum >=? and rnum <=? ";
				try {
					pstmt = conn.prepareStatement(sql);
					pstmt.setInt(1, startrow);
					pstmt.setInt(2, endrow);
					rs = pstmt.executeQuery();
					while (rs.next()) {
						FReviewVO frVo = new FReviewVO();
						frVo.setFrNo(rs.getInt("frNo"));
						frVo.setFrContext(rs.getString("frContext"));
						frVo.setFrDate(rs.getDate("frDate"));
						frVo.setmUserid(rs.getString("mUserid"));
						frVo.setFrReadcount(rs.getInt("frReadcount"));
						frVo.setfNo(rs.getInt("fNo"));
						list.add(frVo);
					}
					return list;
				} catch (SQLException e) {
					e.printStackTrace();
				} finally {
					DBManager.close(conn, pstmt, rs);
				}
				return null;
			}

			//무료관람 리뷰 등록
			public boolean insertFreeReview(FReviewVO frVo) {
				Connection conn = DBManager.getConnection();
				PreparedStatement pstmt = null;
				ResultSet rs =null;
				try {
					pstmt = conn.prepareStatement("select nvl(max(frNo),0) from free_review");
					rs = pstmt.executeQuery();
					rs.next();
					int num = rs.getInt(1);  
					num++; 
					String sql = "insert into free_review(frNo, frContext, mUserid, frReadcount, fNo) values(?, ?, ?, ?, ?)";
					pstmt = conn.prepareStatement(sql);
					pstmt.setInt(1,num);
					pstmt.setString(2, frVo.getFrContext());
					pstmt.setString(3, frVo.getmUserid());
					pstmt.setInt(4, frVo.getFrReadcount());
					pstmt.setInt(5, frVo.getfNo());
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
			 public int FreeReviewCount(String column, String find){
			      Connection conn = DBManager.getConnection();
			      PreparedStatement pstmt = null;
			      ResultSet rs = null;
			      try{
			         pstmt = conn.prepareStatement("select count(*) from free_review");
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
		 
			//유료관람 리뷰 리스트 보기
				public List<GReviewVO> selectAllChargeReviews(int pageNum, int limit, String column, String find) {
					Connection conn = DBManager.getConnection();
					PreparedStatement pstmt = null;
					ResultSet rs = null;
					List<GReviewVO> list = new ArrayList<GReviewVO>();	
					int startrow = (pageNum -1) * limit +1;
					int endrow = startrow + limit -1;
					//글번호를 내림차순으로 정렬
					String sql = "select * from (select rownum rnum, grNo, grContext, grDate, mUserid, grReadcount, gNo from"
							+ "(select * from charge_review order by grNo desc ) ) where rnum >=? and rnum <=? ";
					try {
						pstmt = conn.prepareStatement(sql);
						pstmt.setInt(1, startrow);
						pstmt.setInt(2, endrow);
						rs = pstmt.executeQuery();
						while (rs.next()) {
							GReviewVO grVo = new GReviewVO();
							grVo.setGrNo(rs.getInt("grNo"));
							grVo.setGrContext(rs.getString("grContext"));
							grVo.setGrDate(rs.getDate("grDate"));
							grVo.setmUserid(rs.getString("mUserid"));
							grVo.setGrReadcount(rs.getInt("grReadcount"));
							grVo.setgNo(rs.getInt("gNo"));
							list.add(grVo);
						}
						return list;
					} catch (SQLException e) {
						e.printStackTrace();
					} finally {
						DBManager.close(conn, pstmt, rs);
					}
					return null;
				}

				//유료관람 리뷰 등록
				public boolean insertChargeReview(GReviewVO grVo) {
					Connection conn = DBManager.getConnection();
					PreparedStatement pstmt = null;
					ResultSet rs =null;
					try {
						pstmt = conn.prepareStatement("select nvl(max(grNo),0) from charge_review");
						rs = pstmt.executeQuery();
						rs.next();
						int num = rs.getInt(1);  
						num++; 
						String sql = "insert into charge_review(grNo, grContext, mUserid, grReadcount, gNo) values(?, ?, ?, ?, ?)";
						pstmt = conn.prepareStatement(sql);
						pstmt.setInt(1,num);
						pstmt.setString(2, grVo.getGrContext());
						pstmt.setString(3, grVo.getmUserid());
						pstmt.setInt(4, grVo.getGrReadcount());
						pstmt.setInt(5, grVo.getgNo());
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
				 public int ChargeReviewCount(String column, String find){
				      Connection conn = DBManager.getConnection();
				      PreparedStatement pstmt = null;
				      ResultSet rs = null;
				      try{
				         pstmt = conn.prepareStatement("select count(*) from charge_review");
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
