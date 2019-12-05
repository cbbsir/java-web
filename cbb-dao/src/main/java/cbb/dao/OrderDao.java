package cbb.dao;

import cbb.domain.Good;
import cbb.domain.OrderUserAndGoodName;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface OrderDao {

    @Insert("insert into `order`(userid,goodid) values(#{userid},#{goodid})")
    void addOrder(@Param("userid") String userid, @Param("goodid") String goodid);

    @Select("select * from good where id in (select goodid from `order` where userid=#{userId})")
    List<Good> findGoodsByUserId(String userId);

    @Select("select o.id,u.username,good.goodname,good.price from `order` o left join `user` u on o.userid=u.id left join good on o.goodid=good.id")
    List<OrderUserAndGoodName> findAll();

    @Delete("delete from `order` where id=#{id}")
    void deleteOrderById(String id);

    @Delete("delete from `order` where userid=#{userid} and goodid=#{goodid}")
    void deleteOrderByUserIdAndGoodId(@Param("userid") String userid, @Param("goodid") String goodid);
}
