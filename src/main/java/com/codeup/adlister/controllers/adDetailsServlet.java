package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet ("/ads/detailed")
public class adDetailsServlet extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        long id = Long.parseLong(req.getParameter("id"));// id for button has to be ${Ad.id}
//
//        // - Storing the ad being selected in this req obj so it can be displayed in the adDetails.jsp
//        Ad ad = DaoFactory.getAdsDao().getAdById(id); // - Need to create a getAdById method
//        req.setAttribute("ad", ad);                //   in the interface and define it
//                                                      //   in the MySQLAdsDao
        req.getRequestDispatcher("/WEB-INF/ads/detailed.jsp").forward(req, resp);
    }

//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
//        Long adId  = request.getParameter(id);
//        Ad ad = DaoFactory.getAdsDao().getAdById(adId);
//
//        response.sendRedirect("/ads/detailed");
//
//    }

}
