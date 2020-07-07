package com.km.yak.DAO;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.km.yak.util.RegisterRequest;
import com.km.yak.vo.FavoriteVO;
import com.km.yak.vo.MemberVO;




@Repository("memberDAO")
public class MemberDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public void insertUser(RegisterRequest regReq) {
		sqlSession.insert("member.register", regReq);
    }
	public MemberVO selectByEmail(String email) {
        return (MemberVO)sqlSession.selectOne("member.selectByEmail", email);
    }
 
    public MemberVO selectById(String id) {
        return (MemberVO)sqlSession.selectOne("member.selectById", id);
    }
    
    public void favoriteadd(FavoriteVO vo) {
    	sqlSession.insert("member.add", vo);
    }
}
