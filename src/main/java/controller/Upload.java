package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// https://openplanning.net/11069/upload-va-download-file-luu-tru-tren-o-cung-voi-java-servlet
@WebServlet(urlPatterns = { "/upload" })
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
       maxFileSize = 1024 * 1024 * 10, // 10MB
       maxRequestSize = 1024 * 1024 * 50) // 50MB
public class Upload extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private static final String HOME_DIRECTORY = "D:\\Documents\\ltmck";


    protected void doGet(
        HttpServletRequest request,
        HttpServletResponse response
    ) throws ServletException, IOException
    {
        String urlTarget = "/upload.jsp";
        RequestDispatcher rd = getServletContext().getRequestDispatcher(urlTarget);
		rd.forward(request, response);
    }

    protected void doPost(
        HttpServletRequest request,
        HttpServletResponse response
    ) throws ServletException, IOException
    {
        try {
           
            
        }
        catch (Exception ex) {

        }
    }
}
