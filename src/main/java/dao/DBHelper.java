package dao;

import java.io.FileReader;
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.Properties;

public class DBHelper {
	public static Connection getConnection() throws Exception {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		System.out.println("드라이버 로딩성공");
		Connection conn = null;
		// 
		String dbUrl = "jdbc:oracle:thin:@shop_high?TNS_ADMIN=c:/oracle_wallet/Wallet_shop";
		String dbuser = "admin";
		// 로컬에서 설정파일 불러오기 보안 이슈 
		
		FileReader fr = new FileReader("d:\\dev\\auth\\oracle.properties");
		Properties prop = new Properties();
		prop.load(fr);
		String dbpw = prop.getProperty("pw");
		conn = DriverManager.getConnection(dbUrl, dbuser, dbpw);
		return conn;
	}
	// get
	public static void main(String[] args) throws Exception {
		Connection conn = new DBHelper().getConnection();
		System.out.println(conn);
	}

}
