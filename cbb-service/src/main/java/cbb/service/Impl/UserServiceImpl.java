package cbb.service.Impl;

import cbb.dao.UserDao;
import cbb.domain.UserInfo;
import cbb.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;


    @Override
    public UserInfo findByUserId(String id) {
        return userDao.findByUserId(id);
    }

    @Override
    public UserInfo findByUserName(String username) {
        return userDao.findByUserName(username);
    }

    @Override
    public List<UserInfo> findAll() {
        return userDao.findAll();
    }

    @Override
    public void deleteByUserName(String username) {
        userDao.deleteByUserName(username);
    }


    @Override
    public void updateUserById(UserInfo user) {
        userDao.updateUserById(user);
    }

    @Override
    public void deleteByUserId(String id) {
        userDao.deleteByUserId(id);
    }
}
