<%-- 
    Document   : index
    Created on : 16 Jun 2026, 2:21:03 PM
    Author     : MP3 LECT
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>DriveSmart Academy - Home</title>
    <link rel="stylesheet" type="text/css" href="styles.css"> <!-- optional -->
</head>
<body>
<!-- Include static header -->
<%@ include file="header.html" %>

<!-- Navigation Menu -->
<div style="padding: 40px; text-align: center;">
    <h2>Welcome to DriveSmart</h2>
    <p>Select a module to get started:</p>
    <ul style="list-style: none; padding: 0;">
        <li style="margin: 15px 0;">
            <a href="book_session.jsp" style="background-color: #00897b; color: white; padding: 12px 30px; text-decoration: none; border-radius: 5px;">📅 Book a Training Session</a>
        </li>
        <li style="margin: 15px 0;">
            <a href="ScheduleServlet" style="background-color: #00695c; color: white; padding: 12px 30px; text-decoration: none; border-radius: 5px;">📊 View Centralized Schedule</a>
        </li>
    </ul>
</div>
<%@ include file="footer.jsp" %>
