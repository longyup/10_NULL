package club.vasilis.xtwh.servlet;

import club.vasilis.xtwh.domain.Activity;
import club.vasilis.xtwh.domain.ActivityCategory;
import club.vasilis.xtwh.service.ActivityCategoryService;
import club.vasilis.xtwh.service.ActivityService;
import club.vasilis.xtwh.service.impl.ActivityCategoryServiceImpl;
import club.vasilis.xtwh.service.impl.ActivityServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "ActivityServlet",urlPatterns = "/activity")
public class ActivityServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req,resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String method = req.getParameter("method");
        if ("".equals(method)){

        }else if ("activityMessage".equals(method)){
            getActivityMessage(req,resp);
        }
    }

    private void getActivityMessage(HttpServletRequest req, HttpServletResponse resp) {
        //测试
        //System.out.println("222");
        try {

                ActivityService activityService = new ActivityServiceImpl();
                List<Activity> activityList = activityService.findActivityAll();
                req.setAttribute("activityList", activityList);


//            ActivityCategoryService activityCategoryService = new ActivityCategoryServiceImpl();
//            List<ActivityCategory> activityCategoryList = activityCategoryService.findActivityCategoryAll();
//            req.setAttribute("activityCategoryList",activityCategoryList);

            req.getRequestDispatcher("/Activity.jsp").forward(req,resp);
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
