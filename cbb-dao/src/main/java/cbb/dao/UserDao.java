package cbb.dao;

import cbb.domain.UserInfo;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface UserDao {

    @Select("select * from user where id=#{id}")
    UserInfo findByUserId(String id);

    @Select("select * from user where username=#{username}")
    @Results({
            @Result(id = true, property = "id", column = "id"),
            @Result(column = "username", property = "username"),
            @Result(column = "password", property = "password"),
            @Result(column = "id", property = "goods", javaType = List.class, many =
            @Many(select = "cbb.dao.OrderDao.findGoodsByUserId")) })
    UserInfo findByUserName(String username);

    @Select("select * from user")
    List<UserInfo> findAll();

    @Delete("delete from user where username=#{username}")
    void deleteByUserName(String username);

    @Delete("delete from user where id=#{id}")
    void deleteByUserId(String id);

    @Update("update user set username=#{username},password=#{password} where id=#{id}")
    void updateUserById(UserInfo user);
}
