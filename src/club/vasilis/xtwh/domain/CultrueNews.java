package club.vasilis.xtwh.domain;

/**
 *
 * @author 石志林
 * @date
 */
public class CultrueNews {
    private Integer id;
    private String img;
    private String CONSISTENT;
    private String time;

    public CultrueNews() {
    }

    public CultrueNews(Integer id, String img, String CONSISTENT, String time) {
        this.id = id;
        this.img = img;
        this.CONSISTENT = CONSISTENT;
        this.time = time;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getCONSISTENT() {
        return CONSISTENT;
    }

    public void setCONSISTENT(String CONSISTENT) {
        this.CONSISTENT = CONSISTENT;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    @Override
    public String toString() {
        return "CultrueNews{" +
                "id=" + id +
                ", img='" + img + '\'' +
                ", CONSISTENT='" + CONSISTENT + '\'' +
                ", time='" + time + '\'' +
                '}';
    }
}
