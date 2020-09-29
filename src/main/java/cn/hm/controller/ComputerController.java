package cn.hm.controller;

import cn.hm.service.ComputerService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import javax.annotation.Resource;

/**
 * 物品信息controller
 * @author all
 */
@Controller
public class ComputerController {

    @Resource
    private ComputerService computerService;

    @GetMapping("/showAll.do")
    public void showAll(){
        System.out.println("showAll....");
        computerService.showAllComputer();
    }

}
