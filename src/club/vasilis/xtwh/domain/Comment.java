package club.vasilis.xtwh.domain;

/**
 * @author Vasilis
 * @date 2019/6/20 -0:15
 */

public class Comment {
    private int id;
    private int communityId;
    private String commentA;
    private String commentB;
    private String content;
    private long date;

    public Comment() {
    }

    public Comment(int id, int communityId, String commentA, String commentB, String content, long date) {
        this.id = id;
        this.communityId = communityId;
        this.commentA = commentA;
        this.commentB = commentB;
        this.content = content;
        this.date = date;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCommunityId() {
        return communityId;
    }

    public void setCommunityId(int communityId) {
        this.communityId = communityId;
    }

    public String getCommentA() {
        return commentA;
    }

    public void setCommentA(String commentA) {
        this.commentA = commentA;
    }

    public String getCommentB() {
        return commentB;
    }

    public void setCommentB(String commentB) {
        this.commentB = commentB;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public long getDate() {
        return date;
    }

    public void setDate(long date) {
        this.date = date;
    }

    @Override
    public String toString() {
        return "Comment{" +
                "id=" + id +
                ", communityId=" + communityId +
                ", commentA='" + commentA + '\'' +
                ", commentB='" + commentB + '\'' +
                ", content='" + content + '\'' +
                ", date=" + date +
                '}';
    }
}
