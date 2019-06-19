package club.vasilis.xtwh.domain;

import java.util.Date;

public class Activity {
    private String id;
    private String name;
    private String info;
    private String launchTime;
    private String startTime;
    private String img;
    private String typeId;

    public Activity() {
    }

    public Activity(String id, String name, String info,String startTime) {
        this.id = id;
        this.name = name;
        this.info = info;
        this.startTime = startTime;
    }


    public Activity(String id, String name, String info, String launchTime, String startTime, String img,String typeId) {
        this.id = id;
        this.name = name;
        this.info = info;
        this.launchTime = launchTime;
        this.startTime = startTime;
        this.img = img;
        this.typeId = typeId;
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

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info;
    }

    public String getLaunchTime() {
        return launchTime;
    }

    public void setLaunchTime(String launchTime) {
        this.launchTime = launchTime;
    }

    public String getStartTime() {
        return startTime;
    }

    public void setStartTime(String startTime) {
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
