package cn.com.caeri.data;

import net.hasor.spring.boot.EnableHasor;
import net.hasor.spring.boot.EnableHasorWeb;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * 启动程序
 * 
 * @author ruoyi
 */
@EnableHasor()      // 在Spring 中启用 Hasor
@EnableHasorWeb()   // 将 hasor-web 配置到 Spring 环境中，Dataway 的 UI 是通过 hasor-web 提供服务。
@SpringBootApplication(scanBasePackages ={ "cn.com.caeri.*" })
public class Application
{
    public static void main(String[] args)
    {
        //System.setProperty("spring.devtools.restart.enabled", "false");
        SpringApplication.run(Application.class, args);
    }


}
