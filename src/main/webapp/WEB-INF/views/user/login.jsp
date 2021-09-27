<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>

<body>
    <h2>로그인</h2>
    <a href="javascript:;" class="btn_social" data-social="google">구글 로그인</a><br /> 
    <script>
        let socials = document.getElementsByClassName("btn_social");
        for (let social of socials) {
            social.addEventListener('click', function () {
                let socialType = this.getAttribute('data-social');
                location.href = "/oauth2/authorization/" + socialType;
            })
        }
    </script>
</body>

</html>

