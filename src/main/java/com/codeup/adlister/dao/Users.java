package com.codeup.adlister.dao;

import com.codeup.adlister.models.User;

import java.util.List;

public interface Users {
    User findByUsername(String username);
    Long insert(User user);
    void update(String username, String email, String password, int id);
    void delete(User user);
    User getUserById(long id);
}
