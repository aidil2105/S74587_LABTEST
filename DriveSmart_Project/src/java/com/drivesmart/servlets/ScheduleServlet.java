/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.drivesmart.servlets;

/**
 *
 * @author MP3 LECT
 */
import com.drivesmart.beans.SessionBean;
import com.drivesmart.dao.SessionDAO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import javax.servlet.RequestDispatcher;
import java.io.IOException;
import java.util.List;

@WebServlet("/ScheduleServlet")
public class ScheduleServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Retrieve all sessions from DAO
        SessionDAO dao = new SessionDAO();
        List<SessionBean> sessionList = dao.getAllSessions();

        // Set as request attribute
        request.setAttribute("sessionList", sessionList);

        // Forward to schedule.jsp
        RequestDispatcher dispatcher = request.getRequestDispatcher("schedule.jsp");
        dispatcher.forward(request, response);
    }
}
