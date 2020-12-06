package com.km.yak.service;

import com.km.yak.util.AuthInfo;
import com.km.yak.util.LoginCommand;
import com.km.yak.util.RegisterRequest;
import com.km.yak.vo.DrugVO;
import com.km.yak.vo.FavoriteVO;
import com.km.yak.vo.MemberVO;



public interface MemberService {
	void register(RegisterRequest regReq) throws Exception;
	AuthInfo loginAuth(LoginCommand loginCommand) throws Exception;
	void favoriteAdd(FavoriteVO vo) throws Exception;
	MemberVO selectMember(String id);
	void getVisitTodayCount() throws Exception;
}
