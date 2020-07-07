package com.km.yak.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.km.yak.DAO.MemberDAO;
import com.km.yak.exception.AlreadyExistingEmailException;
import com.km.yak.exception.AlreadyExistingIdException;
import com.km.yak.exception.IdPasswordNotMatchingException;
import com.km.yak.util.AuthInfo;
import com.km.yak.util.LoginCommand;
import com.km.yak.util.RegisterRequest;
import com.km.yak.vo.DrugVO;
import com.km.yak.vo.FavoriteVO;
import com.km.yak.vo.MemberVO;





@Service("memberService")
public class iMemberService implements MemberService{
	@Resource(name="memberDAO")
    private MemberDAO memberDAO;
	
	
	@Override
    public AuthInfo loginAuth(LoginCommand loginCommand) throws Exception {
        MemberVO member = memberDAO.selectById(loginCommand.getId());
        if(member == null) {
            throw new IdPasswordNotMatchingException();
        }
        if(!member.matchPassword(loginCommand.getPw())) {
            throw new IdPasswordNotMatchingException();
        }
        return new AuthInfo(member.getID(), member.getNAME(), member.getGRADE());
    }
	
	@Override
    public void register(RegisterRequest regReq) throws Exception {
        MemberVO email = memberDAO.selectByEmail(regReq.getEmail());
        if(email!=null) {
            throw new AlreadyExistingEmailException(regReq.getEmail()+" is duplicate email.");
        }
        MemberVO id = memberDAO.selectById(regReq.getId());
        if(id!=null) {
            throw new AlreadyExistingIdException(regReq.getId()+" is duplicate id.");
        }
        memberDAO.insertUser(regReq);
    }
	
	@Override
	public void favoriteAdd(FavoriteVO vo) throws Exception{
		memberDAO.favoriteadd(vo);
	}
	
	
}
