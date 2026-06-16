<%-- 
    Document   : book_session
    Created on : 16 Jun 2026, 2:21:14 PM
    Author     : MP3 LECT
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Book a Session - DriveSmart</title>
</head>
<body>
<%@ include file="header.html" %>

<div style="padding: 30px;">
    <h2>Book a Training Session</h2>
    <form action="BookSessionServlet" method="POST">
        <label for="student_name">Student Name:</label><br>
        <input type="text" id="student_name" name="student_name" required><br><br>

        <label for="branch_location">Branch Location:</label><br>
        <select id="branch_location" name="branch_location" required>
            <option value="">-- Select Branch --</option>
            <option value="Kuala Lumpur">Kuala Lumpur</option>
            <option value="Penang">Penang</option>
            <option value="Johor">Johor</option>
        </select><br><br>

        <label for="lesson_type">Lesson Type:</label><br>
        <select id="lesson_type" name="lesson_type" required>
            <option value="">-- Select Type --</option>
            <option value="Manual Car">Manual Car</option>
            <option value="Automatic Car">Automatic Car</option>
            <option value="Motorcycle">Motorcycle</option>
        </select><br><br>

        <input type="submit" value="Book Session" style="background-color: #004d40; color: white; padding: 10px 25px; border: none; border-radius: 5px;">
    </form>
    <br>
    <a href="index.jsp">← Back to Home</a>
</div>

<!-- Include dynamic footer (This file contains the closing </body> and </html>) -->
<%@ include file="footer.jsp" %>
