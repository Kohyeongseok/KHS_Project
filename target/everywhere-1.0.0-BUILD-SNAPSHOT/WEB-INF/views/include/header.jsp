<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" />
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap')
	;

* {
	margin: 0;
	font-family: "Noto Sans KR", sans-serif;
}

a {
	text-decoration: none;
}

img {
	display: block;
}

ul, li {
	padding: 0;
	list-style: none;
	margin: 0;
}

/*해더*/
.header_gnb {
	width: 100%;
	display: flex;
	justify-content: center;
	background-color: #fff;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

.header_gnb .header_wrap {
	width: 100%;
	max-width: 57rem;
	height: 3.5rem;
	padding: 10px 0;
	display: flex;
	justify-content: center;
	align-items: center;
	position: fixed;
	background-color: white;
	z-index: 100;
}

.header_gnb .header_container {
	width: 100%;
	padding: 0 10px;
	display: flex;
	justify-content: space-between;
	align-items: center;
}

.header_container .logo_img img {
	width: 210px;
}

.header_container .menu_icon {
	cursor: pointer;
}

.header_container .login a {
	font-size: 14px;
}

.header_container span {
	color: black;
}
</style>
<script>
function toggleSitemap() {
    const sitemap = document.getElementById('sitemap');
    sitemap.classList.toggle('active');
}

function closeSitemap() {
    const sitemap = document.getElementById('sitemap');
    sitemap.classList.remove('active');
}
</script>
</head>


<body>

	<header class="header_gnb">
		<div class="header_wrap">
			<div class="header_container">
				<div class="menu_icon" onclick="toggleSitemap()">
					<span class="material-symbols-outlined">menu</span>
				</div>

				<div class="logo_img">
					<a href="/index"> <img src="${pageContext.request.contextPath}/resources/img/logo.png" alt="logo">
					</a>
				</div>

				<div class="login">
					<a href=""> <span class="material-symbols-outlined">home</span>
					</a>
				</div>
			</div>
		</div>
	</header>
	
	<%@ include file="/WEB-INF/views/include/sitemap.jsp"%>

</body>
</html>