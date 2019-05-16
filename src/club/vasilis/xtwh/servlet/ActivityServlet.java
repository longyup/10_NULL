package club.vasilis.xtwh.servlet;

import club.vasilis.xtwh.dao.ActivityCategoryDao;
import club.vasilis.xtwh.domain.Activity;
import club.vasilis.xtwh.domain.ActivityCategory;
import club.vasilis.xtwh.service.ActivityCategoryService;
import club.vasilis.xtwh.service.ActivityService;
import club.vasilis.xtwh.service.NativeProductService;
import club.vasilis.xtwh.service.impl.ActivityCategoryServiceImpl;
import club.vasilis.xtwh.service.impl.ActivityServiceImpl;
import club.vasilis.xtwh.service.impl.NativeProductServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "ActivityServlet", urlPatterns = "/activity")
public class ActivityServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp){
        String method = req.getParameter("method");
        if ("".equals(method)) {

        } else if ("activityMessage".equals(method)) {
            getActivityMessage(req, resp);
        }else if ("findByType".equals(method)){
            findByType(req,resp);
        }
    }

    private void findByType(HttpServletRequest request, HttpServletResponse response) {
        String typeId = request.getParameter("id");
        try {
            //设置输出格式
            response.setContentType("text/json;charset=utf-8");
            //获取JSON字符串
            ActivityService service = new ActivityServiceImpl();
            String json = service.findActivityByTypeJson(typeId);
            //输出结果
            response.getWriter().write(json);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void getActivityMessage(HttpServletRequest req, HttpServletResponse resp) {

        System.out.println("222");

        ActivityCategoryService categoryService = new ActivityCategoryServiceImpl();

        ActivityService activityService = new ActivityServiceImpl();
        try {
            List<Activity> activityList = activityService.findActivityAll();
            req.setAttribute("activityList", activityList);

            List<ActivityCategory> categoryList = categoryService.findActivityCategoryAll();
            req.setAttribute("categoryList",categoryList);
            req.getRequestDispatcher("/activity.jsp").forward(req, resp);
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

}