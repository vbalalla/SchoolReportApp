package dbAccess;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class InputData {
	public String create_db(String yr,String sem, String[] data) throws SQLException{
		
		Db_Connection con = new Db_Connection();
		Connection db = con.Connection();
		
		String dbname = yr + "_semister_" + sem;
		
		String in = "";
		
		for(int i=1; i<data.length; i++){
			in = in + "," + data[i] + " int(11)";
		}
		
		Statement st = db.createStatement();
		String query1 = "CREATE TABLE "+dbname+"(st_id int(4) PRIMARY KEY"+ in +");";
		st.executeUpdate(query1);
		
		return dbname;
		
	}	
	
	public void addCVS(ArrayList<String> alldata, String dbname) throws SQLException{
		Db_Connection con = new Db_Connection();
		Connection db = con.Connection();
		
		for(int i = 1; i<alldata.size(); i++){
			String[] data = alldata.get(i).split(",");
			
			String in = "'" + data[0] + "'";
			for(int j = 1; j<data.length; j++){
				in = in + ",'" + data[j] +"'";
			}
			
			Statement st = db.createStatement();
			String query2 = "INSERT INTO "+dbname+" VALUES("+ in +");";
			st.executeUpdate(query2);
		}
	}
}
