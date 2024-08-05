package com.al.biz;

import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class SqlSessionFactoryBean {

	private static SqlSessionFactory sessionFactory = null;
	
	static {
		try {
			if(sessionFactory ==null) { // 생성이 안됐을때의 어쩌구를 싱글톤을 생성
				Reader reader = Resources.getResourceAsReader("sql-map-config.xml"); // 문자열을 읽어오는 reader ==> 값을 읽어온다
				
				sessionFactory = new SqlSessionFactoryBuilder().build(reader);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public static SqlSession getSqlSessionInstance() {
		
		return sessionFactory.openSession();
	}
}
