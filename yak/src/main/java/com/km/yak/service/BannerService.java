package com.km.yak.service;

import java.util.List;

import com.km.yak.vo.BannerVO;

public interface BannerService {
	List<BannerVO> getBanner() throws Exception;
	List<BannerVO> getBanner_s() throws Exception;
}
