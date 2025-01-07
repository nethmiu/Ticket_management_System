package servlet;

import java.io.IOException;



import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.ticket;
import service.ticketservice;




@WebServlet("/addticket")
public class addticket extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public addticket() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ticket t1 = new ticket();
		t1.setRnum(request.getParameter("rn")); 
		t1.setName(request.getParameter("na"));
		t1.setEmail(request.getParameter("em"));
		t1.setSubject(request.getParameter("su"));
		t1.setDescip(request.getParameter("de"));
		
		
		
        ticketservice service = new ticketservice();
        service.raiseticket(t1);
        
        RequestDispatcher dispatcher = request.getRequestDispatcher("read.jsp");
        dispatcher.forward(request, response);
	}
	
	
}
