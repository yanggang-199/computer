package cn.hm.controller;

import cn.hm.bean.User;
import cn.hm.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

@Controller
public class UserController {

    // 注入spring容器
    @Resource
    private UserService userService;

    @GetMapping("/login")
    public String login(User user){
        System.out.println("login...");
        userService.login(user);
        return "index";
    }

}
