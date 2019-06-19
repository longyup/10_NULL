package club.vasilis.xtwh.servlet;

import club.vasilis.xtwh.service.CommunityService;
import club.vasilis.xtwh.service.impl.CommunityServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @author Vasilis
 * @date 2019/6/14 -9:18
 */
@WebServlet(name = "CommunityServlet", urlPatterns = "/community")
public class CommunityServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String method = request.getParameter("method");
        if ("getInfo".equals(method)) {
            getInfo(request, response);
        }
    }

    private void getInfo(HttpServletRequest request, HttpServletResponse response) {
        // 从第几条
        int offset = request.getParameter("offset") != null ? Integer.parseInt(request.getParameter("offset")) : 0;
        CommunityService service = new CommunityServiceImpl();
        try {
            String json = service.findTwentyByJson(offset);
            response.setContentType("text/json;charset=utf-8");
            response.getWriter().write(json);
        } catch (Exception e) {
            e.printStackTrace();
        }

    }
}
