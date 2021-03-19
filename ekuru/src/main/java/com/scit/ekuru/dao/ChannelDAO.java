package com.scit.ekuru.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.scit.ekuru.vo.ChannelVO;
import com.scit.ekuru.vo.ProductCommentVO;
import com.scit.ekuru.vo.ProductVO;
import com.scit.ekuru.vo.categoryVO;

@Repository
public class ChannelDAO {

	@Autowired
	private SqlSession session;

	public ArrayList<ChannelVO> getListAll() {
		ArrayList<ChannelVO> list = null;
		try {
			ChannelMapper mapper = session.getMapper(ChannelMapper.class);
			list = mapper.getListAll();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public ChannelVO chRead(String chId) {

		ChannelVO list = null;

		try {
			ChannelMapper mapper = session.getMapper(ChannelMapper.class);
			list = mapper.chRead(chId);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}

	public ArrayList<ProductVO> getProdList(String chId) {
		ArrayList<ProductVO> list = null;

		try {
			ChannelMapper mapper = session.getMapper(ChannelMapper.class);
			list = mapper.getProdList(chId);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}

	public ProductVO getProdEach(ProductVO prodVo) {
		ProductVO list = null;

		try {
			ChannelMapper mapper = session.getMapper(ChannelMapper.class);
			list = mapper.getProdEach(prodVo);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}

	public void ch_posters_Write(ProductVO vo) {

		try {
			ChannelMapper mapper = session.getMapper(ChannelMapper.class);
			mapper.ch_posters_Write(vo);
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

//	상품 삭제
	public boolean prodDelete(int prodNum) {
		boolean check = false;
		try {
			ChannelMapper mapper = session.getMapper(ChannelMapper.class);
			check = mapper.prodDelete(prodNum);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return check;

	}

	public ArrayList<ProductCommentVO> getProdComment(int prodNum) {
		ArrayList<ProductCommentVO> commentResult = null;
		try {
			ChannelMapper mapper = session.getMapper(ChannelMapper.class);
			commentResult = mapper.getProdComment(prodNum);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return commentResult;

	}

	public String getUserType(String userId) {
		String userResult = null;
		try {
			ChannelMapper mapper = session.getMapper(ChannelMapper.class);
			userResult = mapper.getUserType(userId);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return userResult;

	}

//	상품 댓글 추가
	public int addComment(ProductCommentVO commentVo) {
		int prodCommentNum = -1;
		try {
			ChannelMapper mapper = session.getMapper(ChannelMapper.class);
			prodCommentNum = mapper.addComment(commentVo);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return prodCommentNum;
	}

	public ArrayList<ChannelVO> chCategoryResult(int categoryCode) {
		ArrayList<ChannelVO> result = null;
		try {
			ChannelMapper mapper = session.getMapper(ChannelMapper.class);
			result = mapper.chCategoryResult(categoryCode);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	public ArrayList<ChannelVO> chSearch(String search) {
		ArrayList<ChannelVO> result = null;
		try {
			ChannelMapper mapper = session.getMapper(ChannelMapper.class);
			result = mapper.chSearch(search);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	public categoryVO getCategory(ProductVO prodVo) {
		categoryVO result = null;
		try {
			ChannelMapper mapper = session.getMapper(ChannelMapper.class);
			result = mapper.getCategory(prodVo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	public boolean contentModify(ProductVO vo) {
		boolean check = false;
		try {
			ChannelMapper mapper = session.getMapper(ChannelMapper.class);
			check = mapper.contentModify(vo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return check;
	}

	public boolean chModify(ChannelVO vo) {
		boolean check = false;
		try {
			ChannelMapper mapper = session.getMapper(ChannelMapper.class);
			check = mapper.chModify(vo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return check;
	}
	
	public ArrayList<ChannelVO> selectChAd(){
		ArrayList<ChannelVO> list = null;
		
		try {
			ChannelMapper mapper = session.getMapper(ChannelMapper.class);
			list = mapper.selectChAd();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}

}
