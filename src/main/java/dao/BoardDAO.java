package dao;

import java.util.ArrayList;

import Criteria.Criteria;
import Criteria.PageMakerDTO;
import common.JDBConnect;
import dto.BoardDTO;
import dto.MailDTO;
import jakarta.servlet.ServletContext;

public class BoardDAO extends JDBConnect{
	public BoardDAO() {
	}

	public BoardDAO(ServletContext application) {
		super(application);

	}
	
	public int registBoard(BoardDTO dto) {
		String sql = "INSERT INTO milk_board (board_title,member_name ,board_content , member_user_id, board_category, board_category_detail,board_comment ) VALUES (?, ?, ?, ?, ? ,?,?);";

		int result = 0;

		try {
			psmt = conn.prepareStatement(sql);

			psmt.setString(1, dto.getBoard_title());
			psmt.setString(2, dto.getMember_name());
			psmt.setString(3, dto.getBoard_content());
			psmt.setString(4, dto.getMember_user_id());
			psmt.setString(5, dto.getBoard_category());
			psmt.setString(6, dto.getBoard_category_detail());
			psmt.setString(7, "n");

			result = psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;
	}
	
	public ArrayList<BoardDTO> boardList(Criteria cri, int total){
		ArrayList<BoardDTO> boardList = new ArrayList<BoardDTO>();
		String sql = "select * from milk_board order by board_reg_date desc limit ?,?";
		PageMakerDTO Pdto = new PageMakerDTO(cri, total);
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, cri.getSkip());
			psmt.setInt(2, cri.getAmount());
			rs = psmt.executeQuery();
			while (rs.next()) {
				BoardDTO list = new BoardDTO();
				list.setBoard_idx(rs.getInt("board_idx"));
				list.setBoard_title(rs.getString("board_title"));
				list.setMember_name(rs.getString("member_name"));
				list.setBoard_reg_date(rs.getDate("board_reg_date"));
				list.setBoard_content(rs.getString("board_content"));
				list.setMember_user_id(rs.getString("member_user_id"));
				list.setBoard_comment(rs.getString("board_comment"));
				list.setBoard_category(rs.getString("board_category"));
				list.setBoard_category_detail(rs.getString("board_category_detail"));
				boardList.add(list);
			}

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("쪽지 리스트 가죠오기 실패");
		}

		return boardList;
	}

	public String boardCategory(int idx) {
		String sql = "select distinct B.board_category_name from milk_board as A\r\n"
				+ "inner join milk_category as B on A.board_category = B.board_category \r\n"
				+ "where A.board_idx = ?\r\n"
				+ "";
		String detail = "";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, idx);
			rs = psmt.executeQuery();
			if (rs.next()) {
				detail = rs.getString("board_category_name");
			}
			

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(" 오류");
		}
		
		return detail;
	}
	public String boardCategoryDetail(int idx) {
		String sql = "select distinct B.board_category_detail_name from milk_board as A\r\n"
				+ "inner join milk_category as B on A.board_category = B.board_category \r\n"
				+ "where A.board_idx = ?\r\n"
				+ "";
		String detail = "";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, idx);
			rs = psmt.executeQuery();
			if (rs.next()) {
				detail = rs.getString("board_category_detail_name");
			}
			

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(" 오류");
		}
		
		return detail;
	}
	public ArrayList<BoardDTO> boardDetailList(int idx){
		ArrayList<BoardDTO> boardList = new ArrayList<BoardDTO>();
		String sql = "select * from milk_board where board_idx = ? ";

		try {
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, idx);
			rs = psmt.executeQuery();
			while (rs.next()) {
				BoardDTO list = new BoardDTO();
				list.setBoard_idx(rs.getInt("board_idx"));
				list.setBoard_title(rs.getString("board_title"));
				list.setMember_name(rs.getString("member_name"));
				list.setBoard_reg_date(rs.getDate("board_reg_date"));
				list.setBoard_content(rs.getString("board_content"));
				list.setMember_user_id(rs.getString("member_user_id"));
				list.setBoard_comment(rs.getString("board_comment"));
				list.setBoard_category(rs.getString("board_category"));
				list.setBoard_category_detail(rs.getString("board_category_detail"));
				list.setBoard_comment_content(rs.getString("board_comment_content"));
				list.setBoard_comment_date(rs.getDate("board_comment_date"));
				boardList.add(list);
			}

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("게시판 디테일 리스트 가죠오기 실패");
		}

		return boardList;
	}
	
	public int boardDelete(int idx) {
		
		String sql ="delete from milk_board where board_idx = ?";

		int result = 0;

		try {
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, idx);
			result = psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;
	}
	public int boardUpdate( int idx, String title, String content) {
		StringBuilder sb = new StringBuilder();

		int result = 0;

		System.out.println(idx + "클릭오류");

		sb.append("\r\n" + "update milk_board set board_title = ? , board_content = ? where board_idx = ?");

		try {
			psmt = conn.prepareStatement(sb.toString());

			psmt.setString(1, title);
			psmt.setString(2, content);
			psmt.setInt(3, idx);
			result = psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;
	} 
	public int boardUpdateComment( int idx, String comment) {
		StringBuilder sb = new StringBuilder();

		int result = 0;

		System.out.println(idx + "클릭오류");

		sb.append("\r\n" + "update milk_board set board_comment_content = ? , board_comment = ? , board_comment_date = now() where board_idx = ?");

		try {
			psmt = conn.prepareStatement(sb.toString());

			psmt.setString(1, comment);
			psmt.setString(2, "y");

			psmt.setInt(3, idx);
			result = psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;
	}
	
	public int boardCount() {
		String sql = "select count(*) as A from milk_board ";
		int rResult = 0;
		try {
			psmt = conn.prepareStatement(sql);
			

			rs = psmt.executeQuery();
			if (rs.next()) {
				rResult = rs.getInt("A");
				
			}
		} catch (Exception e) {
			System.out.println("카운트 없음");
			e.printStackTrace();
		}

		return rResult;
	}
	
}
