package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.concurrent.atomic.DoubleAccumulator;

@WebServlet("/deleteAd")
public class DeleteAdsServlet extends HttpServlet {

  @Override
  protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    long id = Long.parseLong(req.getParameter("delete"));
    req.setAttribute("ad",DaoFactory.getAdsDao().getAdById(id));

  }

  @Override
  protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    long id = Long.parseLong(req.getParameter("delete"));
    System.out.println(id);
    DaoFactory.getAdsDao().delete(id);
    resp.sendRedirect("/profile");



  }


}
