package club.vasilis.xtwh.service;

import club.vasilis.xtwh.domain.Location;
import java.util.List;

/**
 * @author ZhuZhiXin
 * @create 2019-05-09 9:24
 */
public interface LocationService {

    List<Location> findLocation() throws Exception;
}
