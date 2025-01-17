<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>

<!DOCTYPE html>
<html>
<head>
<title>로그인</title>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" />
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap');

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

.content_zone {
	width: 100%;
	display: flex;
	justify-content: center;
}

.content_zone .content_zone_wrap {
	width: 100%;
	max-width: 57rem;
	display: flex;
	justify-content: center;
}

.content_zone1 {
	margin-top: 7rem;
}

body {
	font-family: Arial, sans-serif;
}

.login_container {
	width: 300px;
	margin: 0 auto;
	padding-top: 100px;
}

.login_container h1 {
	display: flex;
	justify-content: center;
	text-align: center;
	margin-bottom: 20px;
}

button {
	width: 100%;
	padding: 10px;
	margin: 5px 0;
	border: none;
	cursor: pointer;
	font-size: 16px;
}

.kakao_btn {
	background-color: #FFEB00;
	
}

.naver_btn {
	background-color: #03C75A;
	color: white;
}

.email_btn {
	background-color: #1273E4;
	color: white;
}

.b2b_btn {
	background-color: #FFFFFF;
	color: black;
}

#input_id {
	font-weight: bold;
	text-align: center;
}

#input_pw {
	font-weight: bold;
	text-align: center;
}

#input_id input[type="text"],
#input_pw input[type="password"] {
	width: 100%;
	border-radius: 4px;
	text-align: center;
	margin-bottom: 10px;
	height: 30px;
	border: 1px solid black;
}

hr {
	color: #858585;
	margin-bottom: 10px;
}
</style>
</head>

