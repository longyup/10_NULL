package club.vasilis.xtwh.dao.impl;

import club.vasilis.xtwh.dao.LocationDao;
import club.vasilis.xtwh.domain.Location;
import club.vasilis.xtwh.util.DsUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import java.util.List;

/**
 * @author ZhuZhiXin
 * @create 2019-05-09 9:15
 */
public class LocationDaoImpl implements LocationDao {
    @Override
    public List<Location> findLocation() throws Exception {
        String sql = "SELECT * FROM location";
        QueryRunner runner = new QueryRunner(DsUtils.getDataSource());
        List<Location> list = runner.query(sql,new BeanListHandler<Location>(Location.class));
        return list;
    }

}
