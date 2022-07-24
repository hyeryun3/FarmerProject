package com.dao;

import java.time.LocalDateTime;
import java.util.List;

import com.vo.BoardVO;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Component;

import com.vo.MemberVO;

public interface WebMapper {
/*
	@Results({
		@Result(property = "name", column = "name"),
		@Result(property = "userId", column = "user_id"),
		@Result(property = "email", column = "email"),
		@Result(property = "password", column = "password"),
		@Result(property = "tel", column = "tel"),
		@Result(property = "writeDate", column = "write_date")
	})*/
	
	@Select("select * from user")
	public List<MemberVO> listMember();

	// 회원가입
	@Insert("insert into user(name,user_id,email,password,tel) values(#{name},#{userId},#{email},#{password},#{tel})")
	public int insertMember(MemberVO vo);

	// 로그인
	@Select("select * from user where user_id=#{userId} and password=#{pw}")
	public MemberVO checkLogin(@Param("userId") String userId, @Param("pw") String pw);

	// 비밀번호 찾기
	@Select("select password from user where user_id=#{id} and email=#{email}")
	public String findPw(@Param("id") String id, @Param("email") String email);

	// 아이디 찾기
	@Select("select user_id from user where name=#{name} and email=#{email}")
	public String findId(@Param("name") String name, @Param("email") String email);

	// 회원정보 수정
	@Update("update user set email=#{email},password=#{password},tel=#{tel} where user_id=#{userId}")
	public int updateMember(MemberVO vo);

	// 문의글 등록
	@Insert("insert into qna(title,text,write_date,user_id) values(#{title},#{text},#{write_date},#{user_id})")
	public int writeQna(@Param("title") String title, @Param("text") String text, @Param("write_date") LocalDateTime dateTime, @Param("user_id") int id);

	// 문의글 조회
	@Select("select * from qna")
	public List<BoardVO> listQna();




	@Delete("delete from user where user_id=#{id}")
	public int deleteMember(String id);
	

	

	

	@Select("select count(*) from user where user_id=#{id}")
	public int countId(String id);



	@Select("select * from user where user_id=#{userId}")
	public MemberVO findUser(@Param("userId") String userId);

	@Select("select count(*) from user where email=#{email}")
	public int findUserByEmail(@Param("email") String email);



}
