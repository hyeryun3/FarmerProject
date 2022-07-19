package com.vo;

import lombok.Getter;
import lombok.RequiredArgsConstructor;
import lombok.Setter;

@Getter @Setter
@RequiredArgsConstructor
public class MemberVO {
	private int id;
	private String name;
	private String userId;
	private String email;
	private String password;
	private String tel;


}
