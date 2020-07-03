package com.km.yak.DAO;

import java.util.List;
import java.util.Map;

import com.km.yak.vo.DrugVO;

public interface DrugDAO {
	// 05. 게시글 전체 목록 ==> 검색옵션, 키워드 매개변수 추가
	public List<DrugVO> listAll(String keyword, String searchOption1, String searchOption2, String searchOption3, String keyword1,
            String keyword2, String keyword3) throws Exception;
	// 07. 게시글 레코드 갯수 메서드 추가
	public int countArticle(String keyword, String searchOption1, String searchOption2, String searchOption3, String keyword1,
            String keyword2, String keyword3) throws Exception;
	public DrugVO drugDetail(String name) throws Exception;
	public void updateHitDrug(String name) throws Exception;
	public List<DrugVO> drugRank() throws Exception;
}
