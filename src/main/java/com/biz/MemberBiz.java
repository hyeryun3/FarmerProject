package com.biz;

import com.dao.MemberDAO;
import com.vo.BoardVO;
import com.vo.MemberVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.List;

@Service
public class MemberBiz {
	@Autowired
	private MemberDAO dao;

//	public int insertMember (MemberVO vo) {
//		return dao.insertMember(vo);
//	}

//	public List<MemberVO> listMember() {
//		System.out.println("biz왔다.");
//		// TODO Auto-generated method stub
//		return dao.listMember();
//	}
	
	public MemberVO checkLogin(String id, String pw) {
		System.out.println("로그인체크 biz");
		return dao.checkLogin(id, pw);
	}

	public String findPw(String id, String email) {
		// TODO Auto-generated method stub
		System.out.println("비번찾기 biz");
		return dao.findPw(id, email);
	}

	public String findId(String name, String email) {
		// TODO Auto-generated method stub
		System.out.println("아이디찾기 biz");
		return dao.findId(name, email);
	}

	public int insertMember(MemberVO vo) {
		System.out.println("회원가입 biz");
		return dao.insertMember(vo);
	}
	public int existMember(String id) {
		System.out.println("존재하는지 체크 biz");
		return dao.existMember(id);
	}

	public int updateMember(MemberVO vo) {
		System.out.println("회원정보수정 biz");
		return dao.updateMember(vo);
	}

	public MemberVO findUser(String userId) {
		System.out.println("회원정보 찾기 biz");
		return dao.findUser(userId);
	}

	public int findUserByEmail(String email){
		System.out.println("이메일로 회원정보 찾기 biz");
		return dao.findUserByEmail(email);
	}

	public void writeQna(String title, String text, LocalDateTime dateTime, String userId){
		System.out.println("게시물작성 biz");
		MemberVO user = dao.findUser(userId);
		dao.writeQna(title,text,dateTime, user.getId());
	}

	public List<BoardVO> listQna(){
		System.out.println("qna리스트 biz");
		List<BoardVO> listQna = dao.listQna();
		return listQna;
	}

	public BoardVO findBoardByid(int id) {
		System.out.println("게시글정보 biz");
		BoardVO boardDetail = dao.boardDetail(id);
		return boardDetail;
	}

	public MemberVO findUserById(int id) {
		System.out.println("회원정보 찾기 biz");
		return dao.findUserById(id);
	}
}
