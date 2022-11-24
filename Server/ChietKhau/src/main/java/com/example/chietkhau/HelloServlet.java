package com.example.chietkhau;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "ProductServlet", value = "/product-servlet")
public class HelloServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String des = req.getParameter("des");
        float price = Float.parseFloat(req.getParameter("price"));
        float discount = Float.parseFloat(req.getParameter("discount"));
        float discountPrice = price*discount/100;
        float priceDiscount =price - discountPrice;

        PrintWriter writer = resp.getWriter();
        writer.println("<html>");
        writer.println("<h1>Description: " + des + "</h1>");
        writer.println("<h1>Discount Amount: " + discountPrice + "</h1>");
        writer.println("<h1>Discount Price: " + priceDiscount + "</h1>");
        writer.println("</html>");
    }

    public void destroy() {
    }
}