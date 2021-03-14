package com.scit.ekuru.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.scit.ekuru.vo.ChargePointVO;
import com.scit.ekuru.vo.ChatVO;
import com.scit.ekuru.vo.PointProductVO;
import com.scit.ekuru.vo.PointVO;
import com.scit.ekuru.vo.UserVO;


@Repository
public class UserDAO {

	@Autowired
	private SqlSession session;

	public int insertUser(UserVO vo) {
		int cnt = 0;
		try {
			UserMapper mapper = session.getMapper(UserMapper.class);
			cnt = mapper.insertUser(vo);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return cnt;
	}

	public UserVO loginUser(UserVO vo) {
		UserVO Uservo = null;
		try {
			UserMapper mapper = session.getMapper(UserMapper.class);
			Uservo = mapper.loginUser(vo);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return Uservo;
	}

	public UserVO selectUser(String id) {
		UserVO Uservo = null;
		try {
			UserMapper mapper = session.getMapper(UserMapper.class);
			Uservo = mapper.selectUser(id);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return Uservo;
	}

	public int modifyUser(UserVO vo) {
		int count = 0;
		try {
			UserMapper mapper = session.getMapper(UserMapper.class);
			count = mapper.modifyUser(vo);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return count;
	}

	public ArrayList<HashMap<String, Object>> selectPoint(String id) {
		ArrayList<HashMap<String, Object>> vo = null;
		try {
			UserMapper mapper = session.getMapper(UserMapper.class);
			vo = mapper.selectPoint(id);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return vo;
	}

	public ArrayList<HashMap<String, Object>> selectCart(String id){
		ArrayList<HashMap<String, Object>> vo = null;
		try {
			UserMapper mapper = session.getMapper(UserMapper.class);
			vo = mapper.selectCart(id);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return vo;
	}

	public ArrayList<HashMap<Object, Object>> selectChatRoom(ChatVO vo){
		ArrayList<HashMap<Object, Object>> list = null;
		try {
			UserMapper mapper = session.getMapper(UserMapper.class);
			list = mapper.selectChatRoom(vo);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public ChatVO selectChat(int chatNum){
		ChatVO vo = null;
		try {
			UserMapper mapper = session.getMapper(UserMapper.class);
			vo = mapper.selectChat(chatNum);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return vo;
	}

	public int modifyAuthkey(UserVO vo) {
		int count = 0;
		try {
			UserMapper mapper = session.getMapper(UserMapper.class);
			count = mapper.modifyAuthkey(vo);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return count;
	}

	public int updateConfirm(UserVO vo) {
		int count = 0;
		try {
			UserMapper mapper = session.getMapper(UserMapper.class);
			count = mapper.updateConfirm(vo);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return count;
	}

	// 포인트 상품 조회
	public PointProductVO selectPointPricing(int pointProdNum) {
		PointProductVO pvo = null;

		try {
			UserMapper mapper = session.getMapper(UserMapper.class);
			pvo = mapper.selectPointPricing(pointProdNum);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return pvo;
	}

	// 회원 포인트 수정
	public int updatePoint(UserVO vo) {
		int cnt = 0;

		try {
			UserMapper mapper = session.getMapper(UserMapper.class);
			cnt = mapper.updatePoint(vo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return cnt;
	}

	// 포인트 충전 내역 기록
	public int insertPoint(PointVO vo) {
		int cnt = 0;

		try {
			UserMapper mapper = session.getMapper(UserMapper.class);
			cnt = mapper.insertPoint(vo);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return cnt;
	}

	public int updateChat(ChatVO vo) {
		int cnt = 0;

		try {
			UserMapper mapper = session.getMapper(UserMapper.class);
			cnt = mapper.updateChat(vo);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return cnt;

	}

	public ChatVO selectChUser1(String id) {
		ChatVO vo = null;
		try {
			UserMapper mapper = session.getMapper(UserMapper.class);
			vo = mapper.selectChUser1(id);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return vo;
	}

	public ChatVO selectChUser2(String id) {
		ChatVO vo = null;
		try {
			UserMapper mapper = session.getMapper(UserMapper.class);
			vo = mapper.selectChUser2(id);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return vo;
	}

	public ArrayList<HashMap<String, Object>> dealHistory(String userId) {
		ArrayList<HashMap<String, Object>> result = null;
		try {
			UserMapper mapper = session.getMapper(UserMapper.class);
			result = mapper.dealHistory(userId);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return result;
	
	public ArrayList<HashMap<Object, Object>> selectProdList(){
		ArrayList<HashMap<Object, Object>> list = null;
		try {
			UserMapper mapper = session.getMapper(UserMapper.class);
			list = mapper.selectProdList();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}
