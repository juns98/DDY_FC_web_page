package jsp;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.util.*;

public class join {
	private PreparedStatement pstmt;
	private ResultSet rs;
	private Connection conn;
	
	public int toSQL(int ID, String name, String age, String position, String email, String introduction) {
		try {
		
		     Class.forName("com.mysql.cj.jdbc.Driver");  // MySQL database connection
		     conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/finalproject?" + 
		                        "user=root&password=1234");		  
		     String sql="INSERT INTO joinform VALUES (?,?,?,?,?,?)";
		     
		     String findID = "select max(number) from joinform";
		     pstmt = conn.prepareStatement(findID);
		     rs = pstmt.executeQuery();
		     if (rs.next()) {
			    	ID = rs.getInt("max(number)") + 1; 
			 }
		     System.out.println("name: " + name);
		     try {
		    	 //put data inside
		    	 pstmt = conn.prepareStatement(sql);
		    
		    	 //put data
		    	 pstmt.setInt(1, ID);
		    	 pstmt.setString(2, name);
		    	 pstmt.setString(3, age);
		    	 pstmt.setString(4, position);
		    	 pstmt.setString(5, email);
		    	 pstmt.setString(6, introduction);
		    	 
		    	 return pstmt.executeUpdate();
		     } catch(Exception e) {
		    	 e.printStackTrace();
		     }
		} catch(Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
}
