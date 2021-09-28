<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<header>
    <nav class="navbar navbar-expand-md navbar-dark bg-dark">
        <div class="container">
            <a class="navbar-brand" href="#">
                <h1>Gruby-</h1>
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup"
                aria-controls="navbarNavAltMarkup" aria-expanded="false">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                <div class="navbar-nav w-100">
                    <a class="nav-link active" href="#">menu1</a>
                    <a class="nav-link" href="#">menu2</a>
                    <a class="nav-link" href="#">menu3</a>
                    <a class="nav-link disabled">menu4</a>
                </div>
                <%-- <form action="/login" class="d-flex float-end">
                    <button class="btn btn-sm btn-outline-danger" type="submit">LOGIN</button>
                </form> --%>
                <div class="d-flex float-end">
                    <a href="http://localhost/oauth2/authorization/google" class="btn btn-sm btn-outline-danger"> GOOGLE </a>
                </div>
            </div>
        </div>
    </nav>
</header>