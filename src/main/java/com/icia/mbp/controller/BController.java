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
import org.springframework.web.servlet.ModelAndView;

import com.icia.mbp.dto.BOARD;
import com.icia.mbp.service.BService;


@Controller
public class BController {
	
	
		// ModelAndView 객체 생성
		private ModelAndView mav = new ModelAndView();

		// service에 연결
		@Autowired
		private BService bsvc;
		
		@Autowired
		private HttpSession session;
	
		// bWriteForm : 게시글 작성 페이지로 이동
		@RequestMapping(value = "/bWriteForm", method = RequestMethod.GET)
		public String bWriteForm() {
			return "B_Write";
		}
		
		// bWrite : 게시글 작성
		@RequestMapping(value = "/bWrite", method = RequestMethod.POST)
		public ModelAndView bWrite(@ModelAttribute BOARD board) throws IllegalStateException, IOException {
			
			System.out.println("[1] jsp -> controller \n  board " + board);
			
			mav = bsvc.bWrite(board);
			
			System.out.println("[5] service -> controller \n  board " + board);
			
			return mav;	
		}
		
		// bList : 게시글 목록
		@RequestMapping(value = "/bList", method = RequestMethod.GET)
		public ModelAndView bList(@RequestParam(value = "page", required = false, defaultValue = "1") int page,
				@RequestParam(value = "limit", required = false, defaultValue = "5") int limit) {
			// page를 필수로 가져와야 하나 -> false
			/*
			 * String page1 = request.getParameter("page"); if(page1 == null) { int page =
			 * 1; } else { int page = Integer.parseInt(page1); }
			 */

			System.out.println("[1] jsp → controller \n page : " + page);
			
			
			
			mav = bsvc.bList(page, limit);
			
			
			
			return mav;
			
			}
			
			
			
//				System.out.println("[5] service → controller \n mav : " + mav);

		
		
		// bView : 게시글 상세보기
		@RequestMapping(value = "/bView", method = RequestMethod.GET)
		public ModelAndView bView(@RequestParam ("boNum") int boNum) throws IllegalStateException, IOException {
			
			System.out.println("[1] jsp -> controller \n  boNum " + boNum);
			
			mav = bsvc.bView(boNum);
			
			System.out.println("[5] service -> controller \n  boNum " + boNum);
			
			return mav;	
		}
		
		// bModifyForm : 
		@RequestMapping(value = "/bModifyForm", method = RequestMethod.GET)
		public ModelAndView bModifyForm(@RequestParam("boNum") int boNum) {
			

			mav = bsvc.bModifyForm(boNum);

			return mav;
		}

		// bModify :
		@RequestMapping(value = "/bModify", method = RequestMethod.POST)
		public ModelAndView bModify(@ModelAttribute BOARD board) throws IllegalStateException, IOException {
			

			mav = bsvc.bModify(board);

			return mav;
		}

		// bDelete : 
		@RequestMapping(value = "/bDelete", method = RequestMethod.GET)
		public ModelAndView bDelete(@RequestParam("boNum") int boNum) {
			
			mav = bsvc.bDelete(boNum);


			return mav;
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
}
