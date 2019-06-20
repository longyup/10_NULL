package club.vasilis.xtwh.domain;

import java.util.Date;

public class Activity {
    private int id;
    private String name;
    private String info;
    private Date launchTime;
    private Date startTime;
    private String img;
    private String typeId;

    public Activity() {
    }

    public Activity(int id, String name, String info,Date startTime) {
        this.id = id;
        this.name = name;
        this.info = info;
        this.startTime = startTime;
    }


    public Activity(int id, String name, String info, Date launchTime, Date startTime, String img,String typeId) {
        this.id = id;
        this.name = name;
        this.info = info;
        this.launchTime = launchTime;
        this.startTime = startTime;
        this.img = img;
        this.typeId = typeId;
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

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info;
    }

    public Date getLaunchTime() {
        return launchTime;
    }

    public void setLaunchTime(Date launchTime) {
        this.launchTime = launchTime;
    }

    public Date getStartTime() {
        return startTime;
    }

    public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getTypeId() {
        return typeId;
    }

    public void setTypeId(String typeId) {
        this.typeId = typeId;
    }

    @Override
    public String toString() {
        return "Activity{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", info='" + info + '\'' +
                ", launchTime='" + launchTime + '\'' +
                ", startTime='" + startTime + '\'' +
                ", img='" + img + '\'' +
                ", typeId='" + typeId + '\'' +
                '}';
    }
}
