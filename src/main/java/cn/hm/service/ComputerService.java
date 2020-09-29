package cn.hm.service;

import cn.hm.bean.Computer;

import java.util.List;

/**
 * 展示
 */
public interface ComputerService {

    /**
     * 首页显示所有电脑
     * @return zhangling
     */
    List<Computer> showAllComputer();

}
