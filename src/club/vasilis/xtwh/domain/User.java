package club.vasilis.xtwh.domain;

/**
 * @author Vasilis
 * @date 2019/4/17 -9:03
 */

public class User {
    private String UUID;
    private String account;
    private String password;
    private String name;
    private Integer sex;
    private String idCard;
    private String phone;
    private String place;
    private String activityId;

    public User() {
    }

    public User(String UUID, String account, String password, String name,
                Integer sex, String idCard, String phone, String place, String activityId) {
        this.UUID = UUID;
        this.account = account;
        this.password = password;
        this.name = name;
        this.sex = sex;
        this.idCard = idCard;
        this.phone = phone;
        this.place = place;
        this.activityId = activityId;
    }

    public String getUUID() {
        return UUID;
    }

    public void setUUID(String UUID) {
        this.UUID = UUID;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getSex() {
        return sex;
    }

    public void setSex(Integer sex) {
        this.sex = sex;
    }

    public String getIdCard() {
        return idCard;
    }

    public void setIdCard(String idCard) {
        this.idCard = idCard;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getPlace() {
        return place;
    }

    public void setPlace(String place) {
        this.place = place;
    }

    public String getActivityId() {
        return activityId;
    }

    public void setActivityId(String activityId) {
        this.activityId = activityId;
    }

    @Override
    public String toString() {
        return "User{" +
                "UUID='" + UUID + '\'' +
                ", account='" + account + '\'' +
                ", password='" + password + '\'' +
                ", name='" + name + '\'' +
                ", sex=" + sex +
                ", idCard='" + idCard + '\'' +
                ", phone='" + phone + '\'' +
                ", place='" + place + '\'' +
                ", activityId='" + activityId + '\'' +
                '}';
    }
}
