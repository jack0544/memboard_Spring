package com.icia.mbp.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.icia.mbp.dto.BOARD;
import com.icia.mbp.dto.PAGE;

@Repository
public class BDAO {

	// sql(mapper)로 연결
	@Autowired
	private SqlSessionTemplate sql;
	
	public int bWrite(BOARD board) {
		System.out.println("[3] service -> dao \n  board " + board);
		return sql.insert("Board.bWrite", board);
	}
	
	public int bCount() {
		
		return sql.selectOne("Board.bCount");
	}

	public List<BOARD> bList(PAGE paging) {
		
		return sql.selectList("Board.bList" , paging);
	}

	public BOARD bView(int boNum) {
		
		sql.update("Board.boHit", boNum);
		return sql.selectOne("Board.bView", boNum);
	}
	
	public int bModify(BOARD board) {
		
		
		return sql.update("Board.bModify", board);
	}

	public int bDelete(int boNum) {
		
		return sql.delete("Board.bDelete", boNum);
	}





}
