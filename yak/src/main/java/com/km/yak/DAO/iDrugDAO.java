package com.km.yak.DAO;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.km.yak.vo.DrugVO;

@Repository
public class iDrugDAO implements DrugDAO{
	@Inject
    SqlSession SqlSession;

	// 05. 게시글 전체 목록
	@Override
	public List<DrugVO> listAll(String keyword,String searchOption1, String searchOption2, String searchOption3, String keyword1,
            String keyword2, String keyword3) throws Exception {
	    // 검색옵션, 키워드 맵에 저장
	    Map<String, String> map = new HashMap<String, String>();
	    map.put("keyword", keyword);
	    map.put("searchOption1", searchOption1); 
	    map.put("searchOption2", searchOption2);
	    map.put("searchOption3", searchOption3);
	    map.put("keyword1", keyword1);
	    map.put("keyword2", keyword2);
	    map.put("keyword3", keyword3);
	    return SqlSession.selectList("drug.listAll", map);
	}
	// 07. 게시글 레코드 갯수
	@Override
	public int countArticle(String keyword, String searchOption1, String searchOption2, String searchOption3, String keyword1,
            String keyword2, String keyword3) throws Exception {
	    // 검색옵션, 키워드 맵에 저장
	    Map<String, String> map = new HashMap<String, String>();
	    map.put("keyword", keyword);
	    map.put("searchOption1", searchOption1);
	    map.put("searchOption2", searchOption2);
	    map.put("searchOption3", searchOption3);
	    map.put("keyword1", keyword1);
	    map.put("keyword2", keyword2);
	    map.put("keyword3", keyword3);
	    return SqlSession.selectOne("drug.countArticle", map);
	}
	
	@Override
	public DrugVO drugDetail(String name) throws Exception{
        // TODO Auto-generated method stub
        return SqlSession.selectOne("drug.drugDetail", name);
    }
	@Override
	public void updateHitDrug(String name) throws Exception{
        // TODO Auto-generated method stub
		SqlSession.update("drug.updateHitDrug", name);
    }
	
	@Override
	public List<DrugVO> drugRank() throws Exception{
		return  SqlSession.selectList("drug.drugRank");
	}
	
	@Override
	public List<DrugVO> favorite(String id) throws Exception{
		return  SqlSession.selectList("drug.favorite", id);
	}
	
	

}
