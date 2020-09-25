import cn.hm.bean.User;
import cn.hm.service.impl.UserServiceImpl;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class TestApplication {
    public static void main(String[] args) {
        ApplicationContext applicationContext = new ClassPathXmlApplicationContext("application-context.xml");
        UserServiceImpl bean = applicationContext.getBean(UserServiceImpl.class);
        User zhangsan = bean.login(new User().setUsername("zhangsan").setPassword("111222"));
    }
}
