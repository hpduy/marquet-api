package com.marqet.WebServer.servlet;

import com.marqet.WebServer.controller.ElementController;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by hpduy17 on 1/20/15.
 */
public class UpdatePointInfoServlet extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException{
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        try{
            long level1 = Long.parseLong(request.getParameter("level1"));
            long level2 = Long.parseLong(request.getParameter("level2"));
            long level3 = Long.parseLong(request.getParameter("level3"));
            long level4 = Long.parseLong(request.getParameter("level4"));
            ElementController controller = new ElementController();
            controller.changePointLevel(level1,level2,level3,level4);
            response.sendRedirect("element-information.marqet");
        }catch (Exception ex){
            ex.printStackTrace();
        }
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request,response);
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request,response);
    }
}