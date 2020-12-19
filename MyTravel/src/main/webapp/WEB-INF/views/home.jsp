<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>


<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>${title}</title>
  
  
    <link rel="stylesheet" type="text/css" href="/resources/css/user.css">
  <!-- Bootstrap core CSS -->
  <link href="/resources/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom styles for this template -->
  <link href="/resources/css/business-frontpage.css" rel="stylesheet">
 
  <!-- Google font -->
    <link href="https://fonts.googleapis.com/css?family=Dancing+Script" rel="stylesheet">
    
    <!-- Font Awesome-->
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">

</head>

<body>
	<jsp:include page="template/nav.jsp"/>
	
  	<jsp:include page="/WEB-INF/views/${view}.jsp"></jsp:include>
	
	<jsp:include page="template/footer.jsp"/>
  
  <!-- Bootstrap core JavaScript -->
<script src="https://code.jquery.com/jquery-2.1.0.min.js" ></script>
<script src="/resources/js/bootstrap.bundle.min.js"></script>
<script src="/resources/js/user.js"></script>

</body>

</html>