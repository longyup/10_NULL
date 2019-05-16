package club.vasilis.xtwh.servlet;


import club.vasilis.xtwh.domain.*;
import club.vasilis.xtwh.service.*;
import club.vasilis.xtwh.service.impl.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

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
            topage(request, response);
        }else if ("cusDetails".equals(method)){
            cusDetails(request,response);
        }else if ("cusMenuDetails".equals(method)){
            cusMenuDetails(request,response);
        }
    }

    private void topage(HttpServletRequest request, HttpServletResponse response) {

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
}
