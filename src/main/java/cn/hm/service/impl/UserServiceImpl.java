package cn.hm.service.impl;

import cn.hm.bean.User;
import cn.hm.mapper.UserMapper;
import cn.hm.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class UserServiceImpl implements UserService {

    @Resource
    private UserMapper userMapper;

    public User login(User user){
        return userMapper.login(user);
    }

}
