<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>약팔이</title>
<meta charset="utf-8">
<jsp:include page="navbar.jsp" />
<link rel="stylesheet" type="text/css" href="resources/styles/services.css">
<link rel="stylesheet" type="text/css" href="resources/styles/services_responsive.css">
</head>
<link href="https://fonts.googleapis.com/css?family=Poppins:400,600,700"
	rel="stylesheet" />
<link href="resources/css/search.css" rel="stylesheet" />
<script type="text/javascript">

    function oneCheckbox(a){
        var obj = document.getElementsByName("ck");
        for(var i=0; i<obj.length; i++){
            if(obj[i] != a){
                obj[i].checked = false;
            }
        }
    }
</script>

</head>
<body>
	<div class="s010"  style="padding: 200px">
		<form name="form1" method="post" action="drug">
			<div class="inner-form">
				<div class="basic-search">
					<div class="input-field">
						<input id="search" type="text" name="keyword" placeholder="제품명을 입력하세요 " value="${map.keyword}">
						<div class="icon-wrap">
							<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
								viewBox="0 0 24 24">
                  <path
									d="M15.5 14h-.79l-.28-.27C15.41 12.59 16 11.11 16 9.5 16 5.91 13.09 3 9.5 3S3 5.91 3 9.5 5.91 16 9.5 16c1.61 0 3.09-.59 4.23-1.57l.27.28v.79l5 4.99L20.49 19l-4.99-5zm-6 0C7.01 14 5 11.99 5 9.5S7.01 5 9.5 5 14 7.01 14 9.5 11.99 14 9.5 14z"></path>
                </svg>
						</div>
					</div>
				</div>
				<div class="advance-search">
					<span class="desc">검색 조건</span>
					<div class="row">
						<div class="input-field">
							<p style="padding-left: 10px">투여경로</p>
							<div class="input-select">
								<select name="searchOption1" data-trigger="" name="choices-single-defaul">
									<option placeholder="" value="">선택하세요</option>
									<option value="all" <c:out value="${map.searchOption1 == 'all'?'selected':''}"/> >전체</option>
									<option value="주사" <c:out value="${map.searchOption1 == '주사'?'selected':''}"/> >주사</option>
            						<option value="경구" <c:out value="${map.searchOption1 == '경구'?'selected':''}"/> >경구</option>
            						<option value="코" <c:out value="${map.searchOption1 == '코'?'selected':''}"/> >코</option>
            						<option value="항문" <c:out value="${map.searchOption1 == '항문'?'selected':''}"/> >항문</option>
									<option value="기타" <c:out value="${map.searchOption1 == '기타'?'selected':''}"/> >기타</option>
								</select>
							</div>
						</div>
						<div class="input-field">
							<p style="padding-left: 10px">제형</p>
							<div class="input-select">
								<select name="searchOption2" data-trigger="" name="choices-single-defaul">
									<option placeholder="" value="">선택하세요</option>
									<option value="all" <c:out value="${map.searchOption2 == 'all'?'selected':''}"/> >전체</option>
            						<option value="가글" <c:out value="${map.searchOption2 == '가글'?'selected':''}"/> >가글</option>
            						<option value="시럽" <c:out value="${map.searchOption2 == '시럽'?'selected':''}"/> >시럽</option>
            						<option value="연고" <c:out value="${map.searchOption2 == '연고'?'selected':''}"/> >연고</option>
									<option value="기타" <c:out value="${map.searchOption2 == '기타'?'selected':''}"/> >기타</option>
								</select>
							</div>
						</div>
						<div class="input-field">
							<p style="padding-left: 10px">식약처분류</p>
							<div class="input-select">
								<select name="searchOption3" data-trigger="" name="choices-single-defaul">
									<option placeholder="" value="">선택하세요</option>
									<option value="all" <c:out value="${map.searchOption3 == 'all'?'selected':''}"/> >전체</option>
            						<option value="신경계감각기관용" <c:out value="${map.searchOption3 == '신경계감각기관용'?'selected':''}"/> >신경계감각기관용</option>
            						<option value="개개의 기관계용" <c:out value="${map.searchOption3 == '개개의 기관계용'?'selected':''}"/> >개개의 기관계용</option>
            						<option value="대사성" <c:out value="${map.searchOption3 == '대사성'?'selected':''}"/> >대사성</option>
									<option value="항병원생물성" <c:out value="${map.searchOption3 == '항병원생물성'?'selected':''}"/> >항병원생물성</option>
									<option value="치료를 주목적으로 하지 않는 의약품" <c:out value="${map.searchOption3 == '치료를 주목적으로 하지 않는 의약품'?'selected':''}"/> >치료를 주목적으로 하지 않는 의약품</option>
									<option value="기타" <c:out value="${map.searchOption3 == '기타'?'selected':''}"/> >기타</option>
								</select>
							</div>
						</div>
					</div>
					<div class="row second">
						<div class="textar">
							<p style="padding-left: 10px">회사명</p>
							<div class="textb">
								<input type="text" name="keyword1" value="${map.keyword1}">
							</div>
						</div>
						<div class="textar">
							<p style="padding-left: 10px">약품효과</p>
							<div class="textb">
								<input type="text" name="keyword2" value="${map.keyword2}">
							</div>
						</div>
						<div class="textar">
							<p style="padding-left: 10px">약품코드</p>
							<div class="textb">
								<input type="text" name="keyword3" value="${map.keyword3}">
							</div>
						</div>
					</div>
					<div class="row ckbox">
						<div>
						<p>단일/복합</p>
								<input type="checkbox" id="check_test_box1" name="ck" onclick="oneCheckbox(this)" /> <label
									for="check_test_box1">전체
								</label>
								<input type="checkbox" id="check_test_box2" name="ck" onclick="oneCheckbox(this)" /> <label
									for="check_test_box2">단일
								</label>
								<input type="checkbox" id="check_test_box3" name="ck" onclick="oneCheckbox(this)"/> <label
									for="check_test_box3">복합
								</label>
							</div>
						</div>
					<div class="row third">
						<div class="input-field">
							<div class="result-count">
								<span>108 </span>results
							</div>
							
							<div class="group-btn">
								<button class="btn-delete" id="delete">RESET</button>
								<button type="submit" class="btn-search">SEARCH</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>
		
		
	</div>
	<jsp:include page="footer.jsp" />
	<script src="resources/js/extention/choices.js"></script>
	<script>
		const customSelects = document.querySelectorAll("select");
		const deleteBtn = document.getElementById('delete')
		const choices = new Choices('select', {
			searchEnabled : false,
			itemSelectText : '',
			removeItemButton : true,
		});
		for (let i = 0; i < customSelects.length; i++) {
			customSelects[i].addEventListener('addItem', function(event) {
				if (event.detail.value) {
					let parent = this.parentNode.parentNode
					parent.classList.add('valid')
					parent.classList.remove('invalid')
				} else {
					let parent = this.parentNode.parentNode
					parent.classList.add('invalid')
					parent.classList.remove('valid')
				}
			}, false);
		}
		deleteBtn.addEventListener("click", function(e) {
			e.preventDefault()
			const deleteAll = document.querySelectorAll('.choices__button')
			for (let i = 0; i < deleteAll.length; i++) {
				deleteAll[i].click();
			}
		});
	</script>

</body>
</html>