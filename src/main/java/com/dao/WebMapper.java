package com.dao;

import java.util.List;

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

	@Results({
		@Result(property = "name", column = "name"),
		@Result(property = "id", column = "id"),
		@Result(property = "email", column = "email"),
		@Result(property = "password", column = "password"),
		@Result(property = "tel", column = "tel")
	})
	
	@Select("select * from customer")
	public List<MemberVO> listMember();
	

	
	@Delete("delete from customer where id=#{id}")
	public int deleteMember(String id);
	
	@Update("update customer set password=#{password},tel=#{tel} where id=#{id}")
	public int updateMember(MemberVO vo);
	

	
	
	@Select("select password from customer where id=#{id} and email=#{email}")
	public String findPw(@Param("id") String id, @Param("email") String email);

	@Select("select id from customer where name=#{name} and email=#{email}")
	public String findId(@Param("name") String name, @Param("email") String email);

	@Insert("insert into customer(name,id,email,password,tel) values(#{name},#{id},#{email},#{password},#{tel})")
	public int insertMember(MemberVO vo);
	
	@Select("select count(*) from customer where id=#{id}")
	public int countId(String id);


	@Select("select * from customer where id=#{id} and password=#{pw}")
	public MemberVO checkLogin(@Param("id") String id, @Param("pw") String pw);
	
	@Update("update customer set email=#{email}, password=#{password}, tel=#{tel} where id=#{id}")
	public int modify(@Param("email") String email, @Param("password") String password, @Param("tel") String tel, @Param("id") String id);


}
