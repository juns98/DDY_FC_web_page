package jsp;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.util.*;

public class futurematch {
	
	private PreparedStatement pstmt;
	private ResultSet rs;
	private Connection conn;
	
	public List showlist() {
		List matchlist=new ArrayList();
		try {
			conn = null;
			String jdbcUrl = "jdbc:mysql://localhost:3306/finalproject?user=root&password=1234&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";

		     Class.forName("com.mysql.cj.jdbc.Driver");  // MySQL database connection
		     conn = DriverManager.getConnection(jdbcUrl);
		     String sqlqueary="SELECT * FROM futurematch";
		     try{
		    	 Statement st = conn.prepareStatement(sqlqueary);
		    	 ResultSet rs = st.executeQuery(sqlqueary);		
		    	 while (rs.next()) {
		    	  List temp=new ArrayList();
		    	  temp.add(rs.getString(1));
		    	  temp.add(rs.getString(2));
		    	  temp.add(rs.getString(3));
		    	  matchlist.add(temp);
		    	  System.out.println(temp);
		    	}
		       }catch (SQLException s){
		    	 System.out.println("SQL statement is not executed!");
		      }
		  }catch(Exception e){ 
			 e.printStackTrace();
		  }
	  	return matchlist;
	}
}