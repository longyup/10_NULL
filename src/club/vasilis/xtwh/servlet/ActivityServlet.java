package club.vasilis.xtwh.servlet;
import club.vasilis.xtwh.domain.Activity;
import club.vasilis.xtwh.domain.ActivityCategory;
import club.vasilis.xtwh.service.*;
import club.vasilis.xtwh.service.impl.*;
import com.mysql.cj.log.Log;
import org.apache.commons.beanutils.BeanUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.lang.reflect.InvocationTargetException;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

@WebServlet(name = "ActivityServlet", urlPatterns = "/activity")
public class ActivityServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        String method = req.getParameter("method");
        if ("".equals(method)) {

        } else if ("activityMessage".equals(method)) {
            getActivityMessage(req, resp);
        } else if ("findByType".equals(method)) {
            findByType(req, resp);
        } else if ("details".equals(method)) {
            detail(req, resp);
        } else if ("getJsonActivityAll".equals(method)) {
            getJsonActivityAll(req, resp);
        }else if ("getActivityById".equals(method)){
            getActivityById(req,resp);
        }else if ("updateActivity".equals(method)){
            updateActivity(req,resp);
        }else if ("deleteActivityById".equals(method)){
            deleteActivityById(req,resp);
        }else if ("getAdminActivityAll".equals(method)){
            getAdminActivityAll(req,resp);
        }
    }

    private void getAdminActivityAll(HttpServletRequest req, HttpServletResponse resp) {
        try {
            List<Activity> activities = new ActivityServiceImpl().findActivityAll();
            req.setAttribute("list",activities);
            req.getRequestDispatcher("/admin/index.html").forward(req,resp);
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void deleteActivityById(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        resp.setContentType("text/json;charset=utf-8");
        String id = req.getParameter("id");
        try {
            new ActivityServiceImpl().deleteActivityById(id);
            System.out.println("这里有删除到吗？");
        } catch (SQLException e) {
            e.printStackTrace();
            req.setAttribute("msg","商品删除失败！");
            req.getRequestDispatcher("msg.jsp").forward(req,resp);
        }
//        resp.sendRedirect("admin/index.jsp");

    }

    private void updateActivity(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        //设置输出格式
        resp.setContentType("text/json;charset=utf-8");
        Map<String,String[]> map = req.getParameterMap();
        Activity activity = new Activity();
        int rs = 0;

        try {
            BeanUtils.populate(activity,map);
            rs = new ActivityServiceImpl().updateActivity(activity);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        if (rs>0){
            req.getSession().setAttribute("msg","修改活动成功！");
            System.out.println("修改成功");
            resp.sendRedirect("admin/product-list.jsp");
        }else {
            req.getSession().setAttribute("msg", "修改商品失败");
            resp.sendRedirect("admin/product-list.jsp");
            System.out.println("修改失败");

        }
    }

    private void getActivityById(HttpServletRequest req, HttpServletResponse resp) {

        Activity activity;
        try {
            //设置输出格式
            resp.setContentType("text/json;charset=utf-8");
            //获取活动Id
            String id =req.getParameter("id");
            //调用service，通过id获取活动，返回值request
            activity = new ActivityServiceImpl().getActivityById(id);
            //将activity放到request域中，请求转发到product-add。jsp
            req.setAttribute("bean",activity);
            log("123456"+activity);
            req.getRequestDispatcher("admin/edit.jsp").forward(req,resp);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
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