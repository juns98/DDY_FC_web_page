package jsp;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.util.*;

public class signup {
	
	public int toSQL(String firstname, String lastname, String birthday, String gender, String email, String password) {
		try {
		     Class.forName("com.mysql.cj.jdbc.Driver");  // MySQL database connection
		     Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/finalproject?" + 
		                        "user=root&password=0000");		  
		     String sql="INSERT INTO user VALUES (?,?,?,?,?,?)";
		     try {
		    	 //put data inside
		    	 PreparedStatement pstmt = conn.prepareStatement(sql);
		    	 System.out.println(firstname + lastname);
		    	 //put data
		    	 pstmt.setString(1, firstname);
		    	 pstmt.setString(2, lastname);
		    	 pstmt.setString(3, birthday);
		    	 pstmt.setString(4, gender);
		    	 pstmt.setString(5, email);
		    	 pstmt.setString(6, password);
		    	 
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
