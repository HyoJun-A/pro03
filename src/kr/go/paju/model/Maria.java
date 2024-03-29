package kr.go.paju.model;

import java.sql.*;
import java.sql.SQLException;

public class Maria {
	final static String DRIVER = "org.mariadb.jdbc.Driver";
	final static String URL = "jdbc:mariadb://127.0.0.1:3308/government?serverTimezone=Asia/Seoul";
	final static String USER = "root";
	final static String PW = "1234";
	
	//Notice
	final static String NOTICE_SELECT_ALL = "select * from notice order by regdate";
	final static String NOTICE_SELECT_ONE = "select * from notice where no=?";
	final static String NOTICE_VISITED_UPDATE = "update notice set visited = visited + 1 where no=?";
	final static String NOTICE_INSERT = "insert into notice(title, content) values(?, ?)";
	final static String NOTICE_DELETE = "delete from notice where no=?";
	final static String NOTICE_UPDATE = "update notice set title=?, content=? where no=?";
	
	//user
	final static String USER_JOIN = "insert into user(id, pw, name, birth, email, tel, addr) values (?,?,?,?,?,?,?)";
	final static String USER_LOGIN = "select * form user where id=? and pw=?";
	final static String USER_ID_CHECK = "select * from user where id=?";
	final static String USER_ALL = "select * from user";
	final static String USER_UPDATE = "update user set pw=?, name=?, birth=?, email=?, tel=?, addr=? where id=?";
	final static String VISIT_UPDATE = "update user set visted=visted+1 where id=?";
	
	//test
	public static String TEST_SELECT_ONE = "select * from test where name=?";
	public static String TEST_SELECT_ALL = "select * from test";
	
	//tour
	final static String LOAD_LAST_NO = "select no from tour order by no desc limit 1";
	final static String FILE_UPLOAD = "insert into pic(tourno, picname, pos) values (?,?,?)";
	final static String JSON_PICLIST = "select * from pic where tourno=?";
	final static String ADD_TOUR = "insert into tour(tourno, cate, place, comment1, comment2, addr) values (?,?,?,?,?,?)";
	final static String TOUR_LIST_ALL = "select * from tour";
	final static String TOUR_CATE_LIST = "select a.no, a.tourno, a.cate, a.place, a.comment1, a.comment2, b.picname, b.pos from tour a inner join pic b on a.tourno=b.tourno where a.cate=? and b.pos=1";
	final static String TOUR_LIST_DETAIL = "select * from tour where no=?";
	final static String TOUR_DEL = "delete from tour where no=?";
	final static String MODIFY_TOUR = "update tour set tourno=?, cate=?, place=?, comment1=?, comment2=?, addr=? where no=?";
	final static String TOUR_SEARCH_PLACE_LIST = "select * from tour where place like CONCAT('%',?,'%')"; //'%'+?+'%'
	final static String TOUR_SEARCH_COMMENT_LIST = "select * from tour where comment2 like ?";
	final static String TOUR_SEARCH_ALL_LIST = "select * from tour where place like ? or comment2 like ?";
	final static String SEARCH_TOUR_PLACE = "select a.no, a.tourno, a.cate, a.place, a.comment1, a.comment2, b.picname, b.pos from tour a inner join pic b on a.tourno=b.tourno where a.place like concat('%', ?, '%')";
	final static String SEARCH_TOUR_COMMNET1 = "select * from tour where comment1 like concat('%', ?, '%')";
	final static String SEARCH_TOUR_COMMNET2 = "select * from tour where comment2 like concat('%', ?, '%')";
	
	
	//review 
	final static String REVIEW_ADD = "insert into impress(cate, tourno, id, content, title) values(?, ?, ?, ?, ?)";
	final static String REVIEW_SELECT_ALL = "select * from impress";
	final static String REVIEW_SELECT_ONE = "select * from impress where no = ?";
	final static String REVIEW_DELETE = "delete from impress where no = ?";
	final static String REVIEW_UPDATE = "update impress set title=?, content=? where no=?";
	
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
