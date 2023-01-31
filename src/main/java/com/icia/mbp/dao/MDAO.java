package com.icia.mbp.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.icia.mbp.dto.MEMBER;
import com.icia.mbp.dto.PAGE;
import com.icia.mbp.dto.SEARCH;



@Repository
public class MDAO {

	// sql(mapper)로 연결
	@Autowired
	private SqlSessionTemplate sql;
	
	public String mCheckId(String memId) {

		return sql.selectOne("Member.mCheckId", memId);
	}

	public int mJoin(MEMBER member) {
		
		return sql.insert("Member.mJoin", member);
	}

	public String mLogin(MEMBER member) {
		
		return sql.selectOne("Member.mLogin", member);
	}



	public int mCount() {
		
		return sql.selectOne("Member.mCount");
	}

	public List<MEMBER> mList(PAGE paging) {
		

		
		return sql.selectList("Member.mList" , paging);
	}

	public List<MEMBER> mSearch(SEARCH search) {
//		if(search.getCategory().equals("MEMNAME")) {
//			return sql.selectList("Member.mSearchName", search);
//			
//		} else if(search.getCategory().equals("MEMID")) {
//			
//			return sql.selectList("Member.mSearchId", search);
//		} else {
//			
//			return sql.selectList("Member.mSearchPhone", search);
//		}
		
		System.out.println("service -> dao \n search : " + search);
		
		return sql.selectList("Member.mSearch", search);
	}

	public MEMBER mView(String memId) {
		
		return sql.selectOne("Member.mView", memId);
	}

	public int mModify(MEMBER member) {
		
		return sql.update("Member.mModify" , member);
	}

	public int mDelete(String memId) {
	
		return sql.delete("Member.mDelete", memId);
	}

}
