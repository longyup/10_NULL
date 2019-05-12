package club.vasilis.xtwh.domain;

/**
 * @author Vasilis
 * @date 2019/5/12 -18:25
 */

public class ActivityCategory {
    private int id;
    private String name;

    public ActivityCategory() {
    }

    public ActivityCategory(int id, String name) {
        this.id = id;
        this.name = name;
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

    @Override
    public String toString() {
        return "ActivityCategory{" +
                "id=" + id +
                ", name='" + name + '\'' +
                '}';
    }
}
