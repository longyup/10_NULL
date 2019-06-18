package club.vasilis.xtwh.dao.impl;

import club.vasilis.xtwh.dao.CommunityDao;
import club.vasilis.xtwh.domain.Community;
import club.vasilis.xtwh.domain.Phrase;
import club.vasilis.xtwh.domain.User;
import club.vasilis.xtwh.util.DsUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.junit.Test;

import java.util.List;

/**
 * @author Vasilis
 * @date 2019/6/10 -16:04
 */

public class CommunityDaoImpl implements CommunityDao {
    /**
     * 查询20项说说记录
     *
     * @param offset 偏移量第一次为0，第二次为20，以此类推
     * @return
     * @throws Exception
     */
    @Override
    public List<Community> findTwenty(int offset) throws Exception {
        QueryRunner runner = new QueryRunner(DsUtils.getDataSource());
        String sqlCommunity = "SELECT id,UUID,date,content FROM community  order by date DESC limit 20 offset ? ";
        List<Community> communityList = runner.query(sqlCommunity, new BeanListHandler<>(Community.class), offset);
        for (Community community : communityList) {
            //根据uuid查询发送说说的用户
            String sqlUser = "select nickName,headImg FROM `user` WHERE UUID = ?";
            User user = runner.query(sqlUser, new BeanHandler<>(User.class),community.getUUID());
            community.setUser(user);

            String sqlPhrase = "SELECT id,uuid FROM Phrase WHERE communityId = " + community.getId();
            List<Phrase> phraseList = runner.query(sqlPhrase, new BeanListHandler<>(Phrase.class));
            community.setPhraseList(phraseList);
        }
        return communityList;
    }

    @Test
    public void test() throws Exception {
        List<Community> all = new CommunityDaoImpl().findTwenty(0);
        System.out.println(all);
    }


}