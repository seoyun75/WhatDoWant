package com.example.demo.product;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
public class BootpaySqlMapConfig {
		
//	private SqlSessionFactory sqlSessionFactory;
//	
//	public SqlSessionFactory getSqlSessionFactory() {
//		
//		String resource = "com/agenda/donation/dnConfig.xml";
//		Reader reader = null;
//		
//		try {
//			reader = Resources.getResourceAsReader(resource);
//			sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader);
//		} catch (IOException e) {
//			e.printStackTrace();
//		} finally {
//			
//		}
//			try {
//				reader.close();
//			} catch (IOException e) {
//				e.printStackTrace();
//			}
//			
//			return sqlSessionFactory;
//	}
//	
}