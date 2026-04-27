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
		<h2>사용자 등록</h2>
		<form action="/Users/Write" method="get">
			<table>
				<tr>
					<td>사용자 아이디</td>
					<td><input type="text" name="userid"/></td>
				</tr>
				<tr>
					<td>사용자 password</td>
					<td><input type="password" name="password"/></td>
				</tr>
				<tr>
					<td>사용자 이름</td>
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
</body>
</html>