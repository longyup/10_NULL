package club.vasilis.xtwh.service.impl;

import club.vasilis.xtwh.dao.CommunityDao;
import club.vasilis.xtwh.dao.impl.CommunityDaoImpl;
import club.vasilis.xtwh.domain.Community;
import club.vasilis.xtwh.domain.Phrase;
import club.vasilis.xtwh.service.CommunityService;
import net.sf.json.JSONArray;

import java.util.List;

/**
 * @author Vasilis
 * @date 2019/6/11 -9:49
 */

public class CommunityServiceImpl implements CommunityService {

    @Override
    public void deleteItem(int id) throws Exception {
        CommunityDao dao = new CommunityDaoImpl();
        dao.deleteItem(id);
    }

    @Override
    public List<Community> getAdminCommunityAll() throws Exception {
        CommunityDao dao = new CommunityDaoImpl();
        return dao.getAdminCommunityAll();
    }

    @Override
    public String findTwentyByJson(int offset) throws Exception {
        CommunityDao dao = new CommunityDaoImpl();
        List<Community> communityList = dao.findTwenty(offset);
        return JSONArray.fromObject(communityList).toString();
    }


    @Override
    public int updateItem(Community community) throws Exception {
        CommunityDao dao = new CommunityDaoImpl();
        return dao.updateItem(community);
    }

    @Override
    public boolean phraseItem(boolean delete, Phrase phrase) throws Exception {

        CommunityDao dao = new CommunityDaoImpl();
        if (delete) {
            return dao.phraseDeleteItem(phrase);
        } else {
            return dao.phraseCreateItem(phrase);
        }

    }
}
