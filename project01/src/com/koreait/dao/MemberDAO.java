package com.koreait.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.koreait.dto.MemberDTO;

public class MemberDAO {
	
	private MemberDAO(){}	// 생성자를 private로!!
	
	static private MemberDAO instance = new MemberDAO();
	
	//#7-2] 인스턴스 생성하기
	public static MemberDAO getInstance(){
		
		return instance;	//싱글턴!!
	}
	
	//#8] db연결작업 (연결지점 확보)
	public Connection getConnection(){
		Connection conn = null;
		try{
			Context initContext = new InitialContext();
			Context envContext  = (Context)initContext.lookup("java:/comp/env");
			DataSource ds = (DataSource)envContext.lookup("jdbc/myoracle");
			conn = ds.getConnection();
			
		}catch(Exception e){
			
			e.printStackTrace();
			
		}
		return conn;
	}

	//#9-1] userCheck 하기!
	public int userCheck(String mUserid, String mPw){
		int result = -1; //기본은 없음으로 시작!
		
		//db에 가서 sql을 실행하자!
		String sql = "select mPw from member where mUserid = ?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try{
			
				//#8] 연결작업
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);	//미리 sql을 써놓자
			pstmt.setString(1, mUserid);  // sql문에 홑따옴표 쓰기 힘들어서 ?쓰고 pstmt하는거다!
			//작업은 끝났다!!
			
			//실행해야지!!
			rs = pstmt.executeQuery();	//rs에는 	0건 	또는 	그 이상
										// next()	false			행별로 !!
			if(rs.next()){	//비번 1234 있으면~	id가 있다!
				
				if(rs.getString("mPw") != null && rs.getString("mPw").equals(mPw)){
					result = 1;
				}else{
					//비번 맞지않는다.
					result = 0;
				}
			}else{
				//0건이라는 말이다.
				result = -1;		//부재! 	-존재하지 않는 id!
			}
		
					
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			}catch(Exception e){
				
			}
		}
		//#10-1] useridCheck한 결과 가지고 다시 servlet으로 돌아가자!
		return result;
		
		
	}

	
	//#9-3-2]한 회원의 정보를 가져오는 메서드 getMember()
	//#33] 가입한 이후 -> 로그인하고 -> 정보 저장하러 왔다.
	public MemberDTO getMember(String mUserid){
		MemberDTO dto = null;
		String sql = "select * from member where mUserid=?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;			//rs는 select할때만 필요하다. 왜? db에 가서 조건에 맞는 정보만 가져다 rs에 저장해서 보여줘야하기때문에!!
		
		try{
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);	//미리 sql을 써놓자
			pstmt.setString(1, mUserid);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()){	//rs에 db에서 꺼내온 데이터가 있다면
				//						"name"은 문자열로 줘야하나? <= 테이블의 컬럼을 뜻한다.
				dto=new MemberDTO();
				dto.setmUserid(rs.getString("mUserid"));
				dto.setmPw(rs.getString("mPw"));
				dto.setmName(rs.getString("mName"));
				dto.setmBirth(rs.getString("mBirth"));
				dto.setmPhone(rs.getString("mPhone"));
				dto.setmAddress(rs.getString("mAddress"));
				dto.setmGender(rs.getString("mGender"));
				dto.setmEmail(rs.getString("mEmail"));				
				
			}
				
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			}catch(Exception e){
				
			}
		}		
		//#34] 객체(vo) 갖고 LoginServlet으로 가자
		return dto;	

	}

	//#16-2] id 확인
	public int confirmID(String mUserid){
		int result = -1;
		String sql = "select mUserid from member where mUserid=?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;			//rs는 select할때만 필요하다. 왜? db에 가서 조건에 맞는 정보만 가져다 rs에 저장해서 보여줘야하기때문에!!
		try{
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);	//미리 sql을 써놓자
			pstmt.setString(1, mUserid);  
			rs = pstmt.executeQuery();
			
			if(rs.next()){	//rs가 true라는 말은 userid가 존재한다라는 뜻!
				result = 1;	//사용자가 입력한 id 는 사용할 수 없다.
			}else{
				result = -1;	//현재 db에 입력한 id가 없다!!
			}
				
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			}catch(Exception e){
				
			}
		}				//#17-1]
		return result;	//리턴값을 갖고 IdCheck서블릿으로 다시 돌아가자!
	}

	//멤버 정보 입력받아서 db에 쓰기!
	public int insertMember(MemberDTO mVo){
		int result = -1;
		String sql = "insert into member values(?,?,?,?,?,?,?,?)";
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try{
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);	//미리 sql을 써놓자
			pstmt.setString(1, mVo.getmUserid());
			pstmt.setString(2, mVo.getmPw());
			pstmt.setString(3, mVo.getmName());
			pstmt.setString(4, mVo.getmBirth());
			pstmt.setString(5, mVo.getmPhone());
			pstmt.setString(6, mVo.getmAddress());
			pstmt.setString(7, mVo.getmGender());
			pstmt.setString(8, mVo.getmEmail());
			
			result = pstmt.executeUpdate();	//table(판)을 바꾸자!  rs->result, query->update
			//건수 (result)의 변화를 보고 제대로 실행됐는지 판단한다.  0 이나 1, -1
			
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		//#25] insert 건수 결과값 가지고 다시 Join 서블릿-doPost로 가자! (1또는 -1)
		return result;
	}
	//멤버 정보 수정하기
	public int updateMember(MemberDTO mVo){
		int result = -1;
		//아이디, 이름은 readonly이므로 수정 불가, 비번부터 수정 가능
		String sql = "update member set mPw=?, mBirth=?," //엔터치면 자동으로 줄바꿈과 + 생긴다!! 아싸개이득!!
				+ "mPhone=?, mAddress=?, mGender=?,"
				+ "mEmail=? where mUserid=?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try{
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);	//미리 sql을 써놓자
			pstmt.setString(1, mVo.getmPw());
			pstmt.setString(2, mVo.getmBirth());
			pstmt.setString(3, mVo.getmPhone());
			pstmt.setString(4, mVo.getmAddress());
			pstmt.setString(5, mVo.getmGender());
			pstmt.setString(6, mVo.getmEmail());
			pstmt.setString(7, mVo.getmUserid());
			
			result = pstmt.executeUpdate();	//table(판)을 바꾸자!  rs->result, query->update
			//건수 (result)의 변화를 보고 제대로 실행됐는지 판단한다.  0 이나 1, -1
			
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			}catch(Exception e){
				e.printStackTrace();
			}
		}	
		return result;
	}
}





