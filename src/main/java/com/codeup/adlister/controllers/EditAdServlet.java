package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.Ads;
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
    long id = Long.parseLong(req.getParameter("edit"));
    Ad ad = DaoFactory.getAdsDao().getAdById(id);
    req.setAttribute("ad", ad);

    req.getRequestDispatcher("/WEB-INF/ads/edit.jsp").forward(req, resp);
  }

  @Override
  protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    long id = Long.parseLong(req.getParameter("edit"));
    String updateTitle = req.getParameter("new_title");
    String updateDescription = req.getParameter("new_description");
      Ad updateAd = new Ad();
      updateAd.setTitle(updateTitle);
      updateAd.setDescription(updateDescription);
      updateAd.setId(id);
    boolean inputHasErrors =
      updateTitle.isEmpty() || updateDescription.isEmpty();

    if (inputHasErrors) {
      resp.sendRedirect("/edit");
      return;
  }
      DaoFactory.getAdsDao().edit(updateAd);


      resp.sendRedirect("/profile");

    }
  }

