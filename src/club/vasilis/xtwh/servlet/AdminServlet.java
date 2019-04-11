package club.vasilis.xtwh.servlet;

import club.vasilis.xtwh.domain.Admin;
import club.vasilis.xtwh.service.AdminService;
import club.vasilis.xtwh.service.impl.AdminServiceImpl;
import org.apache.commons.beanutils.BeanUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @author Vasilis
 * @date 2019/3/22 -9:26
 */

@WebServlet(name = "AdminServlet", urlPatterns = "/admin")
public class AdminServlet extends HttpServlet {

    private AdminService service = new AdminServiceImpl();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            // 1.设置响应头
            response.setContentType("text/html;charset=UTF-8");
            request.setCharacterEncoding("utf-8");
            // 2.接受参数，中文会怎么样?出错
            String name = request.getParameter("name");
            //String pwd = request.getParameter("password");
            // 3.封装对象
            //Admin admin = new Admin(null, name, pwd, null);
            Admin admin = new Admin();
            BeanUtils.populate(admin,request.getParameterMap());
            // 4.查询数据库
            admin = service.login(admin);
            // 5.判断是否成功
            if (admin == null) {
                System.out.println("登陆失败" + admin);
               // response.getWriter().print("<span style='color:red'>登陆失败</span>");
                //挑去登陆页，重新登陆
                // 重定向，保准路径 ，302，二次请求 不能带数据
//            response.sendRedirect(request.getContextPath()+"/login.jsp");

                // 请求转发 可以携带数据，路径直接写.是服务端发出的，浏览器捕获不到，所以是在一次请求之内的
                request.setAttribute("name", name);
                request.setAttribute("msg","登陸失敗！，請檢查用戶名或密碼");
                request.getRequestDispatcher("/login.jsp").forward(request, response);
            } else {
                System.out.println("登陆成功" + admin);
                response.getWriter().print("<span style='color:green'>登陆成功</span>");
                // 挑去后台管理界面
            }
        }catch (Exception e){
            request.setAttribute("msg","錯誤!");
            request.getRequestDispatcher("/jsp/msg.jsp").forward(request,response);
        }
    }
}
