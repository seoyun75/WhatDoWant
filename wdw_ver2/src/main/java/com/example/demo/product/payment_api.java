package com.example.demo.product;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.example.demo.model.payment_apiVO;

public class payment_api{
	
	private String namespace="com.agenda.donation.dnMapper.";
	
	public List<payment_apiVO> selectList() {
		
		SqlSession session = null;
		List<payment_apiVO> list = null;
		
		try {
//			session = getSqlSessionFactory().openSession(false);
			list = session.selectList("com.agenda.donation.dnMapper.selectList");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return list;
	}
	
	public List<payment_apiVO> selectOne(String member_id) {
		
		SqlSession session = null;
		List<payment_apiVO> list = null;

		try {
//			session = getSqlSessionFactory().openSession(false);
			list = session.selectList(namespace+"selectOne", member_id);
			System.out.println("dao>>" + list);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
	return list;
	}
	
	public int insert(payment_apiVO dto) {
		
		SqlSession session = null;
		int res = 0;
		
		try {
//			session = getSqlSessionFactory().openSession(false);
			res = session.insert(namespace+"insert", dto);
			if(res>0) {
				session.commit();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return res;
	}

}