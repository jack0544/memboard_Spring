package com.icia.mbp.service;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;


import com.icia.mbp.dao.BDAO;
import com.icia.mbp.dao.CDAO;
import com.icia.mbp.dto.BOARD;
import com.icia.mbp.dto.MEMBER;
import com.icia.mbp.dto.PAGE;

@Service
public class BService {

	ModelAndView mav = new ModelAndView();

	// session 추가
	@Autowired
	private HttpSession session;

	//
	@Autowired
	private HttpServletRequest request;

	@Autowired
	private BDAO bdao;

	@Autowired
	private CDAO cdao;

	public ModelAndView bWrite(BOARD board) throws IllegalStateException, IOException {

		System.out.println("[2] controller → service \n board : " + board);

		// [1] 파일업로드
		// - 파일 이름 생성
		// - (식별자 uuid + 파일원래 이름)
		// - profile 폴더 생성 후 업로드

		MultipartFile boFile = board.getBoFile();

		UUID uuid = UUID.randomUUID();

		String boFileName = uuid.toString().substring(0, 8) + "_" + boFile.getOriginalFilename();

//					String savePath = "C:\\Users\\user\\Documents\\workspace-sts-3.9.18.RELEASE\\MEMBOARD\\src\\main\\webapp\\resources\\profile\\";
		String savePath = request.getServletContext().getRealPath("/resources/FileUpload/");

		if (!boFile.isEmpty()) {
			boFile.transferTo(new File(savePath + boFileName));
			board.setBoFileName(boFileName);

		} else {
			board.setBoFileName("사진없음");
		}

		System.out.println("uuid 확인 : " + uuid.toString().substring(0, 8));

		int result = bdao.bWrite(board);

		if (result > 0) {
			mav.setViewName("index");
		} else {
			mav.setViewName("B_Write");
		}

		System.out.println("[4] dao -> service \n  board " + board);
		
		return mav;
	}

	public ModelAndView bList(int page, int limit) {
		System.out.println("[2] controller → service \n page : " + page);

		// 한 화면에 보여줄 페이지 번호 개수
		int block = 5;

		// 한 화면에 보여줄 게시글 개수
//		limit = 5;

		// 전체 게시글 개수 : 7
		int bCount = bdao.bCount();

		int startRow = (page - 1) * limit + 1;
		int endRow = page * limit;

		// Math.ceil() -> 소숫점 올림
		int maxPage = (int) (Math.ceil((double) bCount / limit));
		int startPage = (((int) (Math.ceil((double) page / block))) - 1) * block + 1;
		int endPage = startPage + block - 1;

		if (endPage > maxPage) {
			endPage = maxPage;
		}

		// 페이징 객체 생성
		PAGE paging = new PAGE();

		paging.setPage(page);
		paging.setStartRow(startRow);
		paging.setEndRow(endRow);
		paging.setMaxpage(maxPage);
		paging.setStartpage(startPage);
		paging.setEndpage(endPage);
		paging.setLimit(limit);

		List<BOARD> BoardList = bdao.bList(paging);

		// model
		mav.addObject("BoardList", BoardList);
		mav.addObject("paging", paging);
		
		// view
		mav.setViewName("B_List");
		
		return mav;
	}

	public ModelAndView bView(int boNum) {
		
		
		
		System.out.println("[2] controller → service \n boNum : " + boNum);
		
		BOARD board = bdao.bView(boNum);
		
		
		
		mav.setViewName("B_View");
		mav.addObject("board", board);
		
		System.out.println("[4] dao → service \n board : " + board);
		
		return mav;
	}
	
	public ModelAndView bModifyForm(int boNum) {
		System.out.println("[2] controller �� service");

		BOARD board = bdao.bView(boNum);

		// Model
		mav.addObject("modify", board);

		// View
		mav.setViewName("B_Modify");

		return mav;
	}

	public ModelAndView bModify(BOARD board) throws IllegalStateException, IOException {

		System.out.println("[2] controller → service \n board : " + board);

		// [1] 파일업로드
		// - 파일 이름 생성
		// - (식별자 uuid + 파일원래 이름)
		// - profile 폴더 생성 후 업로드

		MultipartFile boFile = board.getBoFile();

		UUID uuid = UUID.randomUUID();

		String boFileName = uuid.toString().substring(0, 8) + "_" + boFile.getOriginalFilename();

//					String savePath = "C:\\Users\\user\\Documents\\workspace-sts-3.9.18.RELEASE\\MEMBOARD\\src\\main\\webapp\\resources\\profile\\";
		String savePath = request.getServletContext().getRealPath("/resources/FileUpload/");

		if (!boFile.isEmpty()) {
			boFile.transferTo(new File(savePath + boFileName));
			board.setBoFileName(boFileName);

		}

		System.out.println("uuid 확인 : " + uuid.toString().substring(0, 8));

		int result = bdao.bModify(board);

		if (result > 0) {
			mav.setViewName("redirect:/bView?boNum=" + board.getBoNum());
		} else {
			mav.setViewName("redirect:/bList");
		}

		System.out.println("[4] dao -> service \n  board " + board);
		
		return mav;
	}

	public ModelAndView bDelete(int boNum) {
		
		int cbNum = boNum;
		
		int result1 = cdao.cmtDelete1(cbNum);

		int result = bdao.bDelete(boNum);

		

		if (result > 0 && result1 > 0) {
			mav.setViewName("redirect:/bList");
		} else {
			mav.setViewName("redirect:/bView?boNum=" + boNum);
		}

		return mav;
	}

	}


