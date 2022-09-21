<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>List</title>
  <link rel="stylesheet" href="./list.css" />
  <style>
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
	 <div class="video">
	  <iframe width="560" height="315" src="https://www.youtube.com/embed/<%= request.getParameter("id") %>" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen="">
	</iframe>
	</div>
    <hr>
    <div class="d-flex justify-content-between">
      <div class="submit">
        <a href="http://localhost:8080/Ssafit_BackEnd_서울_7반_양영건_오하늘/review.jsp?id=<%= request.getParameter("id") %>">글 작성</a>
      </div>
      <div class="search d-flex">
        <button class="btn btn-outline-primary"><i class="bi bi-search"></i></button>
        <input type="text" placeholder="제목 및 내용으로 검색">
      </div>
    </div>
    <hr>
    <div>
      <table class="table">
        <thead>
          <tr>
            <th scope="col">제목</th>
            <th scope="col">내용</th>
            <th>  </th>
          </tr>
          
          <c:set var="id" value="${ param.id }" />
          <c:forEach items="${ reviewList }" var="review">
			<c:if test="${review.videoId==id}">
			  <tr>
				<td>${ review.title }</td>
				<td>${ review.content }</td>
				<td> 
 				  <form method="post" action="ReviewServlet">
 				    <input type="hidden" name="action" value="delete" />
 				    <input type="hidden" name="id" value=<%= request.getParameter("id")%> />
      				<button type="submit">삭제</button>	
 				    <input type="hidden" name="reviewId" value="${ review.reviewId }" />
      			  </form>
				</td>
			  </tr>
			</c:if>
          </c:forEach>
        </thead>
        <tbody class="table-rows">
        </tbody>
      </table>
    </div>

  </div>
</body>

</html>