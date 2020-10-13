package cn.com.caeri.data;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.boot.jdbc.DataSourceBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import javax.sql.DataSource;

/**
 * @author Administrator
 * @datetime 2020-05-26 15:31 GMT+8
 */
@Configuration
public class DataSourceConfig {

    @Bean(name = "default_dataSource") //注入到这个容器
    @ConfigurationProperties(prefix = "spring.datasource.default")//表示取application.properties配置文件中的前缀
// @Primary#primary是设置优先，因为有多个数据源，在没有明确指定用哪个的情况下，会用带有primary的，这个注解必须有一个数据源要添加
    public DataSource defaultDataSource() {
        return DataSourceBuilder.create().build();
    }

    @Bean(name = "soil_dataSource") //注入到这个容器
    @ConfigurationProperties(prefix = "spring.datasource.soil")//表示取application.properties配置文件中的前缀
    public DataSource soilDataSource() {
        return DataSourceBuilder.create().build();
    }


}
