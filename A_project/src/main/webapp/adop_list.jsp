<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Shop Homepage - Start Bootstrap Template</title>
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
    <!-- Bootstrap icons-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="./Boardcss/css/adop_list.css" rel="stylesheet" />
</head>

<body>
    <!-- Navigation-->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container px-4 px-lg-5">
            <a class="navbar-brand" href="/"><img src="./Boardcss/image/logo.png" alt="" style="width: 70px;" ></a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                    <li class="nav-item"><a class="nav-link active" aria-current="page" href="#!">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="#!">About</a></li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button"
                            data-bs-toggle="dropdown" aria-expanded="false">Shop</a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="#!">All Products</a></li>
                            <li>
                                <hr class="dropdown-divider" />
                            </li>
                            <li><a class="dropdown-item" href="#!">Popular Items</a></li>
                            <li><a class="dropdown-item" href="#!">New Arrivals</a></li>
                        </ul>
                    </li>
                </ul>
                <form class="d-flex">
                    <button class="btn btn-outline-dark" type="submit">
                        <i class="bi-cart-fill me-1"></i>
                        Cart
                        <span class="badge bg-dark text-white ms-1 rounded-pill">0</span>
                    </button>
                </form>
            </div>
        </div>
    </nav>
    <!-- Header-->
    <header class="bg-dark py-5">
        <div class="container px-4 px-lg-5 my-5">
            <div class="text-center text-white">
                <h1 class="display-4 fw-bolder">Dog Adoption</h1>
                <hr style="border:solid 3px;">
                <br>
                <p class="lead fw-normal text-white-10 mb-0">사지말고 입양하세요</p>
            </div>
        </div>
    </header>
    <!-- Section-->
    <section class="py-5">
        <div class="container px-4 px-lg-5 mt-5">
            <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                <div class="col mb-5">
                    <div class="card h-100">
                        <!-- Product image-->
                        <img class="card-img-top" src="./Boardcss/image/a1.png" alt="..." />
                        <!-- Product details-->
                        <div class="card-body p-4">
                            
                            <div class="text-center">
                                <!-- 이름-->
                                <h5 class="fw-bolder">쿠리</h5>
                                <hr>
                                <br>
                                <!-- 종, 나이, 성별-->
                                <span class="dog_type">[믹스]</span>
                                <span class="dog_age"> 7살 </span>
                                <span class="dog_gender"> 남아 </span>
                            </div>
                            <br>
                            <br>
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="./adop_intro copy 1.jsp">상세보기</a></div>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="col mb-5">
                    <div class="card h-100">
                        <!-- Product image-->
                        <img class="card-img-top" src="./Boardcss/image/a2.png"alt="..." />
                        <!-- Product details-->
                        <div class="card-body p-4">
                            <div class="text-center">
                                
                                <!-- 이름-->
                                <h5 class="fw-bolder">후니</h5>
                                <hr>
                                <br>
                                <!-- 종, 나이, 성별-->
                                <span class="dog_type">[믹스]</span>
                                <span class="dog_age"> 3살 </span>
                                <span class="dog_gender"> 여아 </span>
                            </div>
                            <br>
                            <br>
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="/adoption/startbootstrap-shop-item-gh-pages/adop_intro copy 2.html">상세보기</a></div>
                            </div>
                        </div>

                    </div>
                </div>


                <div class="col mb-5">
                    <div class="card h-100">
                        <!-- Product image-->
                        <img class="card-img-top" src="./Boardcss/image/a3.png" alt="..." />
                        <!-- Product details-->
                        <div class="card-body p-4">
                            <div class="text-center">
                                <!-- 이름-->
                                <h5 class="fw-bolder">쭈글</h5>
                                <hr>
                                <br>
                                <!-- 종, 나이, 성별-->
                                <span class="dog_type">[믹스]</span>
                                <span class="dog_age"> 4살 </span>
                                <span class="dog_gender"> 여아 </span>
                            </div>
                            <br>
                            <br>
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="/adoption/startbootstrap-shop-item-gh-pages/adop_intro copy 3.html">상세보기</a></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col mb-5">
                    <div class="card h-100">
                        <!-- Product image-->
                        <img class="card-img-top" src="./Boardcss/image/a4.png" alt="..." />
                        <!-- Product details-->
                        <div class="card-body p-4">
                            <div class="text-center">
                                <!-- 이름-->
                                <h5 class="fw-bolder">해니</h5>
                                <hr>
                                <br>
                                <!-- 종, 나이, 성별-->
                                <span class="dog_type">[믹스]</span>
                                <span class="dog_age"> 1살 </span>
                                <span class="dog_gender"> 남아 </span>
                            </div>
                            <br>
                            <br>
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="/adoption/startbootstrap-shop-item-gh-pages/adop_intro copy 4.html">상세보기</a></div>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="col mb-5">
                    <div class="card h-100">
                        <!-- Product image-->
                        <img class="card-img-top" src="./Boardcss/image/a5.png" alt="..." />
                        <!-- Product details-->
                        <div class="card-body p-4">
                            <div class="text-center">
                                <!-- 이름-->
                                <h5 class="fw-bolder">열무</h5>
                                <hr>
                                <br>
                                <!-- 종, 나이, 성별-->
                                <span class="dog_type">[믹스]</span>
                                <span class="dog_age"> 5살 </span>
                                <span class="dog_gender"> 남아 </span>
                            </div>
                            <br>
                            <br>
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="/adoption/startbootstrap-shop-item-gh-pages/adop_intro copy 5.html">상세보기</a></div>
                            </div>
                        </div>

                    </div>
                </div>


                <div class="col mb-5">
                    <div class="card h-100">
                        <!-- Product image-->
                        <img class="card-img-top" src="./Boardcss/image/a6.png" alt="..." />
                        <!-- Product details-->
                        <div class="card-body p-4">
                            <div class="text-center">
                                <!-- 이름-->
                                <h5 class="fw-bolder">몽쓰</h5>
                                <hr>
                                <br>
                                <!-- 종, 나이, 성별-->
                                <span class="dog_type">[믹스]</span>
                                <span class="dog_age"> 2살 </span>
                                <span class="dog_gender"> 남아 </span>
                            </div>
                            <br>
                            <br>
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="/adoption/startbootstrap-shop-item-gh-pages/adop_intro copy 6.html">상세보기</a></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col mb-5">
                    <div class="card h-100">
                        <!-- Product image-->
                        <img class="card-img-top" src="./Boardcss/image/a7.png" alt="..." />
                        <!-- Product details-->
                        <div class="card-body p-4">
                            <div class="text-center">
                                <!-- 이름-->
                                <h5 class="fw-bolder">모모</h5>
                                <hr>
                                <br>
                                <!-- 종, 나이, 성별-->
                                <span class="dog_type">[치와와]</span>
                                <span class="dog_age"> 2살 </span>
                                <span class="dog_gender"> 남아 </span>
                            </div>
                            <br>
                            <br>
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="/adoption/startbootstrap-shop-item-gh-pages/adop_intro copy 7.html">상세보기</a></div>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="col mb-5">
                    <div class="card h-100">
                        <!-- Product image-->
                        <img class="card-img-top" src="./Boardcss/image/a8.png" alt="..." />
                        <!-- Product details-->
                        <div class="card-body p-4">
                            <div class="text-center">
                                <!-- 이름-->
                                <h5 class="fw-bolder">콩식</h5>
                                <hr>
                                <br>
                                <!-- 종, 나이, 성별-->
                                <span class="dog_type">[믹스]</span>
                                <span class="dog_age"> 4살 </span>
                                <span class="dog_gender"> 남아 </span>
                            </div>
                            <br>
                            <br>
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="/adoption/startbootstrap-shop-item-gh-pages/adop_intro copy 8.html">상세보기</a></div>
                            </div>
                        </div>

                    </div>
                </div>


                <div class="col mb-5">
                    <div class="card h-100">
                        <!-- Product image-->
                        <img class="card-img-top" src="./Boardcss/image/a9.png" alt="..." />
                        <!-- Product details-->
                        <div class="card-body p-4">
                            <div class="text-center">
                                <!-- 이름-->
                                <h5 class="fw-bolder">초록</h5>
                                <hr>
                                <br>
                                <!-- 종, 나이, 성별-->
                                <span class="dog_type">[보더콜리]</span>
                                <span class="dog_age"> 4살 </span>
                                <span class="dog_gender"> 남아 </span>
                            </div>
                            <br>
                            <br>
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="/adoption/startbootstrap-shop-item-gh-pages/adop_intro copy 9.html">상세보기</a></div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col mb-5">
                    <div class="card h-100">
                        <!-- Product image-->
                        <img class="card-img-top" src="./Boardcss/image/a10.png"alt="..." />
                        <!-- Product details-->
                        <div class="card-body p-4">
                            <div class="text-center">
                                <!-- 이름-->
                                <h5 class="fw-bolder">함박</h5>
                                <hr>
                                <br>
                                <!-- 종, 나이, 성별-->
                                <span class="dog_type">[진도믹스]</span>
                                <span class="dog_age"> 1살 </span>
                                <span class="dog_gender"> 남아 </span>
                            </div>
                            <br>
                            <br>
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="/adoption/startbootstrap-shop-item-gh-pages/adop_intro copy 10.html">상세보기</a></div>
                            </div>
                        </div>

                    </div>
                </div>
                

               <div class="col mb-5">
                    <div class="card h-100">
                        <!-- Product image-->
                        <img class="card-img-top" src="./Boardcss/image/a11.png" alt="..." />
                        <!-- Product details-->
                        <div class="card-body p-4">
                            <div class="text-center">
                                <!-- 이름-->
                                <h5 class="fw-bolder">탄이</h5>
                                <hr>
                                <br>
                                <!-- 종, 나이, 성별-->
                                <span class="dog_type">[시바견]</span>
                                <span class="dog_age"> 5살 </span>
                                <span class="dog_gender"> 남아 </span>
                            </div>
                            <br>
                            <br>
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="/adoption/startbootstrap-shop-item-gh-pages/adop_intro copy 11.html">상세보기</a></div>
                            </div>
                        </div>
            </div>
        </div>

        <div class="col mb-5">
            <div class="card h-100">
                <!-- Product image-->
                <img class="card-img-top" src="./Boardcss/image/a12.png" alt="..." />
                <!-- Product details-->
                <div class="card-body p-4">
                    <div class="text-center">
                        <!-- 이름-->
                        <h5 class="fw-bolder">마중</h5>
                        <hr>
                        <br>
                        <!-- 종, 나이, 성별-->
                        <span class="dog_type">[셰퍼드]</span>
                        <span class="dog_age"> 2살 </span>
                        <span class="dog_gender"> 남아 </span>
                    </div>
                    <br>
                    <br>
                    <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                        <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="/adoption/startbootstrap-shop-item-gh-pages/adop_intro copy 12.html">상세보기</a></div>
                    </div>
                </div>
                
            </div>
        </div>

    </section>
    <!-- Footer-->
    <footer class="py-5 bg-dark">
        <div class="container">
            <p class="m-0 text-center text-white">Copyright &copy; Flower dog 2022 <br> Tel : 1234-5678</p>

        </div>
    </footer>
    <!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Core theme JS-->
    <script src="js/scripts.js"></script>
</body>

</html>