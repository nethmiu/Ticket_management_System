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




@WebServlet("/conform")
public class conform extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public conform() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ticket t1=new ticket();
		
		
		t1.setRnum(request.getParameter("rnum"));
		t1.setEmail(request.getParameter("email"));
		
		ticketservice service=new ticketservice();
		boolean status=service.validatedata(t1);
		
		if(status) {
			ticket confermedticket=service.getone(t1);
			RequestDispatcher dispatcher = request.getRequestDispatcher("viewticket.jsp");
			request.setAttribute("car",confermedticket);
			dispatcher.forward(request, response);
		}else {
			RequestDispatcher dispatcher = request.getRequestDispatcher("read.jsp");
			dispatcher.forward(request, response);
		}
		
		
	}

}
