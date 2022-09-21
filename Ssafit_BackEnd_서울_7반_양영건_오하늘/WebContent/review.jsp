<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Review</title>
  <link rel="stylesheet" href="./review.css" />
  <script type="text/javascript" src="./review.js"></script>
  <style>
    @import url('https://fonts.googleapis.com/css2?family=Gaegu&display=swap');
  </style>

  <!-- CSS only -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
</head>

<body>
  <div class="wrap">
    <h1><i class="bi bi-card-list" style="color:blue"></i> &nbsp운동영상 리뷰</h1>
    <hr>
    <form name="reviewform" class="reviewform" method="post" action="ReviewServlet">
      <input type="hidden" name="action" value="create" />
      <input type="hidden" name="id" id="rate" value="<%= request.getParameter("id") %>" />
      <div class="review_contents">
        <div class="warning_msg">제목과 내용을 작성해 주세요.</div>
        <textarea rows="1" name="title" class="review_title" id="review_title" placeholder="제목"></textarea>
        <br>
        <textarea rows="8" name="content" class="review_con" id="review_con" placeholder="내용"></textarea>
      </div>
      <div class="submit">
      <button type="submit">등록</button>
        <input type="button" name="cancel" id="cancel" value="취소">
      </div>
    </form>
  </div>
</body>

</html>