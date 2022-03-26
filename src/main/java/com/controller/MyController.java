package com.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.biz.MemberBiz;
import com.vo.MemberVO;

@Controller
public class MyController {

	@Autowired
	private MemberBiz biz;

	@RequestMapping("join.do")
	public String join() {
		System.out.println("회원가입화면");
		return "join";
	}

	@PostMapping(value="afterjoin.do")
	public ModelAndView afterjoin(MemberVO vo, HttpSession session) {
		System.out.println("회원가입컨트롤러");
		int e = biz.existMember(vo.getId());
		int r =0;
		if(e==0) {
			r=biz.insertMember(vo);
			session.setAttribute("loginid", vo.getId());
			System.out.println(r + " 가입시켜줄게");
		}else {
			System.out.println(r + " 이미존재하는 아이디");
		}
		return new ModelAndView("result","r",r);
	}

	
	@GetMapping("index.do")
	public ModelAndView loginMain() {
		System.out.println("회원가입 및 로그인 완료 후 메인으로");
		ModelAndView view = new ModelAndView();
		view.setViewName("index");
		return view;
	}

	@RequestMapping("login.do")
	public String login() {
		System.out.println("로그인화면");
		return "login";
	}

	@PostMapping("afterlogin.do")
	public String listMember(@RequestParam("id") String id, @RequestParam("pw") String pw, HttpSession session) {
		
		System.out.println("로그인 체크 컨트롤러");
		String str = null;
		MemberVO vo = new MemberVO();
		vo = biz.checkLogin(id, pw);

		
		if (vo!=null) {
			System.out.println("로그인 성공!");
			session.setAttribute("loginname", vo.getName());
			session.setAttribute("loginid", vo.getId());
			session.setAttribute("email", vo.getEmail());
			session.setAttribute("password", vo.getPassword());
			String tel2 = vo.getTel().substring(3, 7);
			String tel3 = vo.getTel().substring(7,11);
			session.setAttribute("tel2", tel2);
			session.setAttribute("tel3", tel3);
			
			str = "index";
		} else {
			System.out.println("로그인 실패!");
			str = "alert";
		}

		return str;
	}

	@PostMapping(value = "/findpw.do")
	public ModelAndView findPw(@RequestParam("pid") String id, @RequestParam("pemail") String email) {
		System.out.println("비밀번호찾기컨트롤러");
		String pw = biz.findPw(id, email);
		System.out.println(pw);
		return new ModelAndView("result", "str", pw);
	}

	@PostMapping(value = "/findid.do")
	public ModelAndView findId(@RequestParam("iname") String name, @RequestParam("iemail") String email) {
		System.out.println("아이디찾기컨트롤러");
		String id = biz.findId(name, email);
		System.out.println(id);
		// ajax로 alert 띄워보자!
		return new ModelAndView("result", "str", id);
	}
	
	@RequestMapping("logout.do")
	public ModelAndView logout(HttpSession session) {
		session.invalidate();
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/");
		return mav;
	}
	
	@RequestMapping("board.do")
	public String goBoard() {
		return "board";
	}
	@RequestMapping("boardform.do")
	public String boardform() {
		return "boardform";
	}
	@RequestMapping("farmer_dic.do")
	public String farmer_dic() {
		return "farmer_dic";
	}
	@RequestMapping("product_dic.do")
	public String product_dic() {
		return "product_dic";
	}
	@RequestMapping("mypage.do")
	public String mypage() {
		return "mypage";
	}
	@RequestMapping("board_sell.do")
	public String board_sell() {
		return "board_sell";
	}
	@RequestMapping("farmer_info.do")
	public String farmer_info() {
		return "farmer_info";
	}
	@RequestMapping("search.do")
	public String search() {
		return "search";
	}
	
	@PostMapping(value="aftermodify.do")
	public ModelAndView afterModify(MemberVO vo) {
		
		System.out.println("회원정보수정 컨트롤러");
		System.out.println(vo.getId());
		System.out.println(vo.getEmail());
		System.out.println(vo.getPassword());
		System.out.println(vo.getTel());
//		@RequestParam("email") String email 
//		System.out.println(email);
		int r = biz.modifyinfo(vo.getEmail(), vo.getPassword(), vo.getTel(), vo.getId());
		return new ModelAndView("result", "r", r);
	}
}
