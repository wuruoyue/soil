package cn.com.caeri.data.module;

import net.hasor.core.ApiBinder;
import net.hasor.core.DimModule;
import net.hasor.db.JdbcModule;
import net.hasor.db.Level;
import net.hasor.spring.SpringModule;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import javax.sql.DataSource;

/**
 * @author Administrator
 * @datetime 2020-05-19 09:36 GMT+8
 */
@DimModule
@Component
public class DataModule implements SpringModule {
    @Resource(name="default_dataSource")
    private DataSource default_dataSource;



    @Resource(name="soil_dataSource")
    private DataSource soilDataSource;


    @Override
    public void loadModule(ApiBinder apiBinder) throws Throwable {
        // .DataSource form Spring boot into Hasor
        // apiBinder.installModule(new JdbcModule(Level.Full, this.dataSource));

        apiBinder.installModule(new JdbcModule(Level.Full, default_dataSource));   // 默认数据源


        apiBinder.installModule(new JdbcModule(Level.Full,"soil", this.soilDataSource));


        // .custom DataQL
        //apiBinder.tryCast(QueryApiBinder.class).loadUdfSource(apiBinder.findClass(DimUdfSource.class));
        //apiBinder.tryCast(QueryApiBinder.class).bindFragment("sql", SqlFragment.class);
    }
}
