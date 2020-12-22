package com.km.yak.DAO;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.km.yak.vo.BannerVO;



@Repository("bannerDAO")
public class BannerDAO {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public List<BannerVO> bannerSearch() throws Exception{
		return sqlSession.selectList("banner.bannerGet");
	}
	
	public List<BannerVO> bannerSearch_s() throws Exception{
		return sqlSession.selectList("banner.banner_search");
	}
}
