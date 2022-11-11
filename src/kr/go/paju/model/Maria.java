package kr.go.paju.model;

import java.sql.*;
import java.sql.SQLException;

public class Maria {
	final static String DRIVER = "org.mariadb.jdbc.Driver";
	final static String URL = "jdbc:mariadb://127.0.0.1:3308/govement?serverTimezone=Asia/Seoul";
	final static String USER = "root";
	final static String PW = "1234";
	
	
	final static String NOTICE_SELECT_ALL = "select * from notice order by regdate";
	final static String NOTICE_SELECT_ONE = "select * from notice where no=?";
	final static String NOTICE_VISITED_UPDATE = "update notice set visited = visited + 1 where no=?";
	final static String NOTICE_INSERT = "insert into notice(title, content) values(?, ?)";
	final static String NOTICE_DELETE = "delete from notice where no=?";
	final static String NOTICE_UPDATE = "update notice set title=?, content=? where no=?";
	
	final static String USER_JOIN = "insert into user(id, pw, name, birth, email, tel, address) values(?, ?, ?, ?, ?, ?, ?)";
	final static String USER_LOGIN = "select * from user where id=? and pw=?";
	final static String USER_ID_CHECK = "select * from user where id=?";
	
	public static Connection getConnection() throws ClassNotFoundException, SQLException{
		Class.forName(DRIVER);
		Connection con = DriverManager.getConnection(URL, USER, PW);
		return con;
	}
	
	public static void close(PreparedStatement pstmt, Connection con){
		if(pstmt != null){
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if(con != null){
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	
	public static void close(ResultSet rs, PreparedStatement pstmt, Connection con){
		if(rs != null){
			try {
				rs.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if(pstmt != null){
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if(con != null){
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
}
