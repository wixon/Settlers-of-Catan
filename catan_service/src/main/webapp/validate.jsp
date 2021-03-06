<%-- 
    Document   : validate
    Created on : 6-apr-2013, 13:06:15
    Author     : Joachim
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<!--basename_locale.properties-->
<c:if test="${param.language == 'en'}">
  <fmt:setLocale value="en" scope="session" />
</c:if>
<c:if test="${param.language == 'fr'}">
  <fmt:setLocale value="fr" scope="session" />
</c:if>
<c:if test="${param.language == 'nl'}">
  <fmt:setLocale value="nl" scope="session" />
</c:if>
<fmt:setBundle basename="Messages.MessageResource" var="msg"/>
<fmt:setLocale value="${param.language}"/>
<html>
  <head>
    <title><fmt:message key="catanValidation" bundle="${msg}"/></title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon" />
  </head>
  <body>
    <div class="navbar navbar-static-top">
      <div class="navbar-inner">
        <div class="container">
          <a class="brand" href="#"><fmt:message key="soc" bundle="${msg}"/></a>
          <ul class="nav">
            <li><a href="index.jsp"><fmt:message key="lobby" bundle="${msg}"/></a></li>
            <li><a href="login.jsp"><fmt:message key="login" bundle="${msg}"/></a></li>
            <li><a href="register.jsp"><fmt:message key="register" bundle="${msg}"/></a></li>
          </ul>
          <form id="languageForm"  class="navbar-form pull-right" action="validate.jsp">
            <input type="button" onclick="setLanguage('en')" value="<fmt:message key="english" bundle="${msg}"/>">
            <input type="button" onclick="setLanguage('fr')" value="<fmt:message key="french" bundle="${msg}"/>">
            <input type="button" onclick="setLanguage('nl')" value="<fmt:message key="dutch" bundle="${msg}"/>">
            <input id="selectedLanguage" type="hidden" name="language"/>
          </form>
        </div>
      </div>
    </div>
    <div class="jumbotron subhead">
      <div  class="container">
        <h1><fmt:message key="validation" bundle="${msg}"/></h1>
      </div>
    </div>
    <div id="content">
      <div class="container">
        <div class="success" style="display: none;"><p><fmt:message key="validationSucces" bundle="${msg}"/></p><p><fmt:message key="returnLobby" bundle="${msg}"/></p></div>

        <div class="error" style="display: none;"><p><fmt:message key="validationError" bundle="${msg}"/></p></div>
      </div>
    </div>
    <footer id="footer" class="navbar navbar-static-bottom">
      <div class="container">
        <p class="text-center">Team 10</p>
      </div>
    </footer>

    <!-- scripts -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/javarest.js"></script>
    <script src="js/cookie.js"></script>
    <script src="js/user.js"></script>
    <script src="js/validate.js"></script>
    <script src="js/changeLanguage.js"></script>
  </body>
</html>
