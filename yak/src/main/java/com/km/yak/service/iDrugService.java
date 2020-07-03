package com.km.yak.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.km.yak.DAO.DrugDAO;
import com.km.yak.vo.DrugVO;

@Service
public class iDrugService implements DrugService{
	@Inject
    DrugDAO drugDao;
	
	// 05. 게시글 전체 목록 boardDAO.listAll메서드 호출
	@Override
	public List<DrugVO> listAll(String keyword, String searchOption1, String searchOption2, String searchOption3, String keyword1,
            String keyword2, String keyword3) throws Exception {
	    return drugDao.listAll(keyword, searchOption1, searchOption2, searchOption3, keyword1, keyword2,
												keyword3);
	}
	// 07. 게시글 레코드 갯수 boardDao.countArticle메서드 
	@Override
	public int countArticle(String keyword, String searchOption1, String searchOption2, String searchOption3, String keyword1,
            String keyword2, String keyword3) throws Exception {
	    return drugDao.countArticle(keyword, searchOption1, searchOption2, searchOption3, keyword1, keyword2,
												keyword3);
	}
	
	@Override
    public DrugVO drugDetail(String name) throws Exception{
        // TODO Auto-generated method stub
		drugDao.updateHitDrug(name);
       // Map<String, Object> detail = drugDao.drugDetail(name);
        return drugDao.drugDetail(name);
    }
	
	@Override
	public List<DrugVO> drugRank() throws Exception{
		return drugDao.drugRank();
	}
}
