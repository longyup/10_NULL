package club.vasilis.xtwh.servlet;


import club.vasilis.xtwh.domain.CultureSites;
import club.vasilis.xtwh.domain.Location;

import club.vasilis.xtwh.service.*;
import club.vasilis.xtwh.service.impl.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

/**
 * @author ZhuZhiXin
 * @create 2019-05-09 9:46
 */
@WebServlet(name = "LocationServlet",urlPatterns = "/cultureSites")
public class LocationServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String method = request.getParameter("method");
        if ("".equals(method)){

        }
        else if ("topage".equals(method)){
            toPage(request,response);
        }
        else if("findbytype".equals(method)){
            findByType(request,response);
        }
        else if ("details".equals(method)){
            detail(request,response);
        }
        else if ("getJsonCultureSitesAll".equals(method)){
            getJsonCultureSitesAll(request,response);
        }
    }

    private void getJsonCultureSitesAll(HttpServletRequest req, HttpServletResponse resp)   {
        try {
            //设置输出格式
            resp.setContentType("text/json;charset=utf-8");
            //获取JSON字符串
            CultureSitesService service = new CultureSitesServiceImpl();
            String json = service.getJsonCultrueSites();
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
        System.err.println("详情页");
        String id = request.getParameter("id");

        CultureSitesService cultureSitesService = new CultureSitesServiceImpl();
        LocationService locationService = new LocationServiceImpl();

        try {
            //类别
            List<Location> locationList = locationService.findLocation();
            request.setAttribute("locationList",locationList);
            //详细的每一项
            CultureSites cultureSites = cultureSitesService.showDetails(id);
            System.out.println(cultureSites);
            request.setAttribute("cultureSitesDetails",cultureSites);
            request.getRequestDispatcher("/cultureSitesDetails.jsp").forward(request,response);

            List<CultureSites> cultureSitesList = cultureSitesService.findAllCultureSites();
            request.setAttribute("cultureSitesList",cultureSitesList);
            request.getRequestDispatcher("/culturesites.jsp").forward(request,response);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }




    /**
     * 第一次跳转用
     * 数据放在request
     * @param request
     * @param response
     */
    private void toPage(HttpServletRequest request, HttpServletResponse response) {

        CultureSitesService cultureSitesService = new CultureSitesServiceImpl();
        LocationService locationService = new LocationServiceImpl();

        try {
            //类别
            List<Location> locationList = locationService.findLocation();
            request.setAttribute("locationList",locationList);
            //详细的每一项
            List<CultureSites> cultureSitesList = cultureSitesService.findAllCultureSites();
            request.setAttribute("cultureSitesList",cultureSitesList);
            request.getRequestDispatcher("/culturesites.jsp").forward(request,response);
        } catch (Exception e) {
            e.printStackTrace();
        }

    }



    /**
     * 根据分类的点击用AJAX刷新列表
     * @param request
     * @param response
     */
    private void findByType(HttpServletRequest request, HttpServletResponse response) {
        String typeId = request.getParameter("id");
        try {
            //设置输出格式
            response.setContentType("text/json;charset=utf-8");
            //获取JSON字符串
            CultureSitesService service = new CultureSitesServiceImpl();
            String json = service.findCultureSitesByTypeJson(typeId);
            //输出结果
            response.getWriter().write(json);
        } catch (Exception e) {
            e.printStackTrace();
        }

    }



}
