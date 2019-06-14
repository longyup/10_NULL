package club.vasilis.xtwh.domain;

/**
 * 对应点赞表
 * @author Vasilis
 * @date 2019/6/10 -15:50
 */

public class Phrase {
    private int id;
    private String UUID;//点赞者的id
    private int communityId;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUUID() {
        return UUID;
    }

    public void setUUID(String UUID) {
        this.UUID = UUID;
    }

    public int getCommunityId() {
        return communityId;
    }

    public void setCommunityId(int communityId) {
        this.communityId = communityId;
    }

    @Override
    public String toString() {
        return "Phrase{" +
                "id=" + id +
                ", UUID='" + UUID + '\'' +
                ", communityId=" + communityId +
                '}';
    }
}
