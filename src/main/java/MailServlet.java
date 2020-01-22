/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;
import java.util.Properties;
import javax.mail.BodyPart;
import javax.*;
import javax.mail.Message;
import javax.mail.Multipart;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author gills
 */
public class MailServlet extends HttpServlet {

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
        Enumeration<String> Params;

        String myEmail = "danielkeanekelly@gmail.com";

        String paramStr;
        List<String> ParamsList = new ArrayList<>();
        //handle contact form 
        Params = request.getParameterNames();
        while (Params.hasMoreElements()) {
            paramStr = Params.nextElement();

            if (!paramStr.equals("submit") && !paramStr.equals("mode")) {
                ParamsList.add(request.getParameter(paramStr));
            }
        }

        if (ParamsList.size() > 0) {
            String Email = ParamsList.get(0),
                    QuerySub = ParamsList.get(1),
                    QueryMsg = ParamsList.get(2);

            boolean res = SendEmail(myEmail, "Email from Homesite: " + QuerySub,
                    Email + ": <q>'" + QueryMsg + "'</q>");

            if (res) {
                request.setAttribute("resultContact", "Thank you for your query");
            } else {
                request.setAttribute("resultContact", "Error: Please try again");
            }
            request.getRequestDispatcher("/index.jsp").forward(request, response);
        }

    }

    boolean SendEmail(String toAdd, String Subject, String MessageData) {

        String result = "", fromAdd, pass;

        try {
            fromAdd = String.valueOf(System.getenv("email"));
            pass = String.valueOf(System.getenv("pass"));
        } catch (Exception e) {
            System.out.println(e.toString());
            return false;
        }

        if (pass == null) {
            return false;
        }

        Properties props = System.getProperties();
        props.put("mail.smtp.starttls.enable", true);
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.user", fromAdd);
        props.put("mail.smtp.password", pass);
        props.put("mail.smtp.port", "587");
        props.put("mail.smtp.auth", true);

        Session session = Session.getInstance(props, null);
        MimeMessage message = new MimeMessage(session);

        try {
            InternetAddress from = new InternetAddress(fromAdd);
            message.setSubject(Subject);
            message.setFrom(from);
            message.addRecipients(Message.RecipientType.TO, InternetAddress.parse(toAdd));
            Multipart multipart = new MimeMultipart("alternative");
            BodyPart messageBodyPart = new MimeBodyPart();
            messageBodyPart.setText(MessageData);
            multipart.addBodyPart(messageBodyPart);
            messageBodyPart = new MimeBodyPart();
            String htmlMessage = MessageData;
            messageBodyPart.setContent(htmlMessage, "text/html");
            multipart.addBodyPart(messageBodyPart);
            message.setContent(multipart);

            Transport transport = session.getTransport("smtp");
            transport.connect("smtp.gmail.com", fromAdd, pass);
            transport.sendMessage(message, message.getAllRecipients());

        } catch (Exception e) {
            result = e.toString();
        }

        return result.equals("");
    }

    private String readPassword() {
        String line, temp = "";
        ServletContext context = getServletContext();

        try {
            InputStream is = context.getResourceAsStream("/WEB-INF/pass.txt");
            if (is != null) {
                InputStreamReader in = new InputStreamReader(is);
                BufferedReader bufferedReader = new BufferedReader(in);

                while ((line = bufferedReader.readLine()) != null) {
                    temp += line;
                }
            }
        } catch (Exception ex) {
            System.out.println(ex.toString());
            return null;
        }

        return temp;
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
