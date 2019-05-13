package club.vasilis.xtwh.servlet;

import club.vasilis.xtwh.domain.CultureSites;
import club.vasilis.xtwh.domain.FolkCustom;
import club.vasilis.xtwh.domain.Location;
import club.vasilis.xtwh.service.CultureSitesService;
import club.vasilis.xtwh.service.FolkCustomService;
import club.vasilis.xtwh.service.LocationService;
import club.vasilis.xtwh.service.impl.CultureSitesServiceImpl;
import club.vasilis.xtwh.service.impl.FolkCustomServiceImpl;
import club.vasilis.xtwh.service.impl.LocationServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "FolkCustomServlet",urlPatterns = "/folk_custom")
public class FolkCustomServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String method = request.getParameter("method");
        if ("".equals(method)){

        }
        else if ("topage".equals(method)){
            topage(request,response);
        }
    }

    private void topage(HttpServletRequest request, HttpServletResponse response) {
        System.err.println("风情民俗");
        FolkCustomService service = new FolkCustomServiceImpl();

        try {
            //菜单栏
            List<FolkCustom> customMenuList = service.customMenu();
            request.setAttribute("customMenuList",customMenuList);

            //标题内容
            List<FolkCustom> customPassageList = service.customPassage();
            request.setAttribute("customPassageList",customPassageList);

            request.getRequestDispatcher("/folk_custom.jsp").forward(request,response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
