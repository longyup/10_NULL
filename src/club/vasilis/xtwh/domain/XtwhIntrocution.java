package club.vasilis.xtwh.domain;

public class XtwhIntrocution {

    Integer id;
    String content;

    public XtwhIntrocution() {
    }

    public XtwhIntrocution(Integer id, String content) {
        this.id = id;
        this.content = content;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    @Override
    public String toString() {
        return "XtwhIntrocution{" +
                "id=" + id +
                ", content='" + content + '\'' +
                '}';
    }
}
