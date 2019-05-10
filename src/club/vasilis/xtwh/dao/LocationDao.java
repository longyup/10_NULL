package club.vasilis.xtwh.dao;

import club.vasilis.xtwh.domain.Location;

import java.util.List;

/**
 * @author ZhuZhiXin
 * @create 2019-05-09 9:09
 */
public interface LocationDao {

    List<Location> findLocation() throws Exception;
}
