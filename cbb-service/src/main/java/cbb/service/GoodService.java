package cbb.service;

import cbb.domain.Good;

import java.util.List;

public interface GoodService {
    List<Good> findAll(int page,int size);

    void deleteGoodById(String id);

    Good findGoodById(String id);

    void updateGoodById(Good good);
}
