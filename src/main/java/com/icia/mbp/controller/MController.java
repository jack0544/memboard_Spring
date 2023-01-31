package com.icia.mbp.controller;

import java.io.IOException;
import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.icia.mbp.dto.MEMBER;
import com.icia.mbp.dto.SEARCH;
import com.icia.mbp.service.MService;

@Controller
public class MController {
	// ModelAndView 객체 생성
	private ModelAndView mav = new ModelAndView();

	// MemberService 연결
	@Autowired
	private MService msvc;

	@Autowired
	private HttpSession session;

	// 프로젝트 시작페이지
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index() {
		return "index";
	}

	// 프로젝트 홈페이지
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index1() {
		return "index";
	}

	// 회원가입 홈페이지
	@RequestMapping(value = "/mJoinForm", method = RequestMethod.GET)
	public String mJoinForm() {
		return "M_Join";
	}

	// mCheckId : 아이디 중복체크
	@RequestMapping(value = "/mCheckId", method = RequestMethod.GET)
	public ModelAndView McheckId(@RequestParam("memId") String memId) {

		mav = msvc.mCheckId(memId);

		return mav;
	}

	// mJoin : 회원가입
	@RequestMapping(value = "/mJoin", method = RequestMethod.POST)
	public ModelAndView mJoin(@ModelAttribute MEMBER member) throws IllegalStateException, IOException {

		System.out.println("[1] jsp → controller \n member : " + member);

		mav.setViewName("redirect:/mJoinForm");

		mav = msvc.mJoin(member);

		return mav;
	}

	// mLoginForm
	@RequestMapping(value = "/mLoginForm", method = RequestMethod.GET)
	public String mLoginForm() {
		return "M_Login";
	}

	// mLogin
	@RequestMapping(value = "/mLogin", method = RequestMethod.POST)
	public ModelAndView mLogin(@ModelAttribute MEMBER member) throws IllegalStateException, IOException {

		System.out.println("[1] jsp → controller \n member : " + member);

		mav = msvc.mLogin(member);

		return mav;
	}

	// mLogout : 로그아웃
	@RequestMapping(value = "/mLogout", method = RequestMethod.GET)
	public String mLogout() {

		session.invalidate();

		return "index";
	}

	// mList : 페이징 처리 & 리스트
	@RequestMapping(value = "/mList", method = RequestMethod.GET)
	public ModelAndView mList(@RequestParam(value = "page", required = false, defaultValue = "1") int page,
			@RequestParam(value = "limit", required = false, defaultValue = "5") int limit) {
		// page를 필수로 가져와야 하나 -> false
		/*
		 * String page1 = request.getParameter("page"); if(page1 == null) { int page =
		 * 1; } else { int page = Integer.parseInt(page1); }
		 */

		System.out.println("[1] jsp → controller \n page : " + page);

		mav = msvc.mList(page, limit);

//			System.out.println("[5] service → controller \n mav : " + mav);

		return mav;
	}

	// mSearch : 회원검색
	@RequestMapping(value = "/mSearch", method = RequestMethod.GET)
	public ModelAndView mSearch(@ModelAttribute SEARCH search) throws IllegalStateException, IOException {

		System.out.println("[1] jsp → controller \n search : " + search);

		mav = msvc.mSearch(search);

		return mav;
	}

	// mView : 회원 상세보기
	@RequestMapping(value = "/mView", method = RequestMethod.GET)
	public ModelAndView mView(@RequestParam("memId") String memId) {

		mav = msvc.mView(memId);

		return mav;
	}

	// mModiForm : 수정
	@RequestMapping(value = "/mModiForm", method = RequestMethod.GET)
	public ModelAndView mModiForm(@RequestParam("memId") String memId) {

		mav = msvc.mModiForm(memId);

		return mav;
	}

	// mModify : 수정

	@RequestMapping(value = "/mModify", method = RequestMethod.POST)
	public ModelAndView mModify(@ModelAttribute MEMBER member) throws IllegalStateException, IOException {

		System.out.println("[1] jsp → controller \n member : " + member);

		

		mav = msvc.mModify(member);

		return mav;
	}
	
	// mDelete
	@RequestMapping(value = "/mDelete", method = RequestMethod.GET)
	public ModelAndView mDelete(@RequestParam("memId") String memId) {
		
		mav = msvc.mDelete(memId);
		
		return mav;
	}
	
	// idoverlap : 아이디 중복체크 ajax
	@RequestMapping(value = "/idoverlap", method = RequestMethod.POST)
	public @ResponseBody String idoverlap(@RequestParam("memId") String memId) {
		System.out.println("ajax로 넘어온 아이디 : " + memId);
		
		String result = msvc.idoverlap(memId);
		
		System.out.println("db에서 확인한 result메세지 : " + result);
		
		return result;
	}
	
	// mCheckEmail : 이메일 인증
	@RequestMapping(value = "/mCheckEmail", method = RequestMethod.POST)
	public @ResponseBody String mCheckEmail(@RequestParam("memEmail") String memEmail) {
		
		String uuid = msvc.mCheckEmail(memEmail);
		
		// return msvc.mCheckEmail(memEmail);
		return uuid;
	}
	
	// dashboard : 내 정보 보기 창 이동
	@RequestMapping(value = "/dashboard", method = RequestMethod.GET)
	public String dashboard() {
		return "dashboard";
	}

	// tables : 내 정보 보기 창 이동
	@RequestMapping(value = "/tables", method = RequestMethod.GET)
	public String tables() {
		return "tables";
	}

	
	
	
}
