package club.vasilis.xtwh.dao;

import club.vasilis.xtwh.domain.XtwhIntrocution;

import java.sql.SQLException;
import java.util.List;

public interface XtwhIntroductionDao {
    public List<XtwhIntrocution> getIntroduction() throws SQLException;
}
