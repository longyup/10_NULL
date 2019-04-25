package club.vasilis.xtwh.servlet;

import club.vasilis.xtwh.service.CultureNewsService;
import club.vasilis.xtwh.service.impl.CultureNewsServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;


/**
 *
 * @author 石志林
 * @date
 */
@WebServlet(name = "IndexServlet",urlPatterns = "/index")
public class IndexServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String method = request.getParameter("method");
        if (method.equals("")){

        }else if("CultrueNews".equals(method)){
            CultrueNews(request,response);
        }
    }

    private void CultrueNews(HttpServletRequest request, HttpServletResponse response) {
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
}
