<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <%@ include file="../cmmn/cmmn_style.jsp" %>
</head>

<body class="bg-dark">
    <header>
        <nav class="navbar navbar-expand-md navbar-dark bg-dark">
            <div class="container">
                <a class="navbar-brand" href="#"><h1>Grby-</h1></a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                    <div class="navbar-nav w-100">
                        <a class="nav-link active" href="#">menu1</a>
                        <a class="nav-link" href="#">menu2</a>
                        <a class="nav-link" href="#">menu3</a>
                        <a class="nav-link disabled">menu4</a>
                    </div>
                    <form class="d-flex float-end">
                    
                        <button class="btn btn-sm btn-outline-danger" type="submit">LOGIN</button>
                    </form>
                </div>
            </div>
        </nav>
    </header>

    <div class="container">

        <div class="top-ad"></div>

        <div class="row g-3">
            <div class="col-md-6 col-12"> <!-- 상단 좌측 -->
                <section class="card-contents border border-light rounded m-auto">
                    <div class="p-2 pt-1">
                        공동구매 모집 게시판 +더보기 <br>
                        blah blah <br>blah blah(12) <br>blah blah <br>blah blah <br>
                    </div>
                </section>
            </div>
            <div class="col-md-6 col-12"> <!-- 상단 우측 -->
                <section class="card-contents border border-light rounded m-auto">

                    <div class="p-2 pt-1">
                        운동 유투버 정보를 담아도 좋을 것 같구여 <br>
                    </div>
                </section>
            </div>
            <div class="col-md-6 col-12"> <!-- 하단 좌측 -->
                <section class="card-contents border border-light rounded m-auto">

                    <div class="p-2 pt-1">
                        추후엔 운동용품 판매를 할 수도 있겠지라.. 키야..
                    </div>
                </section>
            </div>
            <div class="col-md-6 col-12"> <!-- 하단 우측 -->
                <section class="card-contents border border-light rounded m-auto">

                    <div class="p-2 pt-1">
                        요 커뮤니티가 중요한 역할을 하겠네여 <br>
                    </div>
                </section>
            </div>
        </div>


        <div class="top-bottom"></div>
    </div>


</body>

<%@ include file="../cmmn/cmmn_scirpt.jsp" %>

</html>