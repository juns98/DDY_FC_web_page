package jsp;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.util.*;

public class player {
	public player() {
		// TODO Auto-generated constructor stub
	}
	public List doPost()
	      {
		List playerList=new ArrayList();
		 
		try {
		     Class.forName("com.mysql.cj.jdbc.Driver");  // MySQL database connection
		     Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/finalproject?" + 
		                        "user=root&password=0000");		    
		     String sqlqueary="SELECT * FROM player";
		     try{
		    	 Statement st = conn.prepareStatement(sqlqueary);
		    	 ResultSet rs = st.executeQuery(sqlqueary);		
		    	 while (rs.next()) {
		    	  List temp=new ArrayList();
		    	  temp.add(rs.getInt(1));
		    	  temp.add(rs.getString(2));
		    	  temp.add(rs.getString(3));
		    	  temp.add(rs.getInt(4));
		    	  playerList.add(temp);
		    	  System.out.println(temp);
		    	}
		       }catch (SQLException s){
		    	 System.out.println("SQL statement is not executed!");
		      }
		  }catch(Exception e){ 
			 e.printStackTrace();
		  }
	  	return playerList;
  }

}
