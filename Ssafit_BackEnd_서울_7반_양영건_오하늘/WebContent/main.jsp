<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>SSAFIT</title>
<link rel="stylesheet" href="./main.css" />

<link
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
    rel="stylesheet"
    integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
    crossorigin="anonymous">
<link rel="stylesheet"
    href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
<!-- CSS only -->
<link
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
    rel="stylesheet"
    integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
    crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
    crossorigin="anonymous"></script>
</head>
<body>
    <header>
        <span class="header"> <span>SSAFIT</span>
        </span> <span style="float: right" class="header"> <i
            class="bi bi-person-plus-fill"></i> <i
            class="bi bi-box-arrow-in-right"></i>
        </span>
    </header>

    <div class="banner"></div>

    <main>
    <div class="main d-flex bd-highlight">
        <button type="button" id="title-btn" class="btn btn-outline-primary">
            <i class="bi bi-search"></i>
        </button>
        <input id="title-input" type="text"
            class="p-2 flex-grow-1 bd-highlight" placeholder="운동 제목 검색" />
    </div>

    <div class="main">
        <h4>최근 많이 본 영상</h4>
        <div class="container d-flex">
        <!--  jstl switch문으로 버튼 구별하고 해당 운동 부위 영상 2개 가져오기 -->
        <c:forEach items="${videoList}" var="video" varStatus="vs" begin="1" end="3" step="1">
            <div class="card bd-highlight w-100" id="video">
                <div class="card-body">
                    <iframe style="height: 300px width: 50px" src="${video.url}"></iframe>
                    <div class="d-flex justify-content-between">
                        <div style="white-space: nowrap; overflow: hidden;">
                        <a href="http://localhost:8080/Ssafit_BackEnd_서울_7반_양영건_오하늘/list.jsp?id=${video.id}">${video.title}</a>
                        </div>
                        <div style="width: 50px; text-align: right">
                            <i class="bi bi-eye"></i> <span>${data.clicks}</span>
                        </div>
                    </div>
                    <div class="d-flex justify-content-between">
                        <span style="color: grey">${video.part}</span> <span
                            style="color: grey">${video.channelName}</span>
                    </div>
                </div>
            </div>
        </c:forEach>
        </div>
    </div>
    <div class="d-flex">
        <button type="button" class="btn" id="popular-left">
            <i class="bi bi-arrow-left-circle"></i>
        </button>
        <div class="d-flex bd-highlight p-2 w-100" id="popular"></div>
        <button type="button" class="btn" id="popular-right">
            <i class="bi bi-arrow-right-circle"></i>
        </button>
    </div>
    
    <div class="main">
        <h4>운동 부위 선택</h4>
        <div class="buttons">
            <button type="button" id="btn-all" class="btn btn-outline-primary" >전신</button>
			<div class="d-flex">
				<button type="button" class="btn" id="part-left">
					<i class="bi bi-arrow-left-circle"></i>
				</button>
				<div class="d-flex bd-highlight p-2 w-100" id="part">
					<c:forEach items="${videoList}" var="video" varStatus="vs">
					<c:if test="${video.part=='전신'}">
						<div class="card bd-highlight w-100" id="video">
							<div class="card-body">
								<iframe style="height: 300px width: 50px" src="${video.url}"></iframe>
								<div class="d-flex justify-content-between">
									<div style="white-space: nowrap; overflow: hidden;">
                        <a href="http://localhost:8080/Ssafit_BackEnd_서울_7반_양영건_오하늘/list.jsp?id=${video.id}">${video.title}</a>
									</div>
									<div style="width: 50px; text-align: right">
										<i class="bi bi-eye"></i> <span>${data.clicks}</span>
									</div>
								</div>
								<div class="d-flex justify-content-between">
									<span style="color: grey">${video.part}</span> <span
										style="color: grey">${video.channelName}</span>
								</div>
							</div>
						</div>
					</c:if>
					</c:forEach>
				</div>
				<button type="button" class="btn" id="part-right">
					<i class="bi bi-arrow-right-circle"></i>
				</button>
			</div>
            
            <button type="button" id="btn-upper" class="btn btn-outline-primary">상체</button>

			<div class="d-flex">
				<button type="button" class="btn" id="part-left">
					<i class="bi bi-arrow-left-circle"></i>
				</button>
				<div class="d-flex bd-highlight p-2 w-100" id="part">
					<c:forEach items="${videoList}" var="video" varStatus="vs">
					<c:if test="${video.part=='상체'}">
						<div class="card bd-highlight w-100" id="video">
							<div class="card-body">
								<iframe style="height: 300px width: 50px" src="${video.url}"></iframe>
								<div class="d-flex justify-content-between">
									<div style="white-space: nowrap; overflow: hidden;">
                        <a href="http://localhost:8080/Ssafit_BackEnd_서울_7반_양영건_오하늘/list.jsp?id=${video.id}">${video.title}</a>
									</div>
									<div style="width: 50px; text-align: right">
										<i class="bi bi-eye"></i> <span>${data.clicks}</span>
									</div>
								</div>
								<div class="d-flex justify-content-between">
									<span style="color: grey">${video.part}</span> <span
										style="color: grey">${video.channelName}</span>
								</div>
							</div>
						</div>
					</c:if>
					</c:forEach>
				</div>
				<button type="button" class="btn" id="part-right">
					<i class="bi bi-arrow-right-circle"></i>
				</button>
			</div>

            <button type="button" id="btn-lower" class="btn btn-outline-primary">하체</button>
			<div class="d-flex">
				<button type="button" class="btn" id="part-left">
					<i class="bi bi-arrow-left-circle"></i>
				</button>
				<div class="d-flex bd-highlight p-2 w-100" id="part">
					<c:forEach items="${videoList}" var="video" varStatus="vs">
					<c:if test="${video.part=='하체'}">
						<div class="card bd-highlight w-100" id="video">
							<div class="card-body">
								<iframe style="height: 300px width: 50px" src="${video.url}"></iframe>
								<div class="d-flex justify-content-between">
									<div style="white-space: nowrap; overflow: hidden;">								
                        <a href="http://localhost:8080/Ssafit_BackEnd_서울_7반_양영건_오하늘/list.jsp?id=${video.id}">${video.title}</a>
									</div>
									<div style="width: 50px; text-align: right">
										<i class="bi bi-eye"></i> <span>${data.clicks}</span>
									</div>
								</div>
								<div class="d-flex justify-content-between">
									<span style="color: grey">${video.part}</span> <span
										style="color: grey">${video.channelName}</span>
								</div>
							</div>
						</div>
					</c:if>
					</c:forEach>
				</div>
				<button type="button" class="btn" id="part-right">
					<i class="bi bi-arrow-right-circle"></i>
				</button>
			</div>

            <button type="button" id="btn-abs" class="btn btn-outline-primary">복부</button>
			<div class="d-flex">
				<button type="button" class="btn" id="part-left">
					<i class="bi bi-arrow-left-circle"></i>
				</button>
				<div class="d-flex bd-highlight p-2 w-100" id="part">
					<c:forEach items="${videoList}" var="video" varStatus="vs">
					<c:if test="${video.part=='복부'}">
						<div class="card bd-highlight w-100" id="video">
							<div class="card-body">
								<iframe style="height: 300px width: 50px" src="${video.url}"></iframe>
								<div class="d-flex justify-content-between">
									<div style="white-space: nowrap; overflow: hidden;">
                        <a href="http://localhost:8080/Ssafit_BackEnd_서울_7반_양영건_오하늘/list.jsp?id=${video.id}">${video.title}</a>
									</div>
									<div style="width: 50px; text-align: right">
										<i class="bi bi-eye"></i> <span>${data.clicks}</span>
									</div>
								</div>
								<div class="d-flex justify-content-between">
									<span style="color: grey">${video.part}</span> <span
										style="color: grey">${video.channelName}</span>
								</div>
							</div>
						</div>
					</c:if>
					</c:forEach>
				</div>
				<button type="button" class="btn" id="part-right">
					<i class="bi bi-arrow-right-circle"></i>
				</button>
			</div>

        </div>
    </div>
    </main>
    <script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
        crossorigin="anonymous"></script>
    
</body>