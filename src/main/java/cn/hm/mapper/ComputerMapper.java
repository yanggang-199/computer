package cn.hm.mapper;

import cn.hm.bean.Computer;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * 物品接口类
 * @author all
 */
public interface ComputerMapper {

    /**
     * 首页显示所有电脑
     * @return zhangling
     */
    @Select("select `cid`, `image`, `motherboard`, `cpu`, `ram` from computer")
    List<Computer> showAllComputer();

}
