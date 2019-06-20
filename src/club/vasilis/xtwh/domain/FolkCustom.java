package club.vasilis.xtwh.domain;

import java.util.Date;

public class FolkCustom {

    private int id;
    private String name;
    private String img;
    private String details;
    private Date onlinetime;
    private String typeid;

    public FolkCustom() {
    }

    public FolkCustom(int id, String name) {
        this.id = id;
        this.name = name;
    }

    public FolkCustom(int id, String name, String img, String details, Date onlinetime, String typeid) {
        this.id = id;
        this.name = name;
        this.img = img;
        this.details = details;
        this.onlinetime = onlinetime;
        this.typeid = typeid;
    }

    @Override
    public String toString() {
        return "FolkCustom{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", img='" + img + '\'' +
                ", details='" + details + '\'' +
                ", onlinetime='" + onlinetime + '\'' +
                ", typeid='" + typeid + '\'' +
                '}';
    }

    public String getDetails() {
        return details;
    }

    public void setDetails(String details) {
        this.details = details;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
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

    public Date getOnlinetime() {
        return onlinetime;
    }

    public void setOnlinetime(Date onlinetime) {
        this.onlinetime = onlinetime;
    }

    public String getTypeid() {
        return typeid;
    }

    public void setTypeid(String typeid) {
        this.typeid = typeid;
    }
}
