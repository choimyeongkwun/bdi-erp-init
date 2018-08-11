package common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class DBConnection {
	
	private static final String URL = "jdbc:mariadb://localhost:3306/dbi";
	private static final String USER = "root";
	private static final String PASSWORD = "12345678";
	private static final String DRIVER = "org.mariadb.jdbc.Driver";
	private static Connection con = null;
	
	private static void openCon() {
		try {
			Class.forName(DRIVER);
			con = DriverManager.getConnection(URL, USER, PASSWORD);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	public static Connection getCon() {
		if(con==null) {
			openCon();
		}
		return con;
	}
	public static void closeCon() {
		if(con!=null) {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		con = null;
	}
	
	public static void main(String[] args) {
		Connection con = DBConnection.getCon();
		System.out.println("에러 없으면 연결된거지~");
	}
	
	public static List<Map<String,String>> selectList(String sql) throws SQLException{
		List<Map<String,String>> list = new ArrayList<Map<String,String>>();
		Connection con = null;
		try {
			con = getCon();
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			ResultSetMetaData rsmt = rs.getMetaData();
			
			Map<String,String> user;
			while(rs.next()) {
				user = new HashMap<String,String>();
				for(int i=1;i<=rsmt.getColumnCount();i++) {
					String colNm = rsmt.getColumnLabel(i);
					user.put(colNm, rs.getString("colNm"));
				}
				list.add(user);
			}
		}catch (SQLException e) {
			throw e;
		}finally {
			if(con!=null) {				
				DBConnection.closeCon();
			}
		}
		return list;
	}
}