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
    <title>Omikuji Form</title>
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
  </head>
  <body class="m-4 mx-5">
    <h1>🥠 Omikuji Form 🔮</h1>
    <div class="card">
      <div class="card-body">
        <h4><em>*:･ﾟ✧*:･ﾟ✧ Send an omikuji! *:･ﾟ✧*:･ﾟ✧ </em></h4>
        <form action="/omikuji/send" method="POST">
          <div class="mb-3">
            <label for="number" class="form-label"
              >Pick any number from 5 to 25</label
            >
            <input
              type="number"
              class="form-control"
              name="number"
              min="5"
              max="25"
              placeholder="Pick a number..."
            />
          </div>
          <div class="mb-3">
            <label for="city" class="form-label"
              >Enter the name of any city</label
            >
            <input
              type="text"
              class="form-control"
              name="city"
              placeholder="Enter city here..."
            />
          </div>
          <div class="mb-3">
            <label for="personName" class="form-label"
              >Enter the name of any real person</label
            >
            <input
              type="text"
              class="form-control"
              name="personName"
              placeholder="Enter name here..."
            />
          </div>
          <div class="mb-3">
            <label for="hobby" class="form-label"
              >Enter professional endeavor or hobby</label
            >
            <input
              type="text"
              class="form-control"
              name="hobby"
              placeholder="Enter the hobby here..."
            />
          </div>
          <div class="mb-3">
            <label for="animal" class="form-label"
              >Enter any type of living thing</label
            >
            <input
              type="text"
              class="form-control"
              name="animal"
              placeholder="Enter the animal/creature here..."
            />
          </div>
          <div class="form-floating mb-3">
            <textarea
              class="form-control"
              name="message"
              style="height: 100px"
            ></textarea>
            <label for="message">Say something nice...</label>
          </div>
          <p><em>*:･ﾟ✧*:･ﾟ✧ Send and show a friend! *:･ﾟ✧*:･ﾟ✧</em></p>
          <button type="submit" class="btn btn-primary">Send</button>
        </form>
      </div>
    </div>
  </body>
</html>
