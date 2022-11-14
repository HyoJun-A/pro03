package kr.go.paju.model;

import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;



import kr.go.paju.dto.UserDTO;

import com.crypto.util.SHA256;


public class UserDAO {
	private Connection con = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	String sql = "";
	
	// login
	public String login(String id, String pw) {
		String result = "";
		String shaPw = "";
		try {
			shaPw = SHA256.encrypt(pw);
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		
		try {
			con = Maria.getConnection();
			pstmt = con.prepareStatement(Maria.USER_LOGIN);
			pstmt.setString(1, id);
			pstmt.setString(2, shaPw);
			rs = pstmt.executeQuery();
			if(rs.next()){
				result = "True";
			} else{
				result = "False";
			}
		} catch(Exception e){
			System.out.println("잘못된 연산 및 요청으로 인해 목록을 불러오지 못했습니다.");
		} finally {
			Maria.close(rs, pstmt, con);
		}
		return result;
	}

	public int idCheckPro(String id) {
		int cnt = 0;
		try {
			con = Maria.getConnection();
			pstmt = con.prepareStatement(Maria.USER_ID_CHECK);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()){
				cnt = cnt + 1;
			} else{
				cnt = 0;
			}
		} catch(Exception e){
			System.out.println("잘못된 연산 및 요청으로 인해 목록을 불러오지 못했습니다.");
		} finally {
			Maria.close(rs, pstmt, con);
		}
		return cnt;
	}

	public int insertUser(UserDTO dto) {
		int cnt = 0;
		return cnt;
	}
	
}
