package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/profile-edit")
public class EditProfileServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("id");// this may need to be changed but the value should be ${sessionScope.user.username}

        User user = DaoFactory.getUsersDao().findByUsername(username);
        req.setAttribute("user", user);

        req.getRequestDispatcher("/WEB-INF/users/edit-profile.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        String passwordConfirmation = req.getParameter("confirm_password");

        int id = req.getSession().getAttribute("userId");

        boolean inputHasErrors =
                username.isEmpty()
                || email.isEmpty()
                || password.isEmpty()
                || (! password.equals(passwordConfirmation));

        if (inputHasErrors) {
            resp.sendRedirect("/profile-edit");
            return;
        }
//        DaoFactory.getUsersDao().update(username, email, password, id);
        resp.sendRedirect("/profile");
    }
}
