package club.vasilis.xtwh.domain;

/**
 * @author Vasilis
 * @date 2019/4/25 -21:06
 */

public class NativeProduct {
    private String id;
    private String name;
    private String img;
    private String brief;
    private String onlinetime;
    private String typeid;

    public NativeProduct() {
    }

    public NativeProduct(String id, String name, String img, String brief, String onlinetime, String typeid) {
        this.id = id;
        this.name = name;
        this.img = img;
        this.brief = brief;
        this.onlinetime = onlinetime;
        this.typeid = typeid;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getBrief() {
        return brief;
    }

    public void setBrief(String brief) {
        this.brief = brief;
    }

    public String getOnlinetime() {
        return onlinetime;
    }

    public void setOnlinetime(String onlinetime) {
        this.onlinetime = onlinetime;
    }

    public String getTypeid() {
        return typeid;
    }

    public void setTypeid(String typeid) {
        this.typeid = typeid;
    }

    @Override
    public String toString() {
        return "NativeProduct{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", img='" + img + '\'' +
                ", brief='" + brief + '\'' +
                ", onlinetime='" + onlinetime + '\'' +
                ", typeid='" + typeid + '\'' +
                '}';
    }
}
