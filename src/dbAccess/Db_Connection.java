package dbAccess;

import java.sql.*;

public class Db_Connection 
{
    public Connection Connection()
    {
    	try {
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("Driver found");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			System.out.println("Driver not found:" + e);
		}
		
		String url="jdbc:mysql://localhost:3306/schoolreport";
		String user = "root";
		String password = "password";
		
		Connection con=null;
		
		try {
			con = DriverManager.getConnection(url, user, password);
			System.out.println("conected sucessfully");
			return con;
			
		} catch (SQLException e) {
			System.out.println("Something went wrong with the connection");
			return null;
		}
		
		

	}
}
