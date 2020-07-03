package com.km.yak.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.km.yak.service.DrugService;
import com.km.yak.util.CommandMap;
import com.km.yak.vo.DrugVO;



@Controller
public class DrugController {
	
	// 의존관계 주입 => BoardServiceImpl 생성
    // IoC 의존관계 역전
    @Inject
    DrugService drugService;
	
    @RequestMapping("/drug")
	public ModelAndView list(@RequestParam(defaultValue="") String keyword,
							 @RequestParam(defaultValue="") String searchOption1,
							 @RequestParam(defaultValue="") String searchOption2,
							 @RequestParam(defaultValue="") String searchOption3,
	                        @RequestParam(defaultValue="") String keyword1,
	                        @RequestParam(defaultValue="") String keyword2,
	                        @RequestParam(defaultValue="") String keyword3) throws Exception{
	    List<DrugVO> list = drugService.listAll(keyword, searchOption1, searchOption2, searchOption3, keyword1, keyword2,
	    		keyword3);
	    // 레코드의 갯수
	    int count = drugService.countArticle(keyword, searchOption1, searchOption2, searchOption3, keyword1, keyword2,
	    		keyword3);
	    // ModelAndView - 모델과 뷰
	    ModelAndView mav = new ModelAndView();
	    /*mav.addObject("list", list); // 데이터를 저장
	    mav.addObject("count", count);
	    mav.addObject("searchOption", searchOption);
	    mav.addObject("keyword", keyword);*/
	    // 데이터를 맵에 저장
	    Map<String, Object> map = new HashMap<String, Object>();
	    map.put("list", list); // list
	    map.put("count", count); // 레코드의 갯수
	    map.put("keyword", keyword);
	    map.put("searchOption1", searchOption1); // 검색옵션
	    map.put("searchOption2", searchOption2);// 검색키워드
	    map.put("searchOption3", searchOption3);
	    map.put("keyword1", keyword1);
	    map.put("keyword2", keyword2);
	    map.put("keyword3", keyword3);
	    mav.addObject("map", map); // 맵에 저장된 데이터를 mav에 저장
	    mav.setViewName("search_drug"); // 뷰를 list.jsp로 설정
	    return mav; // list.jsp로 List가 전달된다.
	}
    
    @RequestMapping(value="/drugDetail", method=RequestMethod.GET)
    public ModelAndView boardDetail(@RequestParam(defaultValue="") String drug_name) throws Exception {
        
    	ModelAndView mv = new ModelAndView();
    	
    	System.out.println(drug_name);
    	mv.setViewName("detail_drug");
    	mv.addObject("map",drugService.drugDetail(drug_name));
    	return mv;

        
        
        
    }
    

}
