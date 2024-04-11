package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.Dao;
import dto.Task;
import dto.User;
@WebServlet("/delete")
public class Delete extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int taskid=Integer.parseInt(req.getParameter("taskid"));
		Dao dao=new Dao();
		
		try {
				HttpSession ses=req.getSession();
				User u1=(User)ses.getAttribute("user");
				if(u1!=null)
				{
					Task task =dao.findtaskid(taskid);
					if(task.getUserid()==u1.getUserid())
					{
						dao.deleteTask(taskid);
					
			   req.setAttribute("tasks", dao.getallTaskById(u1.getUserid()));
				RequestDispatcher disp=req.getRequestDispatcher("home.jsp");
				disp.include(req, resp);
				}
				
				else {
					resp.sendRedirect("logoutpage");
				}
				}else {
					resp.sendRedirect("login.jsp");
				}
		}
		catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
			
		
	

}
	}
