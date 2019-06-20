package club.vasilis.xtwh.dao.impl;

import club.vasilis.xtwh.dao.CommunityDao;
import club.vasilis.xtwh.domain.Comment;
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
     * @param offset 偏移量第一次为0，第二次为25，以此类推
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
            String sqlUser = "select nickName,headImg FROM user WHERE UUID = ?";
            User user = runner.query(sqlUser, new BeanHandler<>(User.class), community.getUUID());
            community.setUser(user);
            //查点赞
            String sqlPhrase = "SELECT id,uuid FROM phrase WHERE communityId = ?";
            List<Phrase> phraseList = runner.query(sqlPhrase, new BeanListHandler<>(Phrase.class), community.getId());
            community.setPhraseList(phraseList);
            //查评论
            String sqlComment = "SELECT id,communityId,commentA,commentB,content,date FROM comment WHERE communityId = ?";
            List<Comment> commentList = runner.query(sqlComment, new BeanListHandler<>(Comment.class), community.getId());
            community.setCommentList(commentList);
        }
        return communityList;
    }

    @Override
    public List<Community> getAdminCommunityAll() throws Exception {
        QueryRunner runner = new QueryRunner(DsUtils.getDataSource());
        String sqlCommunity = "SELECT id,UUID,date,content FROM community order by date DESC";
        List<Community> communityList = runner.query(sqlCommunity, new BeanListHandler<>(Community.class));
        for (Community community : communityList) {
            //根据uuid查询发送说说的用户
            String sqlUser = "select nickName,headImg FROM user WHERE UUID = ?";
            User user = runner.query(sqlUser, new BeanHandler<>(User.class), community.getUUID());
            community.setUser(user);
        }
        return communityList;
    }

    @Override
    public int updateItem(Community community) throws Exception {
        QueryRunner runner = new QueryRunner(DsUtils.getDataSource());
        String sql = "INSERT INTO community(UUID, date, content) VALUES (?, ?, ?)";
        int rows = runner.update(sql, community.getUUID(), community.getDate(), community.getContent());
        if (rows == 1) {
            String sqlCommunity = "SELECT * FROM community where date = ? and UUID = ? ";
            community = runner.query(sqlCommunity, new BeanHandler<>(Community.class), community.getDate(), community.getUUID());
            return community.getId();
        } else {
            return -1;
        }
    }

    @Override
    public boolean phraseDeleteItem(Phrase phrase) throws Exception {
        QueryRunner runner = new QueryRunner(DsUtils.getDataSource());
        String sql = "DELETE FROM phrase where UUID = ? and communityId = ?";
        int rows = runner.update(sql, phrase.getUUID(), phrase.getCommunityId());
        return true;
    }

    @Override
    public boolean phraseCreateItem(Phrase phrase) throws Exception {
        QueryRunner runner = new QueryRunner(DsUtils.getDataSource());
        String sql = "INSERT INTO phrase(UUID, communityId) VALUES (?, ?);";
        int update = runner.update(sql, phrase.getUUID(), phrase.getCommunityId());
        return true;
    }

    @Override
    public void deleteItem(int id) throws Exception {
        QueryRunner runner = new QueryRunner(DsUtils.getDataSource());
        String sql = "DELETE FROM community where id = ?";
        int rows = runner.update(sql, id);
    }

    @Test
    public void test() throws Exception {
        Community community = new Community();
        community.setUUID("asdasdasdasdasdsa");
        community.setDate(System.currentTimeMillis());
        community.setContent("asdasdsadsadsadasdasdasdasd");
        int i = updateItem(community);
        System.out.println(i);
    }


}