package club.vasilis.xtwh.domain;

import java.util.List;

/**
 * 社区说说表
 * @author Vasilis
 * @date 2019/6/10 -15:49
 */

public class Community {
    private int id;
    private String UUID;
    private User user;
    private long date;
    private String content;
    private List<Phrase> phraseList;
    private List<Comment> commentList;

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

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public long getDate() {
        return date;
    }

    public void setDate(long date) {
        this.date = date;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public List<Phrase> getPhraseList() {
        return phraseList;
    }

    public void setPhraseList(List<Phrase> phraseList) {
        this.phraseList = phraseList;
    }

    public List<Comment> getCommentList() {
        return commentList;
    }

    public void setCommentList(List<Comment> commentList) {
        this.commentList = commentList;
    }

    @Override
    public String toString() {
        return "Community{" +
                "id=" + id +
                ", UUID='" + UUID + '\'' +
                ", user=" + user +
                ", date=" + date +
                ", content='" + content + '\'' +
                ", phraseList=" + phraseList +
                ", commentList=" + commentList +
                '}';
    }
}
