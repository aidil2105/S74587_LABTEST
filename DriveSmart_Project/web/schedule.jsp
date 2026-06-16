<%-- 
    Document   : schedule
    Created on : 16 Jun 2026, 2:21:25 PM
    Author     : MP3 LECT
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List, com.drivesmart.beans.SessionBean" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Training Schedule - DriveSmart</title>
    <style>
        table { border-collapse: collapse; width: 100%; }
        th, td { border: 1px solid #ddd; padding: 8px; text-align: left; }
        th { background-color: #004d40; color: white; }
        tr:nth-child(even){background-color: #f2f2f2;}
    </style>
</head>
<body>
<%@ include file="header.html" %>

<div style="padding: 30px;">
    <h2>Centralized Schedule</h2>

    <table>
        <thead>
            <tr>
                <th>Session ID</th>
                <th>Student Name</th>
                <th>Branch Location</th>
                <th>Lesson Type</th>
                <th>Status</th>
            </tr>
        </thead>
        <tbody>
            <% 
                List<SessionBean> list = (List<SessionBean>) request.getAttribute("sessionList");
                if (list != null && !list.isEmpty()) {
                    for (SessionBean session : list) { 
            %>
                <tr>
                    <td><%= session.getSessionId() %></td>
                    <td><%= session.getStudentName() %></td>
                    <td><%= session.getBranchLocation() %></td>
                    <td><%= session.getLessonType() %></td>
                    <td><%= session.getStatus() %></td>
                </tr>
            <% 
                    } 
                } else { 
            %>
                <tr>
                    <td colspan="5" style="text-align: center;">No training sessions found.</td>
                </tr>
            <% } %>
        </tbody>
    </table>

    <br>
    <a href="index.jsp">← Back to Home</a>
</div>

<%@ include file="footer.jsp" %>

</body>
</html>
