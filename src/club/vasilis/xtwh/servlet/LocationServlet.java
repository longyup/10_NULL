package club.vasilis.xtwh.servlet;


import club.vasilis.xtwh.domain.CultureSites;
import club.vasilis.xtwh.domain.Location;
import club.vasilis.xtwh.service.CultureSitesService;
import club.vasilis.xtwh.service.LocationService;
import club.vasilis.xtwh.service.impl.CultureSitesServiceImpl;
import club.vasilis.xtwh.service.impl.LocationServiceImpl;

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
@WebServlet(name = "LocationServlet",urlPatterns = "/culture")
public class LocationServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String method = request.getParameter("method");
        if ("".equals(method)){

        }
        else if ("topage".equals(method)){
            topage(request,response);
        }
    }

    private void topage(HttpServletRequest request, HttpServletResponse response) {

        CultureSitesService cultureSitesService = new CultureSitesServiceImpl();
        LocationService locationService = new LocationServiceImpl();

        try {
            //类别
            List<Location> locationList = locationService.findLocation();
            request.setAttribute("locationList",locationList);
            //详细的每一项
            List<CultureSites> cultureSitesList = cultureSitesService.findAllCultureSites();
            request.setAttribute("cultureSitesList",cultureSitesList);
            request.getRequestDispatcher("/culture.jsp").forward(request,response);
        } catch (Exception e) {
            e.printStackTrace();
        }

    }


}
