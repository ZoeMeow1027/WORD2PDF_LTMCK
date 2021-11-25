package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = { "/dashboard" })
public class Dashboard extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    protected void doGet(
        HttpServletRequest request,
        HttpServletResponse response
    ) throws ServletException, IOException
    {
        model.bo.Data data = new model.bo.Data();

        // TODO: Replace user here.
        request.setAttribute("data", data.getStatusFromUser("admin"));
        String urlTarget = "/dashboard.jsp";
        RequestDispatcher rd = getServletContext().getRequestDispatcher(urlTarget);
		rd.forward(request, response);
    }
}
