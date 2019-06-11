package club.vasilis.xtwh.servlet;
import club.vasilis.xtwh.domain.Activity;
import club.vasilis.xtwh.domain.ActivityCategory;
import club.vasilis.xtwh.service.*;
import club.vasilis.xtwh.service.impl.*;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
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
        }else if ("details".equals(method)){
            detail(req,resp);
        }else if ("getJsonActivityAll".equals(method)){
            getJsonActivityAll(req,resp);
        }else if ("downLoadsFile".equals(method)){
            downLoadsFile(req,resp);
        }else if ("addActivitys".equals(method)){
            addActivitys(req,resp);
        }
    }

    private void addActivitys(HttpServletRequest req, HttpServletResponse resp) {

        

    }

    private void downLoadsFile(HttpServletRequest req, HttpServletResponse resp) {

    }

    private void getJsonActivityAll(HttpServletRequest req, HttpServletResponse resp) {

        try {
            //设置输出格式
            resp.setContentType("text/json;charset=utf-8");
            //获取JSON字符串
            ActivityService service = new ActivityServiceImpl();
            String json = service.getJsonActivityAll();
            //输出结果
            resp.getWriter().write(json);
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /**
     * 点击进入详情页面,数据放在request
     * @param request
     * @param response
     */
    private void detail(HttpServletRequest request, HttpServletResponse response) {
        String id = request.getParameter("id");

        ActivityCategoryService categoryService = new ActivityCategoryServiceImpl();
        ActivityService service = new ActivityServiceImpl();

        try {
            // 类别
            List<ActivityCategory> categoryList = categoryService.findActivityCategoryAll();
            request.setAttribute("categoryList",categoryList);

            // 详细信息的显示

            Activity activity = service.showDetails(id);
            System.err.println(activity);
            request.setAttribute("activityDetails",activity);
            request.getRequestDispatcher("/ActivityDails.jsp").forward(request,response);

        } catch (Exception e) {
            e.printStackTrace();


        }
    }



    private void findByType(HttpServletRequest req, HttpServletResponse resp) {
        String typeId = req.getParameter("id");
        try {
            //设置输出格式
            resp.setContentType("text/json;charset=utf-8");
            //获取JSON字符串
            ActivityService service = new ActivityServiceImpl();
            String json = service.findActivityByTypeJson(typeId);
            //输出结果
            resp.getWriter().write(json);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void getActivityMessage(HttpServletRequest req, HttpServletResponse resp) {

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