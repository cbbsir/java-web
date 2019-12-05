package cbb.service;

import cbb.domain.UserInfo;

import java.util.List;

public interface UserService {

    UserInfo findByUserId(String id);

    UserInfo findByUserName(String username);

    List<UserInfo> findAll(int page,int size);

    void deleteByUserName(String username);


    void updateUserById(UserInfo user);


    void deleteByUserId(String id);
}
