package cn.hm.mapper;

import cn.hm.bean.User;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

@Repository
public interface UserMapper {

    @Select("select * from user where `username` = #{username} and `password` = #{password}")
    User login(User user);

}
