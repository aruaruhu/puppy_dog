<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
    
<head>

    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
    <link rel="stylesheet" href="css/swiper.min.css">
    <link rel="stylesheet" href="css/style.css" type="text/css"> 
    <script type="text/javascript" src="js/jquery-3.7.1.min.js"></script>
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <jsp:include page="./module/header_fin.jsp" flush="false"/>
    <title>PuppyDog</title>
    <style>
    /* 주목받는 아이템 부분 스타일 */
    .btn-focus{
        font-size: 20px;
        text-decoration: none;
        margin-right: 30px;
        color: darkslategray;
    }

    .btn-focus:hover{
        text-decoration: underline;
        color: black;
    }

    .btn-focus:active{
        color: black;
        text-decoration: underline;
    }
    
    </style>
    <script>

        // 주목받는 아이템 부분
        function showCategory(category){

        let allCategories = document.querySelectorAll('.product-container');
        allCategories.forEach(function (item){
            item.classList.remove('active');
        });

        let selectedCategory = document.getElementById(category);
        selectedCategory.classList.add('active');
        }

    </script>


</head>
<body>



  <div class="menu-banner">
  </div>
  <div id="carouselExampleDark" class="carousel carousel-dark slide carousel-fade" data-bs-ride="carousel">
    <div class="carousel-indicators">
      <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
      <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="1" aria-label="Slide 2"></button>
      <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="2" aria-label="Slide 3"></button>
    </div>
    <div class="carousel-inner">
      <div class="carousel-item active" data-bs-interval="10000">
        <img src="img/메인사진1.png" class="d-block w-100 inner-img" alt="dog1">
        <div class="carousel-caption d-none d-md-block">

        </div>
      </div>
      <div class="carousel-item" data-bs-interval="2000">
        <img src="img/메인사진2.jpg" class="d-block w-100 inner-img" alt="dog2">
        <div class="carousel-caption d-none d-md-block">

        </div>
      </div>
      <div class="carousel-item">
        <img src="img/메인사진3.jpg" class="d-block w-100 inner-img" alt="dog3">
        <div class="carousel-caption d-none d-md-block">
  
        </div>
      </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Next</span>
    </button>
  </div>

  <div class="container text-center mid-con">
    <div class="row g-2">
      <div class="col-4 mid-scroll">
        <table class="table table-dark table-hover" style="border: 1px solid lightgray;">
          <thead>
            <tr>
              <th scope="col">공지사항</th>
            </tr>
          </thead>
          <tr class="table-dark">
            <td class="table-light">첫번째 공지사항</td>
          </tr>
          <tr class="table-dark">
            <td class="table-light">두번째 공지사항</td>
          </tr>
          <tr class="table-dark">
            <td class="table-light">세번째 공지사항</td>
          </tr>
          <tr class="table-dark">
            <td class="table-light">네번째 공지사항</td>
          </tr>
          <tr class="table-dark">
            <td class="table-light">다섯째 공지사항</td>
          </tr>
        </table>
      </div>
      <div class="col-4 mid">
        <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
          <div class="carousel-indicators">
            <button type="button" data-bs-target="#carouselExampleControls" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#carouselExampleControls" data-bs-slide-to="1" aria-label="Slide 2"></button>
          </div>
          <div class="carousel-inner">
            <div class="carousel-item active">
              <img src="img/작은사진1.jpg" class="d-block w-100 mid-img" alt="...">
            </div>
            <div class="carousel-item">
              <img src="img/작은사진2.jpg" class="d-block w-100 mid-img" alt="...">
            </div>
          </div>
          <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
          </button>
          <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
          </button>
        </div>
      </div>
      <div class="col-4 mid">
        <div id="carouselExampleControls2" class="carousel slide" data-bs-ride="carousel">
          <div class="carousel-inner">
            <div class="carousel-item active">
              <img src="img/작은사진3.jpg" class="d-block w-100 mid-img" alt="...">
            </div>
            <div class="carousel-item">
              <img src="img/작은사진4.jpg" class="d-block w-100 mid-img" alt="...">
            </div>
          </div>
          <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls2" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
          </button>
          <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls2" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
          </button>
        </div>
      </div>
    </div>
  </div>

