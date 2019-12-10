package cbb.service.Impl;

import cbb.dao.GoodDao;
import cbb.domain.Good;
import cbb.service.GoodService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class GoodServiceImpl implements GoodService {

    @Autowired
    GoodDao goodDao;

    @Override
    public List<Good> findAll(int page,int size) {
        return goodDao.findAll();
    }

    @Override
    public void deleteGoodById(String id) {
        goodDao.deleteGoodById(id);
    }

    @Override
    public Good findGoodById(String id) {
        return goodDao.findGoodById(id);
    }

    @Override
    public void updateGoodById(Good good) {
        goodDao.updateGoodById(good);
    }
}
