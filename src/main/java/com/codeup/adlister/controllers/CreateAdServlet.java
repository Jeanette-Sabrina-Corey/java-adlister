package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

@WebServlet(name = "controllers.CreateAdServlet", urlPatterns = "/ads/create")
public class CreateAdServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
            return;
        }
        request.getRequestDispatcher("/WEB-INF/ads/create.jsp")
            .forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        User user = (User) request.getSession().getAttribute("user");
            String title = request.getParameter("title");
            String description = request.getParameter("description");
        List<String> categoriesList = Arrays.asList(request.getParameterValues("category"));



        Ad ad = new Ad();
        ad.setTitle(title);
        ad.setDescription(description);
        ad.setCategoryIds(categoriesList);
        DaoFactory.getAdsDao().insert(ad);
        response.sendRedirect("/ads");
    }
}
