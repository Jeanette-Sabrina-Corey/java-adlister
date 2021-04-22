package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;

import java.util.List;

public interface Ads {
    // get a list of all the ads
    List<Ad> all();
    // insert a new ad and return the new ad's id
    Long insert(Ad ad);
    void edit(Ad ad);
    Ad searchByTitle(String title);
    void delete(Ad ad);
    Ad getAdById(long id);
}
