package club.vasilis.xtwh.servlet;


import club.vasilis.xtwh.domain.*;
import club.vasilis.xtwh.service.*;
import club.vasilis.xtwh.service.impl.*;
import org.apache.commons.beanutils.BeanUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * @author ZhuZhiXin
 * @create 2019-05-09 9:46
 */
@WebServlet(name = "FolkCustomServlet", urlPatterns = "/folk_custom")
public class FolkCustomServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String method = request.getParameter("method");
        if ("".equals(method)) {

        } else if ("topage".equals(method)) {
            toPage(request, response);
        }else if ("cusDetails".equals(method)){
            cusDetails(request,response);
        }else if ("cusMenuDetails".equals(method)){
            cusMenuDetails(request,response);
        }else if ("cusShowAllJson".equals(method)){
            cusShowAllJson(request,response);
        }else if ("getAllCustom".equals(method)){
            getAllCustom(request,response);
        }else if ("deleteCustom".equals(method)){
            deleteCustom(request,response);
        }else if ("addCustom".equals(method)){
            addCustom(request,response);
        }else if ("getCustomById".equals(method)){
            getCustomById(request,response);
        }else if ("updateCustom".equals(method)){
            updateCustom(request,response);
        }
    }

    private void updateCustom(HttpServletRequest request, HttpServletResponse response) throws IOException {
        //设置输出格式
        response.setContentType("text/json;charset=utf-8");
        Map<String,String[]> map = request.getParameterMap();
        FolkCustom folkCustom = new FolkCustom();
        int rs;

        try {
            BeanUtils.populate(folkCustom,map);
            rs = new FolkCustomServiceImpl().updateCustom(folkCustom);
            System.out.println("1111111");
            if (rs>0){
                request.getSession().setAttribute("msg","修改活动成功！");
                System.out.println("修改成功");
                response.sendRedirect("/10_NULL_war_exploded/folk_custom?method=getAllCustom");
            }else {
                request.getSession().setAttribute("msg", "修改信息失败");
                response.sendRedirect("msg.jsp");
                System.out.println("修改失败");

            }
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    private void getCustomById(HttpServletRequest request, HttpServletResponse response) {
        FolkCustom folkCustom;
        try {
            //设置输出格式
            response.setContentType("text/json;charset=utf-8");
            //获取活动Id
            String id =request.getParameter("id");
            //调用service，通过id获取活动，返回值request
            folkCustom = new FolkCustomServiceImpl().getCustomById(id);
            //将activity放到request域中，请求转发到product-add。jsp
            request.setAttribute("bean",folkCustom);
            request.getRequestDispatcher("admin/pictureEdit.jsp").forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    private void addCustom(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        FolkCustom folkCustom = new FolkCustom();

        try {
            BeanUtils.populate(folkCustom,request.getParameterMap());
            folkCustom.setOnlinetime(new Date());
            new FolkCustomServiceImpl().sava(folkCustom);
            request.getRequestDispatcher("/folk_custom?method=getAllCustom").forward(request,response);
        } catch (SQLException e) {
            e.printStackTrace();
            request.setAttribute("msg","添加商品失败！");
            request.getRequestDispatcher("/msg.jsp").forward(request,response);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void deleteCustom(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/json;charset=utf-8");
        String id = request.getParameter("id");
        try {
            new FolkCustomServiceImpl().deleteCustom(id);
            System.out.println("这里有删除到吗？");
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("msg","商品删除失败！");
            try {
                request.getRequestDispatcher("msg.jsp").forward(request,response);
            } catch (ServletException ex) {
                ex.printStackTrace();
            } catch (IOException ex) {
                ex.printStackTrace();
            }
        }
        response.sendRedirect("/10_NULL_war_exploded/folk_custom?method=getAllCustom");

    }

    private void getAllCustom(HttpServletRequest request, HttpServletResponse response) {
        List<FolkCustom> folkCustoms = null;
        try {
            folkCustoms = new FolkCustomServiceImpl().findAllCustoms();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        request.setAttribute("list",folkCustoms);
        try {
            request.getRequestDispatcher("/admin/picture-list.jsp").forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    /**
     * 风情民俗页面
     * @param request
     * @param response
     */
    private void toPage(HttpServletRequest request, HttpServletResponse response) {

        System.err.println("风情民俗");
        FolkCustomService service = new FolkCustomServiceImpl();



        try {
            //菜单栏
            List<FolkCustom> customMenuList = service.customMenu();
            request.setAttribute("customMenuList", customMenuList);

            //标题内容
            List<FolkCustom> customPassageList = service.customPassage();
            request.setAttribute("customPassageList", customPassageList);

            request.getRequestDispatcher("/folk_custom.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * 点击进入详情页面,数据放在request
     * @param request
     * @param response
     */
    private void cusDetails(HttpServletRequest request, HttpServletResponse response) {
        System.err.println("详情页");
        String id = request.getParameter("id");

        FolkCustomService service = new FolkCustomServiceImpl();

        try {
            // 类别
            List<FolkCustom> categoryList = service.customMenu();
            request.setAttribute("categoryList",categoryList);

            // 详细信息的显示

            FolkCustom cusPassgaeDetails = service.customPassageDetailsShow(id);
            System.err.println(cusPassgaeDetails);
            request.setAttribute("cusPassageDetails",cusPassgaeDetails);
            request.getRequestDispatcher("/folk_custom_passage_details.jsp").forward(request,response);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * 根据分类的点击用AJAX刷新列表
     * @param request
     * @param response
     */
    private void cusMenuDetails(HttpServletRequest request, HttpServletResponse response) {
        String typeId = request.getParameter("id");
        try {
            //设置输出格式
            response.setContentType("text/json;charset=utf-8");
            //获取JSON字符串
            FolkCustomService service = new FolkCustomServiceImpl();
            String json = service.cusMenuDetailsJson(typeId);
            //输出结果
            response.getWriter().write(json);
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    /**
     * 展示所有的标题Json数据
     * @param request
     * @param response
     */
    private void cusShowAllJson(HttpServletRequest request, HttpServletResponse response) {
        try {
            //设置输出格式
            response.setContentType("text/json;charset=utf-8");
            //获取JSON字符串
            FolkCustomService service = new FolkCustomServiceImpl();
            String json = service.customFindAllJson();
            System.out.println(json);
            //输出结果
            response.getWriter().write(json);
        } catch (Exception e) {
            e.printStackTrace();
        }

    }
}
