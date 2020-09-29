package cn.hm.service.impl;

import cn.hm.bean.Computer;
import cn.hm.mapper.ComputerMapper;
import cn.hm.service.ComputerService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class ComputerServiceImpl implements ComputerService {

    @Resource
    private ComputerMapper computerMapper;

    @Override
    public List<Computer> showAllComputer() {
        System.out.println("Computer service...");
        return computerMapper.showAllComputer();
    }

}
