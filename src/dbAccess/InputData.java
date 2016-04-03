package dbAccess;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class InputData {
	public void addCVS(ArrayList<String> alldata) throws SQLException{
		Db_Connection con = new Db_Connection();
		Connection db = con.Connection();
		
		for(int i = 0; i<alldata.size(); i++){
			String[] data = alldata.get(i).split(",");
			Statement st = db.createStatement();
			String query = "INSERT INTO student VALUES('"+ data[0] + "','"+ data[1] + "','"+ data[2] + "','"+ data[3] + "','"+ data[4] + "','"+ data[5] + "','"+ data[6] + "','"+ data[7] + "','"+ data[8] + "','"+ data[9] + "','" + data[10] + "');";
			st.executeUpdate(query);
		}
	}
}
