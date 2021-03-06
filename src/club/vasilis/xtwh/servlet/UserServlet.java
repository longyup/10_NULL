package club.vasilis.xtwh.servlet;

import club.vasilis.xtwh.domain.User;
import club.vasilis.xtwh.service.UserService;
import club.vasilis.xtwh.service.impl.UserServiceImpl;
import net.sf.json.JSONObject;
import org.apache.commons.beanutils.BeanUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;

/**
 * @author Vasilis
 * @date 2019/4/17 -12:54
 */

@WebServlet(name = "UserServlet", urlPatterns = "/user")
public class UserServlet extends HttpServlet {

    private UserService service = new UserServiceImpl();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        // 1.设置响应头
        response.setContentType("text/html;charset=UTF-8");
        // 设置响应头,解决用户输入出错问题
        request.setCharacterEncoding("utf-8");
        String method = request.getParameter("method");
        if (method == null || "loginW".equals(method)) {
            //web页的登陆,m没有参数，或者参数为null;
            loginW(request, response);
        }else if ("registerW".equals(method)){
            //web端的注册
            registerW(request,response);
        } else if ("loginA".equals(method)) {
            //Android端的登录
            loginA(request, response);
        }else if ("registerA".equals(method)){
            registerA(request, response);
        }else if ("modifyMsg".equals(method)){
            modifyMsg(request,response);
        }
    }

    /**
     * 安卓端修改个人信息
     * @param request
     * @param response
     */
    private void modifyMsg(HttpServletRequest request, HttpServletResponse response) {
        try{
            //创建对象
            User user = new User();
            BeanUtils.populate(user,request.getParameterMap());
            service.motify(user);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * 安卓端注册
     * @param request
     * @param response
     */
    private void registerA(HttpServletRequest request, HttpServletResponse response) {
        try {
            User user = new User();
            BeanUtils.populate(user,request.getParameterMap());
            service.save(user);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * 安卓端登录
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    private void loginA(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        try {
            // 封装对象
            User user = new User();
            BeanUtils.populate(user, request.getParameterMap());

            // 3:查询数据库
            user = service.login(user);

            // 4:判断登陆是否成功
            if (user == null) {
                System.out.println("Android端 登陆失败：" + user);
                // 失败输出 0
                response.getWriter().print("0");
            } else {
                System.out.println("Android端 登陆成功：" + user);
                // 成功返回json
                response.setContentType("text/json;charset=utf-8");
                JSONObject json = JSONObject.fromObject(user);
                response.getWriter().write(json.toString());

            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * web端登陆
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    private void loginW(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            //1.封装对象
            User user = new User();

            String name = request.getParameter("account");
            String pwd = request.getParameter("password");
            user.setAccount(name);
            user.setPassword(pwd);
            //3.查询数据库
            user = service.login(user);

            // 4.判断是否成功
            if (user == null) {
                System.out.println("登陆失败" + user);
                // 请求转发 可以携带数据，路径直接写.是服务端发出的，浏览器捕获不到，所以是在一次请求之内的
                request.setAttribute("account", name);
                request.setAttribute("msg", "登陸失敗！，請檢查用戶名或密碼");
                request.getRequestDispatcher("/user/login.jsp").forward(request, response);
            } else {
                System.out.println("登陆成功" + user);
                response.getWriter().print("<span style='color:green'>登陆成功</span>");
                // 挑去后台管理界面
            }
        } catch (Exception e) {
            request.setAttribute("msg", "錯誤!");
            request.getRequestDispatcher("/jsp/msg.jsp").forward(request, response);
        }
    }

    /**
     * web端注册
     * 为用户提供注册的用户界面
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    private void registerW(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        //1.封装对象
        //创建一个user对象，使用beanutils封装对象
        User user = new User();
        try {
            BeanUtils.populate(user, request.getParameterMap());

            //2.调用userservice。register 返回类型:int
            int i = new UserServiceImpl().registerUser(user);

            //3.判断int，将信息请求转发到login
            if (i == 1){
                System.err.println("注册成功！");
//                request.setAttribute("msg","注册成功！");
                response.getWriter().print("注册成功！正在跳转登录界面...");
                request.getRequestDispatcher("/login.jsp").forward(request,response);
            }else {
                System.err.println("注册失败！");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

}
