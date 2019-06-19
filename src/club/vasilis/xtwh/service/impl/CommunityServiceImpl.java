package club.vasilis.xtwh.service.impl;

import club.vasilis.xtwh.dao.CommunityDao;
import club.vasilis.xtwh.dao.impl.CommunityDaoImpl;
import club.vasilis.xtwh.domain.Community;
import club.vasilis.xtwh.service.CommunityService;
import net.sf.json.JSONArray;

import java.util.List;

/**
 * @author Vasilis
 * @date 2019/6/11 -9:49
 */

public class CommunityServiceImpl implements CommunityService {

    @Override
    public String findTwentyByJson(int offset) throws Exception {
        CommunityDao dao = new CommunityDaoImpl();
        List<Community> communityList = dao.findTwenty(offset);
        return JSONArray.fromObject(communityList).toString();
    }
}
