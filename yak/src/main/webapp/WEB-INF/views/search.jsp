<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>약팔이</title>
<jsp:include page="navbar.jsp" />
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
		<form>
			<div class="inner-form">
				<div class="basic-search">
					<div class="input-field">
						<input id="search" type="text" placeholder="제품명을 입력하세요 " />
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
								<select data-trigger="" name="choices-single-defaul">
									<option placeholder="" value="">선택하세요</option>
									<option>전체</option>
									<option>주사</option>
									<option>경구</option>
									<option>코</option>
									<option>항문</option>
									<option>기타</option>
								</select>
							</div>
						</div>
						<div class="input-field">
							<p style="padding-left: 10px">제형</p>
							<div class="input-select">
								<select data-trigger="" name="choices-single-defaul">
									<option placeholder="" value="">선택하세요</option>
									<option>전체</option>
									<option>가글</option>
									<option>시럽</option>
									<option>연고</option>
									<option>기타</option>
								</select>
							</div>
						</div>
						<div class="input-field">
							<p style="padding-left: 10px">식약처분류</p>
							<div class="input-select">
								<select data-trigger="" name="choices-single-defaul">
									<option placeholder="" value="">선택하세요</option>
									<option>신경계감각기관용</option>
									<option>개개의 기관계용</option>
									<option>대사성</option>
									<option>항병원생물성</option>
									<option>치료를 주목적으로 하지 않는 의약품</option>
									<option>마약</option>
								</select>
							</div>
						</div>
					</div>
					<div class="row second">
						<div class="textar">
							<p style="padding-left: 10px">회사명</p>
							<div class="textb">
								<input type="text">
							</div>
						</div>
						<div class="textar">
							<p style="padding-left: 10px">약품효과</p>
							<div class="textb">
								<input type="text">
							</div>
						</div>
						<div class="textar">
							<p style="padding-left: 10px">약품코드</p>
							<div class="textb">
								<input type="text">
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
								<button class="btn-search">SEARCH</button>
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