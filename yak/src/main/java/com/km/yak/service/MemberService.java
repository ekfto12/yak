package com.km.yak.service;

import com.km.yak.util.AuthInfo;
import com.km.yak.util.LoginCommand;
import com.km.yak.util.RegisterRequest;



public interface MemberService {
	void register(RegisterRequest regReq) throws Exception;
	AuthInfo loginAuth(LoginCommand loginCommand) throws Exception;
}
