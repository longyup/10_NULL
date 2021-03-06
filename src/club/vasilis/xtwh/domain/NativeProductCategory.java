package club.vasilis.xtwh.domain;

/**
 * @author Vasilis
 * @date 2019/4/30 -8:54
 */

public class NativeProductCategory {
    private String id;
    private String name;

    public NativeProductCategory() {
    }

    public NativeProductCategory(String id, String name) {
        this.id = id;
        this.name = name;
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
}
