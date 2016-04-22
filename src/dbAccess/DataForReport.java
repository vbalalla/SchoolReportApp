package dbAccess;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.mysql.jdbc.DatabaseMetaData;
import com.mysql.jdbc.ResultSetMetaData;

public class DataForReport {
	public String getData(String name) throws SQLException{
		Db_Connection con = new Db_Connection();
		Connection db = con.Connection();
		Statement st = db.createStatement();
		String query = "SELECT * FROM schoolreport.2013_semister_1 WHERE st_id='"+ name +"'";
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
	public String getTableNames() throws SQLException{
		Db_Connection con = new Db_Connection();
		Connection db = con.Connection();
		DatabaseMetaData dbmd = (DatabaseMetaData) db.getMetaData();
        String[] types = {"TABLE"};
        ResultSet rs = dbmd.getTables(null, null, "%", types);
        rs.next();
        String tableNames = rs.getString("TABLE_NAME");
        while (rs.next()) {
            tableNames = tableNames + "," + rs.getString("TABLE_NAME");
        }
		//System.out.println(tableNames);
		return tableNames;
	}
	
	public String[][] getTableCollumnNames(String table) throws SQLException{
		Db_Connection con = new Db_Connection();
		Connection db = con.Connection();
		Statement st = db.createStatement();
		String query = "SELECT * FROM "+ table; 
		ResultSet rs = st.executeQuery(query);
		ResultSetMetaData metaData = (ResultSetMetaData) rs.getMetaData();
		int count = metaData.getColumnCount(); //number of column
		int rowCount = 0;
		if(rs.last()){
		    rowCount = rs.getRow(); 
		    rs.beforeFirst();
		}
		
		String fullTable[][] = new String[rowCount+1][count];
//		System.out.println(rowCount+1);
//		System.out.println(count);
//		System.out.println("");
		
		for (int i = 0; i < count; i++)
		{
			fullTable[0][i] = metaData.getColumnLabel(i+1); 
		}
		int j = 1;
		
		
		while (rs.next()) {
			for(int i=0;i<count;i++){
				//fullTable[j][i] = rs.getString(i+1);
				System.out.println(rs.getString(i+1));
				j++;
			}
			
		}
		
		
		return fullTable;
	}
}
