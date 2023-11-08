package dao;

import models.Ad;

public interface AdsDao {
    Ad getAdById(int id);

    void insertAd(Ad ad);
}
//    Your methods should retrieve ads from the database and insert new ads into the database