package com.learnersAcademy.web;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.learnersAcademy.bean.GetDataBean;
import com.learnersAcademy.database.GetDataDao;

/**
 * Servlet implementation class GetDataServlet
 */
@WebServlet("/GetDataServlet")
public class GetDataServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    private GetDataDao getDataDao;
    
    public void init() {
    	getDataDao = new GetDataDao();
    }
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    	    throws ServletException, IOException {
    	        doGet(request, response);
    	    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    	    throws ServletException, IOException {
    	        String action = request.getServletPath();
    	        
    	        try {
    	        	classReport(request,response);
    	        }
    	        catch (SQLException ex) {
    	            throw new ServletException(ex);
    	        }
    	         	      
    }
    
    private void classReport(HttpServletRequest request, HttpServletResponse response)
    	    throws SQLException, IOException, ServletException {
    	        List < GetDataBean > data = getDataDao.getFinalReport();
    	        request.setAttribute("data", data);
    	        RequestDispatcher dispatcher = request.getRequestDispatcher("loginSuccess.jsp");
    	        dispatcher.forward(request, response);
    	    }

}
