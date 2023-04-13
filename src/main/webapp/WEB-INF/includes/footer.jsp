<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
	crossorigin="anonymous">
	
</script>
<script src="https://code.jquery.com/jquery-3.6.4.js"
	integrity="sha256-a9jBBRygX1Bh5lt8GZjXDzyOB+bWve9EiO7tROUtj/E="
	crossorigin="anonymous"></script>
<script>
	$(document).ready(function() {
		
		var result = '<c:out value="${result}"/>';
		
		checkModea(result);
		
		history.replaceState({}, null, null);
		
		function checkModal(result) {
			
			if(result === '' || history.state) {
				return;
			}
			
			if(parseInt(result) > 0) {
				$(".modal-body").html()
				"게시글 " + parseInt(result) + " 번이 등록되었습니다.");
			}
			
			$("#myModal").modal("show");
		}
		
		$("#regBtn").on("click", function() {
			self.location ="/board/register";
		})
		
		var actionForm = $("#actionFrom");
		
		$(".parginate_button a").on("click", function(e) {
			
			e.preventDefault();
			
			console.log('click');
			
			actionForm.find("input[name='pageNum']").val($(this).attr("href"));
		});
	});
	
	$(".paginate_button a").on("click", function(e) {
		e.preventDefault();
		console.log('click');
		
		actionForm.find("input[name='pageNum']").val($(this).attr("href"));
	});
	
	
	let isFirst = true;
	let count = 0;
	var selectedClass = 'LanguageBar_full__3qQet';
	var otherClasses = '.LanguageBar_languageIcon__Um7GQ:not(.' + selectedClass	+ ')';
	
	// 필터 초기화 버튼 누르면 홈페이지 새로고침
	$('#root > section > div.SelectedLanguage_selectedWrapper__2StUQ > ul > li:last-child').click(function() {
		location.reload();
	});
	
	// 스택 아이콘 클릭 이벤트
	$('#root > section > ul.LanguageBar_languages__2Ilqf > li').click(function() {
		// 스택 아이콘을 처음 눌렀을 때 발생하는 이벤트
		if (isFirst) {
			isFirst = false;
			$('.LanguageBar_languageIcon__Um7GQ').removeClass(selectedClass).addClass('LanguageBar_transparent__3wlZf');
		}

		let $this = $(this);
		let language = $this.text();
		
		// 스택 아이콘이 눌러져 있었다면 count 를 하나 줄이고 
		// toogleLanguageBar의 Status를 inactive로 변경
		// LanguageFilter를 삭제
		if ($this.hasClass(selectedClass)) {
			count--;
			toogleLanguageBar($this, "inactive");
			removeLanguageFilter(language);
		// 그렇지 않다면 count를 늘리고 
		// toogleLanguageBar의 Status를 active로 변경,
		// languageFilter를 등록
		// 필터 초기화 버튼 보이게 하기
		} else {
			count++;
			toogleLanguageBar($this, "active");
			addLanguageFilter(language);
			
			// 필터초기화 버튼
			$('#root > section > div.SelectedLanguage_selectedWrapper__2StUQ > ul > li:last-child').css("display", "flex");
		}
		
		// 필터를 다 해제했을 때 흐리게 되었던 필터들 다시 제대로 모든 필터 보이게 끔 하고, 필터초기화 버튼 안보이게 처리
		if (!isFirst && count == 0) {
			isFirst = true;
			$('.LanguageBar_languageIcon__Um7GQ').removeClass('LanguageBar_transparent__3wlZf').addClass(selectedClass);
			$('#root > section > div.SelectedLanguage_selectedWrapper__2StUQ > ul > li:last-child').css("display", "none");
		}
	});
	// toogleLanguage bar 함수
	function toogleLanguageBar($languageBar, status) {
		// status가 active라면 선명하게 보이게 하기
		if (status === "active") {
			$languageBar.addClass(selectedClass).removeClass('LanguageBar_transparent__3wlZf');
		// status가 inactive 라면 흐리게 보이게 하기
		} else {
			$languageBar.removeClass(selectedClass).addClass('LanguageBar_transparent__3wlZf');
		}
	}
	
	// addLanguageFilter 함수
	// 필터를 누르면 하단에 <li> 추가하는 함수
	function addLanguageFilter(language) {
		var newLi = $('<li>').attr('class',	'SelectedLanguage_selectedLanguage__3AUIy');
		var newDi = $('<div>').text(language);
		var newImg = $('<img>').attr('src',	'https://holaworld.io/images/info/delete.svg').attr('alt','deleteButton');

		$(newLi).append(newDi);
		$(newLi).append(newImg);
		$('.SelectedLanguage_selectedLanguages__DYJjl').prepend(newLi);

		// 추가된 <li> 태그에 클릭 이벤트 핸들러 추가
		// 누르면 삭제되게 함
		$(newLi).click(function() {
			$(this).remove();
			var language = $(this).text();

			$('li.LanguageBar_languageIcon__Um7GQ').each(function() {
				
				let nthLanguage = $(this).text();

				if (nthLanguage === language) {
					count--;
					$(this).removeClass(selectedClass).addClass('LanguageBar_transparent__3wlZf');
					if (count == 0) {
						isFirst = true;
						$('.LanguageBar_languageIcon__Um7GQ').removeClass('LanguageBar_transparent__3wlZf').addClass(selectedClass);
						$('#root > section > div.SelectedLanguage_selectedWrapper__2StUQ > ul > li:last-child').css("display", "none");
					}
				}
			});
		});
	}
	
	// 필터 아이콘 누르면 필터 삭제되게 하는 함수
	function removeLanguageFilter(language) {
		let $languageFilters = $('.SelectedLanguage_selectedLanguages__DYJjl > li');

		$languageFilters.each(function() {
			let nthLanguage = $(this).text();
			if (nthLanguage === language) {
				$(this).remove();
			}
		});
	}
	
	//list.jsp의 검색 버튼의 이벤트 처리
	var searchForm = $("#searchForm");
            		
	$("#searchForm button").on("click", function(e) {
		if(!searchForm.find("option:selected").val()) {
			alert("검색 종류를 선택하세요");
			return false;
		}
		
		if(!searchForm.find("input[name='keyword']").val()) {
			alert("키워드를 입력하세요");
			return false;
		}
		
		searchForm.find("input[name='pageNum']").val("1");
		e.preventDefault();
		
		searchForm.submit();
	});
	
	
</script>

</body>
</html>
