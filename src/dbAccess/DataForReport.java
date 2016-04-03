package dbAccess;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DataForReport {
	public String getData(String name) throws SQLException{
		Db_Connection con = new Db_Connection();
		Connection db = con.Connection();
		Statement st = db.createStatement();
		String query = "SELECT * FROM student WHERE name='"+ name +"'";
		//String query = "SELECT * FROM student WHERE name='"+ name + "'"; 
		ResultSet rs = st.executeQuery(query);
		int rowCount = 0;
		if(rs.last()){
		    rowCount = rs.getRow(); 
		    rs.beforeFirst();
		}
		
		if(rowCount < 1){
			return "There is no name called "+ name +" in the database.";
		}
		if(rowCount == 1){
			rs.next();
			String out = "" + rs.getInt(2);
			for(int i=3;i<12;i++){
				int result = rs.getInt(i);
				out = out + "," + result; 
			}
			out = out + "";
			
			return out;
		}
		else{
			return "" + rowCount;
		}
	}
}
