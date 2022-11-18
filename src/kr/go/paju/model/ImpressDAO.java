package kr.go.paju.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import kr.go.paju.dto.ImpressDTO;
import kr.go.paju.dto.PicDTO;

public class ImpressDAO {
	private Connection con = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	public int addReview(ImpressDTO dto) {
		int cnt = 0;
		try {
			System.out.println("11");
			con = Maria.getConnection();
			pstmt = con.prepareStatement(Maria.REVIEW_ADD);
			pstmt.setString(1, dto.getCate());
			pstmt.setString(2, dto.getTourno());
			pstmt.setString(3, dto.getId());
			pstmt.setString(4, dto.getContent());
			pstmt.setString(5, dto.getTitle());
			cnt = pstmt.executeUpdate();
		} catch(ClassNotFoundException e){
			System.out.println("드라이버 로딩 실패");
			e.printStackTrace();
		} catch(SQLException e){
			System.out.println("SQL 구문이 처리되지 못했습니다.");
			e.printStackTrace();
		} catch(Exception e){
			System.out.println("잘못된 연산 및 요청으로 인해 목록을 불러오지 못했습니다.");
		} finally {
			Maria.close(rs, pstmt, con);
		}
		return cnt;
	}

	public ArrayList<ImpressDTO> getImpressList() {
		ArrayList<ImpressDTO> reviewList = new ArrayList<ImpressDTO>();
		try {
			con = Maria.getConnection();
			pstmt = con.prepareStatement(Maria.REVIEW_SELECT_ALL);
			rs = pstmt.executeQuery();
			while(rs.next()){
				ImpressDTO dto = new ImpressDTO();
				dto.setNo(rs.getInt("no"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
				dto.setRegdate(rs.getString("regdate"));
				dto.setId(rs.getString("id"));
				reviewList.add(dto);
			}
		} catch(ClassNotFoundException e){
			System.out.println("드라이버 로딩 실패");
			e.printStackTrace();
		} catch(SQLException e){
			System.out.println("SQL 구문이 처리되지 못했습니다.");
			e.printStackTrace();
		} catch(Exception e){
			System.out.println("잘못된 연산 및 요청으로 인해 목록을 불러오지 못했습니다.");
		} finally {
			Maria.close(rs, pstmt, con);
		}
		return reviewList;
	}

	public ImpressDTO getImpress(int no) {
		ImpressDTO dto = new ImpressDTO();
		try {
			con = Maria.getConnection();
			pstmt = con.prepareStatement(Maria.REVIEW_SELECT_ONE);
			pstmt.setInt(1, no);
			rs = pstmt.executeQuery();
			if(rs.next()){
				dto.setNo(rs.getInt("no"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
				dto.setRegdate(rs.getString("regdate"));
				dto.setId(rs.getString("id"));
				dto.setTourno(rs.getString("tourno"));
			}
		} catch(ClassNotFoundException e){
			System.out.println("드라이버 로딩 실패");
			e.printStackTrace();
		} catch(SQLException e){
			System.out.println("SQL 구문이 처리되지 못했습니다.");
			e.printStackTrace();
		} catch(Exception e){
			System.out.println("잘못된 연산 및 요청으로 인해 목록을 불러오지 못했습니다.");
		} finally {
			Maria.close(rs, pstmt, con);
		}
		return dto;
	}

	public int delReview(int no) {
		int cnt = 0;
		try {
			con = Maria.getConnection();
			pstmt = con.prepareStatement(Maria.REVIEW_DELETE);
			pstmt.setInt(1, no);
			cnt = pstmt.executeUpdate();
		} catch(ClassNotFoundException e){
			System.out.println("드라이버 로딩 실패");
			e.printStackTrace();
		} catch(SQLException e){
			System.out.println("SQL 구문이 처리되지 못했습니다.");
			e.printStackTrace();
		} catch(Exception e){
			System.out.println("잘못된 연산 및 요청으로 인해 목록을 불러오지 못했습니다.");
		} finally {
			Maria.close(rs, pstmt, con);
		}
		return cnt;
	}

	public int modifyReview(ImpressDTO dto, int no) {
		int cnt = 0;
		try {
			con = Maria.getConnection();
			pstmt = con.prepareStatement(Maria.REVIEW_UPDATE);
			pstmt.setString(1, dto.getTitle());
			pstmt.setString(2, dto.getContent());
			pstmt.setInt(3, no);
			cnt = pstmt.executeUpdate();
		} catch(ClassNotFoundException e){
			System.out.println("드라이버 로딩 실패");
			e.printStackTrace();
		} catch(SQLException e){
			System.out.println("SQL 구문이 처리되지 못했습니다.");
			e.printStackTrace();
		} catch(Exception e){
			System.out.println("잘못된 연산 및 요청으로 인해 목록을 불러오지 못했습니다.");
		} finally {
			Maria.close(rs, pstmt, con);
		}
		return cnt;
	}

	public ArrayList<PicDTO> JSONPicList(String tourno) {
		ArrayList<PicDTO> picList = new ArrayList<PicDTO>();
		try {
			con = Maria.getConnection();
			pstmt = con.prepareStatement(Maria.JSON_PICLIST);
			pstmt.setString(1, tourno);
			rs = pstmt.executeQuery();
			while(rs.next()){
				PicDTO pic = new PicDTO();
				pic.setNo(rs.getInt("no"));
				pic.setTourno(rs.getString("tourno"));
				pic.setPicname(rs.getString("picname"));
				pic.setPos(rs.getInt("pos"));
				picList.add(pic);
			}
		} catch(ClassNotFoundException e){
			System.out.println("드라이버 로딩 실패");
		} catch(Exception e){
			System.out.println("SQL 구문이 처리되지 못했거나 연산이 잘못되었습니다.");
		} finally {
			Maria.close(rs, pstmt, con);
		}
		return picList;
	}
}
