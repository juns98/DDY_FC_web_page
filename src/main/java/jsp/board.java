package jsp;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.util.*;

public class board {
	
	private PreparedStatement pstmt;
	private ResultSet rs;
	private Connection conn;
	
	public board() {
		
	}
	public List showlist() {
		List boardlist=new ArrayList();
		try {
			conn = null;
			String jdbcUrl = "jdbc:mysql://localhost:3306/finalproject?user=root&password=1234&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";

		     Class.forName("com.mysql.cj.jdbc.Driver");  // MySQL database connection
		     conn = DriverManager.getConnection(jdbcUrl);
		     String sqlqueary="SELECT * FROM board";
		     try{
		    	 Statement st = conn.prepareStatement(sqlqueary);
		    	 ResultSet rs = st.executeQuery(sqlqueary);		
		    	 while (rs.next()) {
		    	  List temp=new ArrayList();
		    	  temp.add(rs.getInt(1));
		    	  temp.add(rs.getString(2));
		    	  temp.add(rs.getString(4));
		    	  boardlist.add(temp);
		    	  System.out.println(temp);
		    	}
		       }catch (SQLException s){
		    	 System.out.println("SQL statement is not executed!");
		      }
		  }catch(Exception e){ 
			 e.printStackTrace();
		  }
	  	return boardlist;
	}
	public int submit(int ID, String title, String content, String email) {
		try {
		     Class.forName("com.mysql.cj.jdbc.Driver");  // MySQL database connection
		     conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/finalproject?" + 
		                        "user=root&password=1234");		  
		     String sql="INSERT INTO board VALUES (?,?,?,?)";
		     String findID = "select max(ID) from board";
		     pstmt = conn.prepareStatement(findID);
		     rs = pstmt.executeQuery();
		     if (rs.next()) {
		    	ID = rs.getInt("max(ID)") + 1; 
		     }
		     System.out.println(content);
		     System.out.println(email);
		     try {
		    	 //put data inside
		    	 pstmt = conn.prepareStatement(sql);
		    	 
		    	 //put data
		    	 pstmt.setInt(1, ID);
		    	 pstmt.setString(2, title);
		    	 pstmt.setString(3, content);
		    	 pstmt.setString(4, email);		    	 
		    	 return pstmt.executeUpdate();
		     } catch(Exception e) {
		    	 e.printStackTrace();
		     }
		} catch(Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
	
	public List view(int ID) {
		List view = new ArrayList();
		String sql = "select * from board where ID = ?";
		try {
			 Class.forName("com.mysql.cj.jdbc.Driver");  // MySQL database connection
		     conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/finalproject?" + 
		                        "user=root&password=1234");		
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, ID);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				view.add(rs.getString(2));
				view.add(rs.getString(3));
				view.add(rs.getString(4));
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		return view;
	}
	
	public int delete(int ID) {
		String sql = "delete from board where ID = ?";
		try {
			 Class.forName("com.mysql.cj.jdbc.Driver");  // MySQL database connection
		     conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/finalproject?" + 
		                        "user=root&password=1234");	
		     try {
		    	 pstmt = conn.prepareStatement(sql);
		    	 pstmt.setInt(1, ID);
		    	 pstmt.executeUpdate();
		    	 conn.close();
		    	 return 1;
		    	 
		     } catch (Exception e) {
		    	 e.printStackTrace();
		     }
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}
}