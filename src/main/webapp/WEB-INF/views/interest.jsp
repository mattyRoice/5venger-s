<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>관심글</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" 
    rel="stylesheet">

    <style>
      /* CSS 코드 작성 */
      footer {
        background-color: white;
      }
    </style>

</head>

<body>

  <div class="row" style="display: flex; justify-content: center; align-items: center; font-size: 1.5rem;">
    <div class="col-md-10">
      <img src = "studyhub_logo.png" width = "200" height = "80">
    </div>
    <div class="col-auto">새 글 쓰기</div>
    <div class="col-auto">마이페이지</div>
  </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js">
    </script>

    <hr>
    <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="true">
        <div class="carousel-indicators" bgcolor = "green">
          <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
          <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
          <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img src="studyhub_logo.png" height = "180" class="d-block w-150">
          </div>
          <div class="carousel-item">
            <img src="studyhub_logo.png" height = "180" class="d-block w-150">
          </div>
          <div class="carousel-item">
            <img src="studyhub_logo.png" height = "180" class="d-block w-150">
          </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Next</span>
        </button>
    </div>


    <hr>

    <div class="container text-center">
      <div class="row g-4">
        <div class="col">
          <div class="card" style="width: 20rem; border-radius: 20px;">
            <div class="card-body">
              <h5 class="card-title">페이지 만들기 어려워요!</h5>
              <h6 class="card-subtitle mb-2 text-muted"><img src = "https://cdn.freebiesupply.com/logos/large/2x/spring-3-logo-png-transparent.png" width = "30" height = "30"></h6>
              <p class="card-text">스프링 마크를 넣어봤습니다!</p>
              <a href="#" class="card-link">상세보기</a>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card" style="width: 20rem; border-radius: 20px;">
            <div class="card-body">
              <h5 class="card-title">페이지 만들기 어려워요!</h5>
              <h6 class="card-subtitle mb-2 text-muted"><img src = "https://pngimg.com/uploads/letter_c/letter_c_PNG22.png" width = "30" height = "30"></h6>
              <p class="card-text">이것은 C여</p>
              <a href="#" class="card-link">상세보기</a>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card" style="width: 20rem; border-radius: 20px;">
            <div class="card-body">
              <h5 class="card-title">페이지 만들기 어려워요!</h5>
              <h6 class="card-subtitle mb-2 text-muted">
                <img src = "https://cdn.freebiesupply.com/logos/large/2x/spring-3-logo-png-transparent.png" width = "30" height = "30">
                <img src = "https://pngimg.com/uploads/letter_c/letter_c_PNG22.png" width = "30" height = "30"></h6>
              <p class="card-text">내용을 설명해주세요</p>
              <a href="#" class="card-link">상세보기</a>
            </div>
          </div>
        </div>
      </div>
    </div>

    <br>

    <div class="container text-center">
      <div class="row g-4">
        <div class="col">
          <div class="card" style="width: 20rem; border-radius: 20px;">
            <div class="card-body">
              <h5 class="card-title">페이지 만들기 어려워요!</h5>
              <h6 class="card-subtitle mb-2 text-muted"><img src = "https://cdn.freebiesupply.com/logos/large/2x/spring-3-logo-png-transparent.png" width = "30" height = "30"></h6>
              <p class="card-text">스프링 마크를 넣어봤습니다!</p>
              <a href="#" class="card-link">상세보기</a>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card" style="width: 20rem; border-radius: 20px;">
            <div class="card-body">
              <h5 class="card-title">페이지 만들기 어려워요!</h5>
              <h6 class="card-subtitle mb-2 text-muted"><img src = "https://pngimg.com/uploads/letter_c/letter_c_PNG22.png" width = "30" height = "30"></h6>
              <p class="card-text">이것은 C여</p>
              <a href="#" class="card-link">상세보기</a>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card" style="width: 20rem; border-radius: 20px;">
            <div class="card-body">
              <h5 class="card-title">페이지 만들기 어려워요!</h5>
              <h6 class="card-subtitle mb-2 text-muted">
                <img src = "https://cdn.freebiesupply.com/logos/large/2x/spring-3-logo-png-transparent.png" width = "30" height = "30">
                <img src = "https://pngimg.com/uploads/letter_c/letter_c_PNG22.png" width = "30" height = "30"></h6>
              <p class="card-text">내용을 설명해주세요</p>
              <a href="#" class="card-link">상세보기</a>
            </div>
          </div>
        </div>
      </div>
    </div>



    <br>

    <div class="container text-center">
      <div class="row g-4">
        <div class="col">
          <div class="card" style="width: 20rem; border-radius: 20px;">
            <div class="card-body">
              <h5 class="card-title">페이지 만들기 어려워요!</h5>
              <h6 class="card-subtitle mb-2 text-muted"><img src = "https://cdn.freebiesupply.com/logos/large/2x/spring-3-logo-png-transparent.png" width = "30" height = "30"></h6>
              <p class="card-text">스프링 마크를 넣어봤습니다!</p>
              <a href="#" class="card-link">상세보기</a>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card" style="width: 20rem; border-radius: 20px;">
            <div class="card-body">
              <h5 class="card-title">페이지 만들기 어려워요!</h5>
              <h6 class="card-subtitle mb-2 text-muted"><img src = "https://pngimg.com/uploads/letter_c/letter_c_PNG22.png" width = "30" height = "30"></h6>
              <p class="card-text">이것은 C여</p>
              <a href="#" class="card-link">상세보기</a>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card" style="width: 20rem; border-radius: 20px;">
            <div class="card-body">
              <h5 class="card-title">페이지 만들기 어려워요!</h5>
              <h6 class="card-subtitle mb-2 text-muted">
                <img src = "https://cdn.freebiesupply.com/logos/large/2x/spring-3-logo-png-transparent.png" width = "30" height = "30">
                <img src = "https://pngimg.com/uploads/letter_c/letter_c_PNG22.png" width = "30" height = "30"></h6>
              <p class="card-text">내용을 설명해주세요</p>
              <a href="#" class="card-link">상세보기</a>
            </div>
          </div>
        </div>
      </div>
    </div>



    <br>

    <div class="container text-center">
      <div class="row g-4">
        <div class="col">
          <div class="card" style="width: 20rem; border-radius: 20px;">
            <div class="card-body">
              <h5 class="card-title">페이지 만들기 어려워요!</h5>
              <h6 class="card-subtitle mb-2 text-muted"><img src = "https://cdn.freebiesupply.com/logos/large/2x/spring-3-logo-png-transparent.png" width = "30" height = "30"></h6>
              <p class="card-text">스프링 마크를 넣어봤습니다!</p>
              <a href="#" class="card-link">상세보기</a>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card" style="width: 20rem; border-radius: 20px;">
            <div class="card-body">
              <h5 class="card-title">페이지 만들기 어려워요!</h5>
              <h6 class="card-subtitle mb-2 text-muted"><img src = "https://pngimg.com/uploads/letter_c/letter_c_PNG22.png" width = "30" height = "30"></h6>
              <p class="card-text">이것은 C여</p>
              <a href="#" class="card-link">상세보기</a>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card" style="width: 20rem; border-radius: 20px;">
            <div class="card-body">
              <h5 class="card-title">페이지 만들기 어려워요!</h5>
              <h6 class="card-subtitle mb-2 text-muted">
                <img src = "https://cdn.freebiesupply.com/logos/large/2x/spring-3-logo-png-transparent.png" width = "30" height = "30">
                <img src = "https://pngimg.com/uploads/letter_c/letter_c_PNG22.png" width = "30" height = "30"></h6>
              <p class="card-text">내용을 설명해주세요</p>
              <a href="#" class="card-link">상세보기</a>
            </div>
          </div>
        </div>
      </div>
    </div>

    <br>

    <div class="container text-center">
      <div class="row g-4">
        <div class="col">
          <div class="card" style="width: 20rem; border-radius: 20px;">
            <div class="card-body">
              <h5 class="card-title">페이지 만들기 어려워요!</h5>
              <h6 class="card-subtitle mb-2 text-muted"><img src = "https://cdn.freebiesupply.com/logos/large/2x/spring-3-logo-png-transparent.png" width = "30" height = "30"></h6>
              <p class="card-text">스프링 마크를 넣어봤습니다!</p>
              <a href="#" class="card-link">상세보기</a>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card" style="width: 20rem; border-radius: 20px;">
            <div class="card-body">
              <h5 class="card-title">페이지 만들기 어려워요!</h5>
              <h6 class="card-subtitle mb-2 text-muted"><img src = "https://pngimg.com/uploads/letter_c/letter_c_PNG22.png" width = "30" height = "30"></h6>
              <p class="card-text">이것은 C여</p>
              <a href="#" class="card-link">상세보기</a>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card" style="width: 20rem; border-radius: 20px;">
            <div class="card-body">
              <h5 class="card-title">페이지 만들기 어려워요!</h5>
              <h6 class="card-subtitle mb-2 text-muted">
                <img src = "https://cdn.freebiesupply.com/logos/large/2x/spring-3-logo-png-transparent.png" width = "30" height = "30">
                <img src = "https://pngimg.com/uploads/letter_c/letter_c_PNG22.png" width = "30" height = "30"></h6>
              <p class="card-text">내용을 설명해주세요</p>
              <a href="#" class="card-link">상세보기</a>
            </div>
          </div>
        </div>
      </div>
    </div>

    <hr>

    <div class="row">
      <div class="col-md-10">
        <div class="btn-group" role="group" aria-label="Basic mixed styles example">
          <img src = "studyhub_logo.png" height = "130" width = "300">
        </div>
      </div>
      <div class="col-md-9">Team 5vengers</div>
      <div class="col-auto">이용약관</div>
      <div class="col-auto">개인정보처리방침</div>
      <div class="col-auto">서비스소개</div>
    </div>

    <hr>
</body>





</html>