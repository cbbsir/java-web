package cbb.dao;

import cbb.domain.Good;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Service;

import java.util.List;

public interface GoodDao {

    @Select("select * from good")
    List<Good> findAll();

    @Delete("delete from good where id=#{id}")
    void deleteGoodById(String id);

    @Select("select * from good where id=#{id}")
    Good findGoodById(String id);

    @Update("update good set goodname=#{goodname},price=#{price},information=#{information} where id=#{id}")
    void updateGoodById(Good good);
}
