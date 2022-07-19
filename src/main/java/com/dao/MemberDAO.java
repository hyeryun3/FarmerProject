package com.dao;

import com.vo.MemberVO;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.stereotype.Repository;

import java.io.InputStream;
import java.time.LocalDateTime;
import java.util.List;

@Repository
public class MemberDAO {
	private static SqlSessionFactory factory;

	static {
		try {
			String resource = "/mybatis-config.xml";
			InputStream inputStream = Resources.getResourceAsStream(resource);
			factory = new SqlSessionFactoryBuilder().build(inputStream);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	//	2
	public List<MemberVO> listMember() {
		List<MemberVO> all = null;
		try (SqlSession session = factory.openSession()) {
			WebMapper mapper = session.getMapper(WebMapper.class);
			all = mapper.listMember();
//			System.out.println(all.get(0).getId());
		}
		return all;
	}

	public MemberVO checkLogin(String id, String pw) {
		MemberVO vo = new MemberVO();
		try (SqlSession session = factory.openSession()) {
			WebMapper mapper = session.getMapper(WebMapper.class);
			vo = mapper.checkLogin(id, pw);
		}
		return vo;
	}

	public String findPw(String id, String email) {
		String pw = null;
		try (SqlSession session = factory.openSession()) {
			System.out.println("findPw DAO..");
			WebMapper mapper = session.getMapper(WebMapper.class);
			id = id.trim();
			email = email.trim();
			System.out.println(id.toString());
			System.out.println(email.toString());
			pw = mapper.findPw(id, email);
			System.out.println("dao: " + pw);
		}
		return pw;
	}

	public String findId(String name, String email) {
		String id = null;
		try (SqlSession session = factory.openSession()) {
			System.out.println("findId DAO..");
			WebMapper mapper = session.getMapper(WebMapper.class);
			id = mapper.findId(name, email);
		}
		return id;
	}

	public int updateMember(MemberVO vo) {
		int r = 0;
		try (SqlSession session = factory.openSession()) {
			WebMapper mapper = session.getMapper(WebMapper.class);
			r = mapper.updateMember(vo);
			if (r > 0) {
				session.commit();
			} else {
				session.rollback();
			}
		}
		return r;
	}

	public int deleteMember(String id) {
		int r = 0;
		try (SqlSession session = factory.openSession()) {
			WebMapper mapper = session.getMapper(WebMapper.class);
			r = mapper.deleteMember(id);
			if (r > 0) {
				session.commit();
			} else {
				session.rollback();
			}
		}
		return r;
	}

	public int insertMember(MemberVO vo) {
		int r = 0;
		try (SqlSession session = factory.openSession()) {
			WebMapper mapper = session.getMapper(WebMapper.class);
			System.out.println("insert mapper 연결완료");

			r = mapper.insertMember(vo);
			if (r > 0) {
				session.commit();
			} else {
				session.rollback();
			}
		}
		return r;
	}

	public int existMember(String id) {
		int r = 0;
		try (SqlSession session = factory.openSession()) {
			WebMapper mapper = session.getMapper(WebMapper.class);
			System.out.println("exist 연결완료");
			r = mapper.countId(id); // id체크
			if (r > 0) {
				session.commit();
			} else {
				session.rollback();
			}
		}
		return r;
	}


	public MemberVO findUser(String userId) {
		MemberVO vo = new MemberVO();
		try (SqlSession session = factory.openSession()) {
			WebMapper mapper = session.getMapper(WebMapper.class);
			vo = mapper.findUser(userId);
		}
		return vo;
	}

	public int findUserByEmail(String email){
		int r = 0;
		try (SqlSession session = factory.openSession()){
			WebMapper mapper = session.getMapper(WebMapper.class);
			r = mapper.findUserByEmail(email);
		}
		return r;
	}

	public void writeQna(String title, String text, LocalDateTime dateTime,int id) {
		try (SqlSession session = factory.openSession()) {
			WebMapper mapper = session.getMapper(WebMapper.class);
			int r = mapper.writeQna(title, text, dateTime, id);
			if (r > 0) {
				session.commit();
			} else {
				session.rollback();
			}
		}
	}
}