<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. -->
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!-- Formatting (dates) -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />

    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="/css/style.css" />
    <!-- change to match your file/naming structure -->
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/js/app.js"></script>
    <!-- change to match your file/naming structure -->
    <!-- google font add in -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Arvo:wght@700&display=swap"
      rel="stylesheet"
    />

    <title>Fortune Result</title>
  </head>
  <body class="m-4 mx-5">
      <h1>✧･ﾟ: *✧･ﾟ:*    Your Omikuji   ✧･ﾟ: *✧･ﾟ:*</h1>
    </span>
<div class="card">
    <div class="card-body" id="message-block">
        In <c:out value="${number}"/> years, you will live in <c:out value="${city}"/> with <c:out value="${personName}"/> as your roomate,
        <c:out value="${hobby}"/> for a living. The next time, you will have good luck.
        Also, <span><c:out value="${message}"/></span>!
    </div>
</div>
<div class="d-grid gap-2 col-2 mx-auto">
  <a class="btn btn-primary" href="#" role="button">Go Back</a>
</div>
  </body>
</html>
