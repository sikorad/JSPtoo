<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<c:catch var="errorMsg">	
 			<% int x = 50 / 0; %>	
 	</c:catch>
	<p>${errorMsg}</p>
	
	<c:set var="msg" value="This is msg from get" />
	 	<c:remove var="msg"/> 
	<c:out value="${msg }"></c:out>

	<c:set var="age" value='17'/>
	<c:if test = "${age>=18}">
		<c:out value="take a beer">
		</c:out>
	</c:if>
	<c:if test = "${age<18}">
		<c:out value="no beer for child!">
		</c:out>
	</c:if>
	<br />
	
	<c:set var="victor" value="${7}"/>
	<c:set var="nicolas" value="${16}"/>
	<c:set var="melita" value="${18}"/>
	<c:choose>
		<c:when test="${victor>nicolas }">
			<c:out value="Victor is older than Nicolas"></c:out>
		</c:when>
		
		<c:when test="${victor>melita }">
			<c:out value="Victor is older than Nicolas"></c:out>
		</c:when>
		<c:otherwise>
			<c:out value="Victor is the youngest!"></c:out>
		</c:otherwise>
	</c:choose>
	<br />
	
	<c:forEach var="i" begin="1" end = "10" step = "3">
		<c:out value="${i}">
		</c:out>
		<br />
	</c:forEach>
	<br />
	
	<c:forTokens items="Superman, Batman, Spiderman" delims="," var="superHero">
		<c:out value="${superHero}">
		<br />
		</c:out>
	</c:forTokens>
	
</body>
</html>