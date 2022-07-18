package com.vo;

import lombok.Getter;
import lombok.RequiredArgsConstructor;
import lombok.Setter;

@Getter @Setter
@RequiredArgsConstructor
public class MemberVO {
	private String name;
	private String id;
	private String email;
	private String password;
	private String tel;


}
