package classes;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;

public class ReadCVS {

  public ArrayList<String> run(String url) {

	String csvFile = url;
	BufferedReader br = null;
	String line = "";

	try {

		br = new BufferedReader(new FileReader(csvFile));
		//line = br.readLine();
		ArrayList<String> alldata = new ArrayList<String>();
		while ((line = br.readLine()) != null) {
			alldata.add(line);
		}
		return alldata;

	} catch (FileNotFoundException e) {
		e.printStackTrace();
	} catch (IOException e) {
		e.printStackTrace();
	} finally {
		if (br != null) {
			try {
				br.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
	return null;
  }

}