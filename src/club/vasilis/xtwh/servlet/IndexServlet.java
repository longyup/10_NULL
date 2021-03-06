package club.vasilis.xtwh.servlet;

import club.vasilis.xtwh.service.CultureNewsService;
import club.vasilis.xtwh.service.CultureSitesService;
import club.vasilis.xtwh.service.NativeProductService;
import club.vasilis.xtwh.service.impl.CultureNewsServiceImpl;
import club.vasilis.xtwh.service.impl.CultureSitesServiceImpl;
import club.vasilis.xtwh.service.impl.NativeProductServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;


/**
 * @author 石志林
 * @date
 */
@WebServlet(name = "IndexServlet", urlPatterns = "/index")
public class IndexServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String method = request.getParameter("method");
        if ("".equals(method)) {

        } else if ("CultrueNews".equals(method)) {
            cultrueNews(request, response);
        } else if ("CultureSites".equals(method)) {
            CultureSites(request, response);
        } else if ("NativeProduct".equals(method)) {
            nativeProduct(request, response);
        }
    }

    private void cultrueNews(HttpServletRequest request, HttpServletResponse response) {
        try {
            //设置输出格式
            response.setContentType("text/json;charset=utf-8");
            //获取JSON字符串
            CultureNewsService service = new CultureNewsServiceImpl();
            String json = service.getJsonCultrueNews();
            //输出结果
            response.getWriter().write(json);
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void nativeProduct(HttpServletRequest request, HttpServletResponse response) {
        try {
            //设置输出格式
            response.setContentType("text/json;charset=UTF-8");
            //获取JSON字符串
            NativeProductService service = new NativeProductServiceImpl();
            String json = service.findFiveindex();
            //输出结果
            response.getWriter().write(json);
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void CultureSites(HttpServletRequest request, HttpServletResponse response) {
        try {
            //设置输出格式
            response.setContentType("text/json;charset=utf-8");
            //获取JSON字符串
            CultureSitesService service = new CultureSitesServiceImpl();
            String json = service.getJsonCultrueSites();
            //输出结果
            response.getWriter().write(json);
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}


