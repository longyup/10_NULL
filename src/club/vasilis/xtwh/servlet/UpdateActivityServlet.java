package club.vasilis.xtwh.servlet;

import club.vasilis.xtwh.domain.Activity;
import club.vasilis.xtwh.service.impl.ActivityServiceImpl;
import org.apache.commons.beanutils.BeanUtils;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.sql.SQLException;
import java.util.Map;

public class UpdateActivityServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
            Activity activity = null;
            try {
                //设置输出格式
                resp.setContentType("text/json;charset=utf-8");
                //获取活动Id
                String id =req.getParameter("id");
                //调用service，通过id获取活动，返回值request
                activity = new ActivityServiceImpl().getActivityById(id);
                //将activity放到request域中，请求转发到product-add。jsp
                req.setAttribute("activity",activity);
                req.getRequestDispatcher("").forward(req,resp);
            } catch (ServletException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            } catch (SQLException e) {
                e.printStackTrace();
            }
    }



    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }
}
