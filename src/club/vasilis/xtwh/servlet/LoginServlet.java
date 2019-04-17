package club.vasilis.xtwh.servlet;

import club.vasilis.xtwh.domain.User;
import club.vasilis.xtwh.service.UserService;
import club.vasilis.xtwh.service.impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @author Vasilis
 * @date 2019/4/17 -12:54
 */

@WebServlet(name = "LoginServlet" ,urlPatterns = "/user/login")
public class LoginServlet extends HttpServlet {

    private UserService service = new UserServiceImpl();
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            // 1.设置响应头
            response.setContentType("text/html;charset=UTF-8");
            request.setCharacterEncoding("utf-8");
            // 2.接受参数，中文会怎么样?出错
            String name = request.getParameter("account");
            String pwd = request.getParameter("password");
            // 3.封装对象
            User user = new User();
            user.setAccount(name);
            user.setPassword(pwd);
            //BeanUtils.populate(admin,request.getParameterMap());
            // 4.查询数据库
            user = service.login(user);
            // 5.判断是否成功
            if (user == null) {
                System.out.println("登陆失败" + user);
                // response.getWriter().print("<span style='color:red'>登陆失败</span>");
                //挑去登陆页，重新登陆
                // 重定向，保准路径 ，302，二次请求 不能带数据
//            response.sendRedirect(request.getContextPath()+"/login.jsp");

                // 请求转发 可以携带数据，路径直接写.是服务端发出的，浏览器捕获不到，所以是在一次请求之内的
                request.setAttribute("name", name);
                request.setAttribute("msg","登陸失敗！，請檢查用戶名或密碼");
                request.setAttribute("login",false);
                request.getRequestDispatcher("/user/login.jsp").forward(request, response);
            } else {
                System.out.println("登陆成功" + user);
                response.getWriter().print("<span style='color:green'>登陆成功</span>");
                // 挑去后台管理界面
            }
        }catch (Exception e){
            request.setAttribute("msg","錯誤!");
            request.getRequestDispatcher("/jsp/msg.jsp").forward(request,response);
        }
    }
}