<!--  -->
<div class="container text-center" style="border: 1px solid beige; margin-bottom: 50px; padding: 10px;">
  <div class="row row-col-2">
      <div class="col-6 menutitle">
          <h2>주목받는 아이템</h2>
      </div>
      <div class="col-6 menubar">
          <ul class="nav justify-content-end">
              <li class="nav-category">
                  <button onclick="showCategory('feed')" class="btn btn-link btn-focus" style="color: black;">사료</button>
              </li>
              <li class="nav-category">
                  <button onclick="showCategory('snack')" class="btn btn-link btn-focus" style="color: black;">간식</button>
              </li>
              <li class="nav-category">
                  <button onclick="showCategory('cloth')" class="btn btn-link btn-focus" style="color: black;">의류</button>
              </li>
              <li class="nav-category">
                  <button onclick="showCategory('beauty')" class="btn btn-link btn-focus" style="color: black;">미용</button>
              </li>
            </ul>
      </div>
  
      <!-- 상품 (사료) -->
      <div id="feed" class="product-container active">
          <div class="col-3">
              <div class="card" style="width: 18rem;">
                  <img src="./img/주목사료1.jpg" class="card-img-top" alt="...">
                  <h5 class="card-title">강아지 처방 사료 민감피푸 질환 개선 NVD(애견용)2.5kg</h5>
                  <hr>
                  <div class="card-body">
                  <p class="card-text">86,300원</p>
                  </div>
              </div>
          </div>
          <div class="col-3">
              <div class="card" style="width: 18rem;">
                  <img src="./img/주목사료2.jpg" class="card-img-top" alt="...">
                  <h5 class="card-title">올가밀 홀리스틱 램29(2.7kg)</h5>
                  <hr><br>
                  <div class="card-body">
                  <p class="card-text">65,000원</p>
                  </div>
              </div>
          </div>
          <div class="col-3">
              <div class="card" style="width: 18rem;">
                  <img src="./img/주목사료1.jpg" class="card-img-top" alt="...">
                  <h5 class="card-title">강아지 처방 사료 민감피푸 질환 개선 NVD(애견용)2.5kg</h5>
                  <hr>
                  <div class="card-body">
                  <p class="card-text">86,300원</p>
                  </div>
              </div>
          </div>
          <div class="col-3">
              <div class="card" style="width: 18rem;">
                  <img src="./img/주목사료2.jpg" class="card-img-top" alt="...">
                  <h5 class="card-title">올가밀 홀리스틱 램29(2.7kg)</h5>
                  <hr><br>
                  <div class="card-body">
                  <p class="card-text">65,000원</p>
                  </div>
              </div>
          </div>
      </div>

      <!-- 상품 (간식) -->
      <div id="snack" class="product-container">
          <div class="col-3">
              <div class="card" style="width: 18rem;">
                  <img src="./img/주목간식1.jpg" class="card-img-top" alt="...">
                  <hr>
                  <div class="card-body">
                  <h5 class="card-title">Card title</h5>
                  <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                  </div>
              </div>
          </div>
          <div class="col-3">
              <div class="card" style="width: 18rem;">
                  <img src="./img/주목간식1.jpg" class="card-img-top" alt="...">
                  <hr>
                  <div class="card-body">
                  <h5 class="card-title">Card title</h5>
                  <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                  </div>
              </div>
          </div>
          <div class="col-3">
              <div class="card" style="width: 18rem;">
                  <img src="./img/주목간식1.jpg" class="card-img-top" alt="...">
                  <hr>
                  <div class="card-body">
                  <h5 class="card-title">Card title</h5>
                  <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                  </div>
              </div>
          </div>
          <div class="col-3">
              <div class="card" style="width: 18rem;">
                  <img src="./img/주목간식1.jpg" class="card-img-top" alt="...">
                  <hr>
                  <div class="card-body">
                  <h5 class="card-title">Card title</h5>
                  <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                  </div>
              </div>
          </div>
      </div>
      <!-- 상품 (의류) -->
      <div id="cloth" class="product-container">
          <div class="col-3">
              <div class="card" style="width: 18rem;">
                  <img src="./img/주목패션1.jpg" class="card-img-top" alt="...">
                  <hr>
                  <div class="card-body">
                  <h5 class="card-title">Card title</h5>
                  <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                  </div>
              </div>
          </div>
          <div class="col-3">
              <div class="card" style="width: 18rem;">
                  <img src="./img/주목패션2.jpg" class="card-img-top" alt="...">
                  <hr>
                  <div class="card-body">
                  <h5 class="card-title">Card title</h5>
                  <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                  </div>
              </div>
          </div>
          <div class="col-3">
              <div class="card" style="width: 18rem;">
                  <img src="./img/주목패션3.jpg" class="card-img-top" alt="...">
                  <hr>
                  <div class="card-body">
                  <h5 class="card-title">Card title</h5>
                  <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                  </div>
              </div>
          </div>
          <div class="col-3">
              <div class="card" style="width: 18rem;">
                  <img src="./img/주목패션1.jpg" class="card-img-top" alt="...">
                  <hr>
                  <div class="card-body">
                  <h5 class="card-title">Card title</h5>
                  <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                  </div>
              </div>
          </div>
      </div>
      <!-- 상품 (미용) -->
      <div id="beauty" class="product-container">
          <div class="col-3 product-feed">
              <div class="card" style="width: 18rem;">
                  <img src="./img/주목미용1.jpg" class="card-img-top" alt="...">
                  <hr>
                  <div class="card-body">
                  <h5 class="card-title">Card title</h5>
                  <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                  </div>
              </div>
          </div>
          <div class="col-3">
              <div class="card" style="width: 18rem;">
                  <img src="./img/주목미용2.jpg" class="card-img-top" alt="...">
                  <hr>
                  <div class="card-body">
                  <h5 class="card-title">Card title</h5>
                  <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                  </div>
              </div>
          </div>
          <div class="col-3">
              <div class="card" style="width: 18rem;">
                  <img src="./img/주목미용3.jpg" class="card-img-top" alt="...">
                  <hr>
                  <div class="card-body">
                  <h5 class="card-title">Card title</h5>
                  <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                  </div>
              </div>
          </div>
          <div class="col-3">
              <div class="card" style="width: 18rem;">
                  <img src="./img/주목미용1.jpg" class="card-img-top" alt="...">
                  <hr>
                  <div class="card-body">
                  <h5 class="card-title">Card title</h5>
                  <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                  </div>
              </div>
          </div>
      </div>
  </div>
