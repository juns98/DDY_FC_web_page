package jsp;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.util.*;

public class signup {
	private PreparedStatement pstmt;
	private ResultSet rs;
	private Connection conn;
	
	public int toSQL(String id, String firstname, String lastname, String birthday, String gender, String email, String password) {
		try {
		     Class.forName("com.mysql.cj.jdbc.Driver");  // MySQL database connection
		     conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/finalproject?" + 
		                        "user=root&password=1234");		  
		     String sql="INSERT INTO user VALUES (?,?,?,?,?,?,?)";
		     try {
		    	 //put data inside
		    	 pstmt = conn.prepareStatement(sql);
		    	 System.out.println(firstname + lastname);
		    	 //put data
		    	 pstmt.setString(1, id);
		    	 pstmt.setString(2, firstname);
		    	 pstmt.setString(3, lastname);
		    	 pstmt.setString(4, birthday);
		    	 pstmt.setString(5, gender);
		    	 pstmt.setString(6, email);
		    	 pstmt.setString(7, password);
		    	 
		    	 return pstmt.executeUpdate();
		     } catch(Exception e) {
		    	 e.printStackTrace();
		     }
		} catch(Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
	
	public int login(String email, String password) {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");  // MySQL database connection
		    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/finalproject?" + 
		                        "user=root&password=1234");		
		    String sql = "select password from user where email = ?";
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1,  email);
				rs = pstmt.executeQuery();
				if (rs.next()) {
					System.out.println(rs.getString(1));
					if (rs.getString(1).contentEquals(password)) {
						System.out.println("login success");
						return 1;
					}
					else {
						System.out.println("Wrong password");
						return 0;
					}
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			return -1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -2;
	}
}
