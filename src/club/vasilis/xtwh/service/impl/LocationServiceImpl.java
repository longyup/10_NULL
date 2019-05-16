package club.vasilis.xtwh.service.impl;

import club.vasilis.xtwh.dao.LocationDao;
import club.vasilis.xtwh.dao.NativeProductCategoryDao;
import club.vasilis.xtwh.dao.impl.LocationDaoImpl;
import club.vasilis.xtwh.dao.impl.NativeProductCategoryDaoImpl;
import club.vasilis.xtwh.domain.Location;
import club.vasilis.xtwh.domain.NativeProductCategory;
import club.vasilis.xtwh.service.LocationService;
import net.sf.json.JSONArray;
import org.junit.Test;

import java.sql.SQLException;
import java.util.List;

/**
 * @author ZhuZhiXin
 * @create 2019-05-09 9:28
 */
public class LocationServiceImpl implements LocationService {
    @Override
    public List<Location> findLocation() throws Exception {
        LocationDao dao = new LocationDaoImpl();
        return dao.findLocation();
    }

}
