<%-- 
    Document   : index
    Created on : 08-may-2014, 20:55:31
    Author     : juan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <p>pageContext.request.contextPath</p>
        <c:out value="${pageContext.request.contextPath}" />
         <hr>
        <p>pageContext.request.requestURL</p>
        <c:out value="${pageContext.request.requestURL}" />
         <hr>
        <p>Variables inexistentes</p>
        <c:out value="${mivariable}" default="variable no encontrada" />
         <hr>
        <p>Asignar valor a variable y mostrarla</p>
        <c:set var="mivariable" value="Soy Juan" />
        <c:out value="${mivariable}" default="variable no encontrada" />
         <hr>
         <p>Condicion if simple</p>
        <c:set var="valor" value="4" />
        <c:if test="${valor=='4'}">Valor 4</c:if>
        <hr>
         <p>Condicion if - else</p>
        <c:set var="valor" value="7" />
        <c:choose>
            <c:when test="${valor<5}">Menor que 5</c:when>
            <c:when test="${valor>5}">Mayor que 5</c:when>
            <c:otherwise >Valor igual a 5</c:otherwise>
        </c:choose>
         <hr>
         <p>Bucle for each</p> 
         <c:forEach begin="1" end="20" step="2" var="hora" varStatus="status">
             <c:out value="${hora}" />
             
         </c:forEach>
            
    </body>
</html>
