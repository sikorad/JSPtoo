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

	<c:out value="93"></c:out>
	
	<c:catch var="errorMsg">
		
 			 int x = 50 / 0;
 		
 	</c:catch>
	
	<p>${errorMsg }</p>
	

	<c:set var="msg" value="This is msg from get" />
	<%-- 	<c:remove var="msg"/> --%>
	<c:out value="${msg }"></c:out>

	<c:set var="age" value='22'/>
	<c:if test = "${age>=18}">
		<c:out value="take a beer">
		</c:out>
	</c:if>
	<c:if test = "${age<18}">
		<c:out value="no beer for child!">
		</c:out>
	</c:if>

</body>
</html>