<script type="text/javascript"
    src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js"
    charset="utf-8"></script>
	
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<body>
	<%@ include file="/WEB-INF/views/include/header.jsp"%>
	<section class="content_zone content_zone1">
		<div class="content_zone_wrap">
			<%
				// 로그인 상태 체크
				HttpSession session = request.getSession(false);
				if (session != null && session.getAttribute("loginUser") != null) {
					// 세션에 로그인 사용자 정보가 있을 경우
					// 서버에 로그아웃 요청
					session.invalidate(); // 세션 무효화
					response.sendRedirect("/logout"); // 로그아웃 후 리다이렉트
					return;
				}
				
			%>
			<div class="login_container">
				<h1>방방곡곡</h1>
				<hr>
				<p id="input_id">
					아이디 <br>
					<input type="text" placeholder="아이디 입력"><br>
				</p>
				<p id="input_pw">
					비밀번호 <br> <input type="password" placeholder="비밀번호 입력"><br>
				</p>

				<!-- 카카오 로그인 버튼 -->
				<button id="kakaoLoginButton" class="kakao_btn">카카오 로그인</button>

				<script type="text/javascript">
    window.onload = function() {
    	 
        // URL 해시 부분에서 액세스 토큰 추출
        var hash = window.location.hash.substr(1);
        var params = new URLSearchParams(hash);
        var accessToken = params.get('access_token');
        var state = params.get('state');

        if (accessToken && state) {
            // 액세스 토큰과 상태를 서버로 전송
            var xhr = new XMLHttpRequest();
            xhr.open('POST', '/naver/callback', true);
            xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
            xhr.send('accessToken=' + encodeURIComponent(accessToken) + '&state=' + encodeURIComponent(state));

            // 페이지 리디렉션 (필요시)
            window.location.href = '/index';
        }
        
    }
    </script>
				<script>
                    document.addEventListener('DOMContentLoaded', function() {
                        const kakaoApiKey = "${kakaoApiKey}";
                        window.Kakao.init(kakaoApiKey);
                        console.log("카카오 API [정상]");
                        forceKakaoUnlink();
                        
                        // 카카오 로그인 상태 확인
                        const accessToken = window.Kakao.Auth.getAccessToken();
                        if (accessToken) {
                            console.log("현재 Kakao Access Token:", accessToken);
                            // 로그인 상태 확인
                            checkKakaoLogin();
                        } else {
                            console.log("카카오 로그인 [가능]");
                        }

                        // 카카오 로그인 버튼 이벤트 리스너
                        const kakaoLoginButton = document.getElementById('kakaoLoginButton');
                        if (kakaoLoginButton) {
                            kakaoLoginButton.addEventListener('click', kakaoLogin);
                        } else {
                            console.warn("kakaoLoginButton 요소를 찾을 수 없습니다.");
                        }

                        // 페이지 로드 시 카카오 로그아웃 처리
                        kakaoLogout();
                        
                    });
                   

                    function checkKakaoLogin() {
                        const accessToken = window.Kakao.Auth.getAccessToken();
                        if (accessToken) {
                            window.Kakao.API.request({
                                url: '/v2/user/me',
                                success: function(res) {
                                    console.log("로그인 상태로 확인됨", res);
                                },
                                fail: function(error) {
                                    console.error("사용자 정보 요청 실패", error);
                                    // 실패 시 로그아웃 처리 등 추가 작업
                                    kakaoLogout();
                                }
                            });
                        } else {
                            console.log("로그인 상태가 아닙니다.");
                        }
                    }

                    function kakaoLogin() {
                        // 로그아웃 후에도 매번 로그인 창을 띄우기 위해 추가
                        window.Kakao.Auth.setAccessToken(null); 

                        window.Kakao.Auth.login({
                            scope: 'profile_nickname, profile_image',
                            throughTalk: false,  // 강제로 로그인 창을 띄움
                            success: function(authObj) {
                                console.log("로그인 성공", authObj);
                                window.Kakao.API.request({
                                    url: '/v2/user/me',
                                    success: function(res) {
                                        const kakao_account = res.kakao_account;
                                        console.log("사용자 정보", kakao_account);

                                        fetch('/kakao/callback', {
                                            method: 'POST',
                                            headers: {
                                                'Content-Type': 'application/x-www-form-urlencoded',
                                            },
                                            body: 'accessToken=' + authObj.access_token,
                                        }).then(response => {
                                            if (response.redirected) {
                                                window.location.href = response.url;
                                            } else {
                                                window.location.href = '/index'; // 로그인 후 리디렉션할 페이지
                                            }
                                        });
                                    },
                                    fail: function(error) {
                                        console.error("API 요청 실패", error);
                                    }
                                });
                            },
                            fail: function(error) {
                                console.error("로그인 실패", error);
                            }
                        });
                    }
                    

                    function kakaoLogout() {
                        const accessToken = window.Kakao.Auth.getAccessToken();
                        if (!accessToken) {
                            return;
                        }

                        window.Kakao.Auth.logout(function() {
                            console.log("카카오 로그아웃 성공");

                            // 강제로 카카오 세션 삭제
                            window.Kakao.Auth.setAccessToken(null);
                            clearStorage(); // 로컬 저장소 및 쿠키 삭제

                            // 서버 세션 무효화 요청
                            fetch('/logout', {
                                method: 'GET',
                            }).then(response => {
                                if (response.ok) {
                                    console.log("서버 세션도 정상적으로 무효화되었습니다.");
                                    // 로그아웃 후 로그인 페이지로 리디렉션
                                    window.location.href = "/js/login"; 
                                } else {
                                    console.error("서버 로그아웃 실패");
                                }
                            }).catch(error => {
                                console.error("서버 로그아웃 요청 중 오류 발생", error);
                            });
                        }, function(error) {
                            console.error("카카오 로그아웃 오류", error);
                            forceLogout(); // 오류 발생 시 강제 로그아웃 처리
                        });
                    }
                    
                    function forceKakaoUnlink() {
                        const accessToken = window.Kakao.Auth.getAccessToken();
                        if (!accessToken) {
                            console.log("로그아웃 [정상]");
                            return;
                        }

                        window.Kakao.API.request({
                            url: '/v1/user/unlink',
                            success: function (response) {
                                console.log("카카오 계정 연결 해제 완료", response);
                                kakaoLogout(); // 연결 해제 후 다시 로그아웃 실행
                            },
                            fail: function (error) {
                                console.error("카카오 계정 연결 해제 실패", error);
                            }
                        });
                    }

                    // 강제 로그아웃 처리 함수
                    function forceLogout() {
                        clearStorage(); // 모든 세션 및 쿠키 제거
                        window.Kakao.Auth.setAccessToken(null); // 카카오 토큰 삭제
                        window.location.href = "/js/login"; // 로그인 페이지로 리디렉션
                    }

                    // 쿠키, 세션, 로컬스토리지 삭제
                    function clearStorage() {
                        // 로컬 저장소와 세션 저장소 클리어
                        localStorage.clear();
                        sessionStorage.clear();
                        console.log("LocalStorage와 SessionStorage가 클리어되었습니다.");

                        // 쿠키 클리어
                        document.cookie.split(";").forEach(function(c) {
                            document.cookie = c.replace(/^ +/, "").replace(/=.*/, "=;expires=Thu, 01 Jan 1970 00:00:00 GMT;path=/;domain=" + window.location.hostname);
                        });
                        console.log("쿠키가 클리어되었습니다.");
                    }
                    
                    
                </script>

				<!-- 네이버 로그인 버튼 -->
				<form method="get" action="/naver/callback">
					<div id="naver_id_login"></div>
					<button type="button" onclick="location.href='${url}'"
						class="naver_btn">네이버 로그인</button>
					<button type="button" onclick="location.href='/email'"
						class="email_btn">이메일로 시작하기</button>
					<button type="button" onclick="location.href='/b2b'"
						class="b2b_btn">관리자 로그인/회원가입</button>
				</form>
			</div>
		</div>
	</section>
</body>
</html>
