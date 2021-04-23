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
        String username = req.getParameter("username");
        long id = Long.parseLong(req.getParameter("editUser"));
        User user = DaoFactory.getUsersDao().getUserById(id);
        req.setAttribute("user", user);

        req.getRequestDispatcher("/WEB-INF/editProfile.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String email = req.getParameter("email");
        User user = (User) req.getSession().getAttribute("user");
        User updatedUser = new User();
        updatedUser.setUsername(username);
        updatedUser.setEmail(email);
        updatedUser.setId(user.getId());
        updatedUser.setPassword(user.getPassword());
        req.getSession().setAttribute("user", updatedUser);
        boolean inputHasErrors =
                username.isEmpty()
                || email.isEmpty();


        if (inputHasErrors) {
            resp.sendRedirect("/profile-edit");
            return;
        }
        DaoFactory.getUsersDao().update(updatedUser);
        resp.sendRedirect("/profile");
    }
}