</div>

  <!--  -->
  
  <div class="container">
    <div class="row">
      <div class="col">
        <div id="carouselExampleControls3" class="carousel slide" data-bs-ride="carousel">
          <div class="carousel-inner in-midimg">
            <div class="carousel-item active">
              <img src="img/중간사진1.jpg" class="d-block w-100 under-img" alt="...">
            </div>
            <div class="carousel-item">
              <img src="img/중간사진2.jpg" class="d-block w-100 under-img" alt="...">
            </div>
          </div>
          <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls3" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
          </button>
          <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls3" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
          </button>
        </div>
      </div>
      <div class="col">
        <div id="carouselExampleControls4" class="carousel slide" data-bs-ride="carousel">
          <div class="carousel-inner in-midimg">
            <div class="carousel-item active">
              <img src="img/중간사진3.jpg" class="d-block w-100 under-img" alt="...">
            </div>
            <div class="carousel-item">
              <img src="img/중간사진4.jpg" class="d-block w-100 under-img" alt="...">
            </div>
          </div>
          <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls4" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
          </button>
          <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls4" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
          </button>
        </div>
      </div>
    </div>
  </div>

<!-- 영웅이 파트 (베스트아이템) -->
<jsp:include page="./module/main2_2.jsp" flush="false"/>
<jsp:include page="./module/footer.jsp" flush="false"/>



</body>
</html>