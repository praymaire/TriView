package com.itwillbs.join;

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

import com.itwillbs.board.BoardDTO;

public class JoinDAO {

	private static JoinDAO instance =new JoinDAO();
    
    public static JoinDAO getInstance(){
        return instance;
    }

    //생성자 인데 private 외부에서는 생성못하게 막아둔거
    //메소드를 static 하게만들어  메서드를  이용해서 
    //Member.getInstance();
    private JoinDAO(){
    }
	
//--------------------------------------	
	
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

	   //회원가입
    public void insertMember(JoinDTO bdto)throws Exception{
        int num = 0;
        
        try{
            //커넥션 풀로 부터 커넥션 할당
            con= getCon();
            sql ="insert into itwill_join values(?,?,?,?)";
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, bdto.getName());
            pstmt.setString(2, bdto.getId());
            pstmt.setString(3, bdto.getPass());
            pstmt.setString(4, bdto.getEmail());
           
            pstmt.executeUpdate();
        }catch(Exception e){
            e.printStackTrace();
        }finally{
            execClose(null,pstmt,con);
        }
    }
    
    //회원 아이디 , 비밀번호 체크
    public int userCheck(String id, String pass)throws Exception{
    	
        String dbpass="";
        int x = -1;
        
        try{
            con =getCon();
            sql ="select pass from itwill_join where id = ?";
            pstmt =con.prepareStatement(sql);
            pstmt.setString(1, id);
            rs=pstmt.executeQuery();
            
            if(rs.next()){
                dbpass =rs.getString("pass");
                if(dbpass.equals(pass))
                    x=1; //인증성공
                else
                    x=0; //비밀번호 틀림
            }else
                x=-1; //해당 아이디 없음
        }catch(Exception e){
            e.printStackTrace();
        }finally{
            execClose(rs,pstmt,con);
        }
        return x;
    }
    
    //회원 상세정보 (수정 전)
    public JoinDTO getMember(String id)throws Exception{

        JoinDTO bdto =null;
      
        try{
            con=getCon();
            sql="select * from itwill_join where id= ?";
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, id);
            rs= pstmt.executeQuery();
            
            if(rs.next()){
                bdto=new JoinDTO();
                bdto.setName(rs.getString("name"));
                bdto.setId(rs.getString("id"));
                bdto.setPass(rs.getString("pass"));
                bdto.setEmail(rs.getString("email"));
               
               
            }
        }catch(Exception ex){
            ex.printStackTrace();
        }finally{
            execClose(rs,pstmt,con);
        }
        return bdto;
    }
    
    //회원정보 수정
    public void updateMember(JoinDTO bdto)throws Exception{
    	
        
        try{
            con =getCon();
            sql = "update itwill_join set name=?, pass=?, email=? where id=?";
            pstmt =con.prepareStatement(sql);
         
            pstmt.setString(1, bdto.getName());
            pstmt.setString(2, bdto.getPass());
            pstmt.setString(3, bdto.getEmail());
            pstmt.setString(4, bdto.getId());
         
            
            pstmt.executeUpdate();
            
        }catch(Exception ex){
            ex.printStackTrace();
        }finally{
            execClose(null,pstmt,con);
        }
    }   
    
    //회원탈퇴 , 회원정보 삭제
    public void deleteMember(String id)throws Exception{
     
        try{
            con =getCon();
            sql = "delete from itwill_join where id=?";
            pstmt =con.prepareStatement(sql);
            pstmt.setString(1, id);
            pstmt.executeUpdate();
        }catch(Exception e){
            e.printStackTrace();
        }finally{
            execClose(null,pstmt,con);
        }
    }
    
    //ID 중복 체크
    public int confirmId(String id)throws Exception{
    
        int x=-1;
        try{
            con=getCon();
            sql="select * from itwill_join where id= ?";
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, id);
            rs= pstmt.executeQuery();    
            
            if(rs.next())
                x=1; //해당아이디 있음
            else
                x=-1;//해당아이디 없음
        }catch(Exception ex){
            ex.printStackTrace();
        }finally{
            execClose(rs,pstmt,con);
        }        
        return x;
    }
    
    //자원 정리를 위한 메소드
    //계란노른자
    //Connection 를통해서 PreparedStatement 를생성하고 
    //PreparedStatement 를 통해서 ResultSet 를 생성하기때문에
    //종료할때는 ResultSet=>PreparedStatement=>Connection 와같이 생성순서의 역순으로 close 해줘야한다
    public void execClose(ResultSet rs, PreparedStatement pstmt, Connection con)throws Exception{
        //자원정리
        if(rs !=null) try{rs.close();}catch(SQLException sqle){}
        if(pstmt !=null) try{pstmt.close();}catch(SQLException sqle){}
        //커넥션 풀로 반납
        if(con !=null) try{con.close();}catch(SQLException sqle){}
    }
}

	
