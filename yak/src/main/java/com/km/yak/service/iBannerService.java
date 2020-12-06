package com.km.yak.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.km.yak.DAO.BannerDAO;
import com.km.yak.vo.BannerVO;

@Service("bannerService")
public class iBannerService implements BannerService{
	@Resource(name="bannerDAO")
    private BannerDAO bannerDAO;
	
	@Override
	public List<BannerVO> getBanner() throws Exception{
		return bannerDAO.bannerSearch();
	}
}
