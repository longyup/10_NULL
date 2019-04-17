package club.vasilis.xtwh.domain;

public class Activity {
    private int activityId;
    private String activityName;
    private String StartTime;
    private String EndTime;
    private String place;

    public Activity() {
    }

    public Activity(int activityId, String activityName, String startTime, String endTime, String place) {
        this.activityId = activityId;
        this.activityName = activityName;
        StartTime = startTime;
        EndTime = endTime;
        this.place = place;
    }

    public int getActivityId() {
        return activityId;
    }

    public void setActivityId(int activityId) {
        this.activityId = activityId;
    }

    public String getActivityName() {
        return activityName;
    }

    public void setActivityName(String activityName) {
        this.activityName = activityName;
    }

    public String getStartTime() {
        return StartTime;
    }

    public void setStartTime(String startTime) {
        StartTime = startTime;
    }

    public String getEndTime() {
        return EndTime;
    }

    public void setEndTime(String endTime) {
        EndTime = endTime;
    }

    public String getPlace() {
        return place;
    }

    public void setPlace(String place) {
        this.place = place;
    }

    @Override
    public String toString() {
        return "Activity{" +
                "activityId=" + activityId +
                ", activityName='" + activityName + '\'' +
                ", StartTime='" + StartTime + '\'' +
                ", EndTime='" + EndTime + '\'' +
                ", place='" + place + '\'' +
                '}';
    }
}
