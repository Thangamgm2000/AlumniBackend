<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<nav class="navbar navbar-expand-sm bg-light navbar-light fixed-top" style="padding:0;">
    <a class="navbar-brand" href="index.jsp">
        <img src="img/Amrita-vishwa-vidyapeetham-color-logo.png" alt="logo" style="max-width:30%;
        height:auto;padding:0; padding-left: 5%" class="d-inline-block align-top"/>
    </a>

    <a class="navbar-brand" href="index.jsp" style="padding:0;">
        <span><img src="img/navbarTitle.png" style="width: 70%"/></span>
    </a>
    <ul class="navbar-nav ml-auto">
        <c:if test="${not empty rollNumber}">
            <button type="button" class="btn btn-light" style='padding:0'>
                <a class="nav-link" href="/ProfileServe">Profile</a>
            </button>
        </c:if>
        <button type="button" class="btn btn-light" style='padding:0'>
            <a class="nav-link" href="search_bar.jsp">Search</a>
        </button>

        <button type="button" class="btn btn-light" style='padding:0'>
            <a class="nav-link" href="upcoming_events.jsp">Events</a>
        </button>
        <c:if test="${not empty rollNumber}">
            <button type="button" class="btn btn-light" style='padding:0'>
                <a class="nav-link" href="broadcast.jsp">Broadcast</a>
            </button>
        </c:if>
        <button type="button" class="btn btn-light" style='padding:0'>
            <a class="nav-link" href="Aboutus.jsp">Contact</a>
        </button>
        <c:if test="${empty rollNumber}">
            <button type="button" class="btn btn-warning" style='margin: 10px;'>
                <a class="nav-link" href="login_page.jsp">Login</a>
            </button>
        </c:if>
        <c:if test="${not empty rollNumber}">
            <button type="button" class="btn btn-danger" style='margin: 10px;'>
                <a class="nav-link" href="/Logout">Logout</a>
            </button>
        </c:if>
    </ul>
</nav>