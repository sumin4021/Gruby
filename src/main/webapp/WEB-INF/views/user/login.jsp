<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <meta name ="google-signin-client_id" content="505136884340-v2dud36ra4pikq6m3fm19hvpep2ih3ga.apps.googleusercontent.com">

</head>

<body>
    <h2>로그인</h2>
    <a href="javascript:;" class="btn_social" data-social="google">구글 로그인</a><br />

<ul>
 <li id="GgCustomLogin">
  <a href="javascript:void(0)">
   <span>Login with Google</span>
  </a>
 </li>
</ul>

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


<script src="https://apis.google.com/js/platform.js?onload=init" async defer></script>
<script>


    //처음 실행하는 함수
    function init() {
        gapi.load('auth2', function () {
            gapi.auth2.init();
            options = new gapi.auth2.SigninOptionsBuilder();
            options.setPrompt('select_account');
            options.setScope('email profile openid https://www.googleapis.com/auth/user.birthday.read');
            gapi.auth2.getAuthInstance().attachClickHandler('GgCustomLogin', options, onSignIn, onSignInFailure);
        })
    }

    function onSignIn(googleUser) {
        var access_token = googleUser.getAuthResponse().access_token
        $.ajax({
                url: 'https://people.googleapis.com/v1/people/me',
                data: {
                    personFields: 'birthdays',
                    key: '7mmgQUXkOr08UvuaNyWS6n5M',
                    'access_token': access_token
                },
                method: 'GET'
            })
            .done(function (e) {
                var profile = googleUser.getBasicProfile();
                console.log(profile)
            })
            .fail(function (e) {
                console.log(e);
            })
    }

    function onSignInFailure(t) {
        console.log(t);
    }
</script>

</html>