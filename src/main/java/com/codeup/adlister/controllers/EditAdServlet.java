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

@WebServlet("/edit")
public class EditAdServlet extends HttpServlet {
  @Override
  protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    req.getRequestDispatcher("/WEB-INF/ads/edit.jsp").forward(req,resp);
  }

  @Override
  protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    Ad edit = (Ad) req.getSession().getAttribute("id");
    User user = DaoFactory.getUsersDao().getUserById((int)edit.getUserId());

    long ad_id = edit.getId();
    long user_id = user.getId();
    String updateTitle = req.getParameter("new_title");
    String updateDescription = req.getParameter("new_description");

    Ad updateAd = new Ad(
      ad_id,
      user_id,
      updateTitle,
      updateDescription);

    DaoFactory.getAdsDao().edit(updateAd);
    resp.sendRedirect("/ads");



  }
}
