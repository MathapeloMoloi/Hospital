/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hospitalController;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import hospitalServices.ReceptionistService;
import java.util.Date;
import javax.servlet.RequestDispatcher;
/**
 *
 * @author Lee
 */
@WebServlet(name = "UpdatePatient", urlPatterns = {"/UpdatePatient"})
public class UpdatePatient extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String pNo = request.getParameter("pNo");
        String name = request.getParameter("name");
        String surname = request.getParameter("surname");
        String streetName = request.getParameter("sName");
        int houseNo = Integer.parseInt(request.getParameter("hNo"));
        String city = request.getParameter("city");
        int cell = Integer.parseInt(request.getParameter("cell"));
        char[] sex = request.getParameter("sex").toCharArray();
        char[] maritStatus = request.getParameter("mStatus").toCharArray();
        String admissionStatus = request.getParameter("aStatus");
        Date d = new Date();
        
        ReceptionistService c = new ReceptionistService();
        c.updatePatient(pNo, name, surname, streetName,houseNo, city, cell, sex[0], maritStatus[0], admissionStatus);
        RequestDispatcher rd = request.getRequestDispatcher("patients.jsp");
        rd.forward(request,response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

//public class UpdatePatient {
    
//}
