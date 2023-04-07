package com.itwillbs.board;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import com.itwillbs.join.JoinDAO;

public class BoardDAO {

    
	Connection con = null; 
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";

	private Connection getCon() throws Exception {
		
		Context initCTX = new InitialContext();
		DataSource ds = (DataSource) initCTX.lookup("java:comp/env/jdbc/mysqldb");

		con = ds.getConnection();

		return con;
	}

	
	public void closeDB() {
		try {
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (con != null)
				con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	// insertBoard(dto)
	public void insertBoard(BoardDTO bdto) {

		int num = 0; 

		try {
			con = getCon();

			
			// 3. 
			sql = "select max(num) from itwill_board";
			pstmt = con.prepareStatement(sql);

			// 4. 
			rs = pstmt.executeQuery();
			// 5. 
			if (rs.next()) {
				
				num = rs.getInt(1) + 1; 
				// num = rs.getInt("max(num)")+1;`
			}

			System.out.println("  : " + num);
			
			
			
			// 3. sql & pstmt 
			sql = "insert into itwill_board(num,name,Checkin,checkout,am10,am11,pm12,pm13,pm14,pm15,pm16,pm17,"
					+ "pm18,pm19,pm20,memo, date,readcount,re_ref,re_lev,re_seq) "
					+ "values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?, now(),?,?,?,?)";
			
			pstmt = con.prepareStatement(sql);
			
			// ?
			pstmt.setInt(1, num);
			pstmt.setString(2, bdto.getName());
			pstmt.setString(3, bdto.getCheckin());
			pstmt.setString(4, bdto.getCheckout());
			pstmt.setString(5, bdto.getAm10());
			pstmt.setString(6, bdto.getAm11());
			pstmt.setString(7, bdto.getPm12());
			pstmt.setString(8, bdto.getPm13());
			pstmt.setString(9, bdto.getPm14());
			pstmt.setString(10, bdto.getPm15());
			pstmt.setString(11, bdto.getPm16());
			pstmt.setString(12, bdto.getPm17());
			pstmt.setString(13, bdto.getPm18());
			pstmt.setString(14, bdto.getPm19());
			pstmt.setString(15, bdto.getPm20());
			pstmt.setString(16, bdto.getMemo());
			pstmt.setInt(17, 0);
			pstmt.setInt(18, num);  // re_ref 
			pstmt.setInt(19, 0);   //re_lev 
			pstmt.setInt(20, 0);   // re_seq 
	
			
			// 4. sql 
			pstmt.executeUpdate();
			
			System.out.println(" DAO :! ");

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeDB();
		}

	}
	// insertBoard(dto)
	
	// getBoardCount()
	public int getBoardCount(){
		int cnt = 0;
		
		try {
			// 1,2
			con = getCon();
			// 3 sql (select) & pstmt
			sql = "select count(*) from itwill_board";
			pstmt = con.prepareStatement(sql);
			// 4 sql 
			rs = pstmt.executeQuery();
			// 5 
			if(rs.next()){
				//
				cnt = rs.getInt(1);	
				//cnt = rs.getInt("count(*)");
			}
			
			System.out.println(" DAO :  ("+cnt+")");
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeDB();
		}
		
		return cnt;
	}
	// getBoardCount()
	
	
	// getBoardList()
	public List getBoardList(){
		List boardList = new ArrayList();
//		List<Object> boardList = new ArrayList<Object>();
		
		try {
			// 1,2 
			con = getCon();
			// 3 sql  & pstmt 
			sql = "select * from itwill_board";
			pstmt = con.prepareStatement(sql);
			// 4 sql 
			rs = pstmt.executeQuery();
			// 5 
			while(rs.next()){
				//
				BoardDTO bdto = new BoardDTO();
				bdto.setNum(rs.getInt("num"));
				bdto.setName(rs.getString("name"));
				bdto.setCheckin(rs.getString("Checkin"));
				bdto.setCheckout(rs.getString("Checkout"));
				bdto.setAm10(rs.getString("am10"));
				bdto.setAm11(rs.getString("am11"));
				bdto.setPm12(rs.getString("pm12"));
				bdto.setPm13(rs.getString("pm13"));
				bdto.setPm14(rs.getString("pm14"));
				bdto.setPm15(rs.getString("pm15"));
				bdto.setPm16(rs.getString("pm16"));
				bdto.setPm17(rs.getString("pm17"));
				bdto.setPm18(rs.getString("pm18"));
				bdto.setPm19(rs.getString("pm19"));
				bdto.setPm20(rs.getString("pm20"));
				bdto.setMemo(rs.getString("memo"));
				bdto.setDate(rs.getDate("date"));
				bdto.setReadcount(rs.getInt("readcount"));
				bdto.setRe_ref(rs.getInt("re_ref"));
				bdto.setRe_lev(rs.getInt("re_lev"));
				bdto.setRe_seq(rs.getInt("re_seq"));
				
	
				// DTO  ArrayList 
				boardList.add(bdto);				
				
			}//while
			
			System.out.println(" DAO : ! "+boardList.size());
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeDB();
		}
		
		return boardList;
	}
	// getBoardList()
	
	
	// getBoardList(startRow,pageSize)
	public List getBoardList(int startRow,int pageSize){
		List boardList = new ArrayList();
//		List<Object> boardList = new ArrayList<Object>();
		
		try {
			// 1,2 
			con = getCon();
			// 3 sql & pstmt 
			
			sql = "select * from itwill_board order by re_ref desc, re_seq asc limit ?,?";
			pstmt = con.prepareStatement(sql);
			
			//?
			pstmt.setInt(1, startRow-1);
			pstmt.setInt(2, pageSize); 
			
			// 4 sql
			rs = pstmt.executeQuery();
			// 5 
			while(rs.next()){
				
				BoardDTO bdto = new BoardDTO();
				
				bdto.setNum(rs.getInt("num"));
				bdto.setName(rs.getString("name"));
				bdto.setCheckin(rs.getString("Checkin"));
				bdto.setCheckout(rs.getString("Checkout"));
				bdto.setAm10(rs.getString("am10"));
				bdto.setAm11(rs.getString("am11"));
				bdto.setPm12(rs.getString("pm12"));
				bdto.setPm13(rs.getString("pm13"));
				bdto.setPm14(rs.getString("pm14"));
				bdto.setPm15(rs.getString("pm15"));
				bdto.setPm16(rs.getString("pm16"));
				bdto.setPm17(rs.getString("pm17"));
				bdto.setPm18(rs.getString("pm18"));
				bdto.setPm19(rs.getString("pm19"));
				bdto.setPm20(rs.getString("pm20"));
				bdto.setMemo(rs.getString("memo"));
				bdto.setDate(rs.getDate("date"));
				bdto.setReadcount(rs.getInt("readcount"));
				bdto.setRe_ref(rs.getInt("re_ref"));
				bdto.setRe_lev(rs.getInt("re_lev"));				
				bdto.setRe_seq(rs.getInt("re_seq"));
				
				
				// DTO  ArrayList 
				boardList.add(bdto);				
				
			}//while
			
			System.out.println(" DAO : ! "+boardList.size());
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeDB();
		}
		
		return boardList;
	}
	// getBoardList(startRow,pageSize)
	
	
	// updateReadcount(num)
	public void updateReadcount(int num){
		try {
			//1.2. 
			con = getCon();
			// 3. sql  & pstmt 
			// (readcount)(update)
			sql = "update itwill_board set readcount = readcount+1 where num=?";
			pstmt = con.prepareStatement(sql);
			
			//?
			pstmt.setInt(1, num);
			
			// 4. sql
			pstmt.executeUpdate();
			
			System.out.println("DAO : readcount");
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeDB();
		}
		
	}
	// updateReadcount(num)
	
	// getBoard(num)
	public BoardDTO getBoard(int num){
		BoardDTO bdto = null;
		
		try {
			// 1.2. 
			con = getCon();
			// 3. sql(select) & pstmt 
			// num
			sql = "select * from itwill_board where num=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, num);
			
			// 4. sql
			rs = pstmt.executeQuery();
			
			// 5.
			if(rs.next()){
				bdto = new BoardDTO();
				
				bdto.setNum(rs.getInt("num"));
				bdto.setName(rs.getString("name"));
				bdto.setCheckin(rs.getString("Checkin"));
				bdto.setCheckout(rs.getString("Checkout"));
				bdto.setAm10(rs.getString("am10"));
				bdto.setAm11(rs.getString("am11"));
				bdto.setPm12(rs.getString("pm12"));
				bdto.setPm13(rs.getString("pm13"));
				bdto.setPm14(rs.getString("pm14"));
				bdto.setPm15(rs.getString("pm15"));
				bdto.setPm16(rs.getString("pm16"));
				bdto.setPm17(rs.getString("pm17"));
				bdto.setPm18(rs.getString("pm18"));
				bdto.setPm19(rs.getString("pm19"));
				bdto.setPm20(rs.getString("pm20"));
				bdto.setMemo(rs.getString("memo"));
				bdto.setDate(rs.getDate("date"));
				bdto.setReadcount(rs.getInt("readcount"));
				bdto.setRe_ref(rs.getInt("re_ref"));
				bdto.setRe_lev(rs.getInt("re_lev"));		
				bdto.setRe_seq(rs.getInt("re_seq"));
				
				
			}//if
			
			System.out.println(" DAO : !");			
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeDB();
		}
		
		return bdto;
	}
	// getBoard(num)
	
	
	// updateBoard(bdto)
		public int updateBoard(BoardDTO bdto){
			int result = -1;
			
			try {
				//1.2. 
				con = getCon();
				
						// 3. sql �깮�꽦 & pstmt 媛앹껜 �깮�꽦
						sql = "update itwill_board set name=?,checkin=?,checkout=?,am10=?,am11=?,pm12=?,pm13=?,pm14=?,"
								+ "pm15=?,pm16=?,pm17=?,pm18=?,pm19=?,pm20=?,memo=?"
								+ "where num=?";
						pstmt = con.prepareStatement(sql);
						
						
						pstmt.setString(1, bdto.getName());
						pstmt.setString(2, bdto.getCheckin());
						pstmt.setString(3, bdto.getCheckout());
						pstmt.setString(4, bdto.getAm10());
						pstmt.setString(5, bdto.getAm11());
						pstmt.setString(6, bdto.getPm12());
						pstmt.setString(7, bdto.getPm13());
						pstmt.setString(8, bdto.getPm14());
						pstmt.setString(9, bdto.getPm15());
						pstmt.setString(10, bdto.getPm16());
						pstmt.setString(11, bdto.getPm17());
						pstmt.setString(12, bdto.getPm18());
						pstmt.setString(13, bdto.getPm19());
						pstmt.setString(14, bdto.getPm20());
						pstmt.setString(15, bdto.getMemo());
						pstmt.setInt(16, bdto.getNum());
					
					
						result = pstmt.executeUpdate();
						
				
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				closeDB();}
			return result;
			}
	// updateBoard(bdto)
	
			
	// deleteBoard(num,Pass)
	public int deleteBoard(int num){
		int result = -1;
		
		try {
			// 1.2. 
			con = getCon();
			
					// 3. sql
					sql ="delete from itwill_board where num=?";
					pstmt = con.prepareStatement(sql);
					
					pstmt.setInt(1, num);
					// 4. sql �떎�뻾
					result = pstmt.executeUpdate();		
				
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeDB();
		}		
		
		return result;
	}
	// deleteBoard(num,pass)
	

}//DAO
