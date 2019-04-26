package club.vasilis.xtwh.dao;

import club.vasilis.xtwh.domain.CultrueNews;

import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author 石志林
 * @date
 */
public interface CultureNewsDao {
    public List<CultrueNews> findCultrueNews() throws SQLException;
}
