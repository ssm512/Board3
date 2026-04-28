<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>userWrite</title>
<link href="/css/common.css" rel="stylesheet">
<link rel="shortcut icon" href="/img/favicon.png" type="image/x-icon">
<style>
	table { width : 100%; }
	td {
		padding : 5px 10px;
		text-align : center;
		&:nth-of-type(1) {
			background : black;
			color : white;
			border : 1px solid white;
		}
	}
	tr:last-child > td {
	background : white;
	border : 1px solid black;
	}
	input[type=text], input[type=password], input[type=email] {
		width : 100%;
	}
	input[type=submit] {
	width:100px;
	}
	input[type=button] {
	width:100px;
	}
</style>
</head>
<body>
	<main>
		<h2>사용자 등록( ${msg} )</h2>
		<form action="/Users/Write" method="post">
			<table>
				<tr>
					<td><span class='red'>*</span> 사용자 아이디</td>
					<td><input type="text" name="userid"/></td>
				</tr>
				<tr>
					<td><span class='red'>*</span> 사용자 password</td>
					<td><input type="password" id="password" name="password"/></td>
				</tr>
				<tr>
					<td><span class='red'>*</span> 사용자 password 확인</td>
					<td><input type="password" id="password2"/></td>
				</tr>
				<tr>
					<td><span class='red'>*</span> 사용자 이름</td>
					<td><input type="text" name="username"/></td>
				</tr>
				<tr>
					<td>사용자 이메일</td>
					<td><input type="email" name="email"/></td>
				</tr>
				<tr>
					<td colspan="4">
						<input type="submit" value="추가"/>
						<input type="button" value="목록" 
						onclick ="window.location.href='/Users/List'"/>
					</td>
				</tr>
			</table>
		</form>	
	</main>
	<!-- Javascript 코딩 : client validation -->
	<script>
		/* 필요한것들 미리 찾고 */
		const	formEl					=	document.querySelector('form');
		const	useridEl				=	document.querySelector('[name="userid"]');
		const	passwordEl			=	document.querySelector('#password');
		const	password2El			=	document.querySelector('#password2');
		const	usernameEl			=	document.querySelector('[name="username"]');
		formEl.addEventListener('submit', function(e){
			// 아이디값 체크
			if ( useridEl.value.trim() == '' ) {
				alert('아이디를 입력하세요')
				useridEl.focus();
				e.preventDefault() // 이벤트 취소
				e.stopPropagation() // 이벤트 버블링 방지 
				return;
			}
			
			// 비밀번호값 체크
			if ( passwordEl.value.trim() == '' ) {
				alert('암호를 입력하세요')
				passwordEl.focus();
				e.preventDefault() // 이벤트 취소
				e.stopPropagation() // 이벤트 버블링 방지
				return;
			}
			
			// 비밀번호2값 체크
			if ( password2El.value.trim() == '' ) {
				alert('비밀번호 확인을 입력하세요')
				password2El.focus();
				e.preventDefault() // 이벤트 취소
				e.stopPropagation() // 이벤트 버블링 방지
				return;
			}
			
			// 비밀번호 == 비밀번호2 체크
			if ( passwordEl.value != password2El.value ) {
				alert('비밀번호가 일치하지 않습니다')
				password2El.focus();
				e.preventDefault() // 이벤트 취소
				e.stopPropagation() // 이벤트 버블링 방지
				return;
			}
			
			// 이름값 체크
			if ( usernameEl.value.trim() == '' ) {
				alert('사용자 이름을 입력하세요')
				usernameEl.focus();
				e.preventDefault() // 이벤트 취소
				e.stopPropagation() // 이벤트 버블링 방지
				return;
			}
		});
		
		
	</script>
	
</body>
</html>