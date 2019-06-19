package club.vasilis.xtwh.servlet;

import club.vasilis.xtwh.domain.Activity;
import club.vasilis.xtwh.service.ActivityService;
import club.vasilis.xtwh.service.impl.ActivityServiceImpl;
import club.vasilis.xtwh.util.DsUtils;
import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.crypto.Data;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.nio.file.attribute.FileTime;
import java.sql.SQLException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet(name = "AddActivityServlet",urlPatterns = "/addActivityServlet")
public class AddActivityServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

//        //扩展令牌机制
//        //获取session中的和提交过来的令牌
//        String s_lingpai = request.getParameter("s_lingpai");
//        //移出session中的令牌
//        String r_lingpai= (String) request.getSession().getAttribute("r_lingpai");
//        //比较两个令牌
//        if (s_lingpai == null || !s_lingpai.equals(r_lingpai)){
//            //已经提交过了，生成错误信息，放入request域中，到msg.jsp
//            request.setAttribute("msg","商品已经保存！");
//            request.getRequestDispatcher("product-list.jsp").forward(request,response);
//            return;
//
//        }


        String id = request.getParameter("id");
        String uuid = id+DsUtils.getUUID();
        String name = request.getParameter("name");
        String info = request.getParameter("info");
        String startTime = request.getParameter("startTime");
        Activity activity = new Activity(id,name,info,startTime);
        request.setAttribute("id",uuid);
        request.setAttribute("name",name);
        request.setAttribute("info",info);
        request.setAttribute("startTime",startTime);
        request.getRequestDispatcher("/admin/product-list.jsp").forward(request,response);
        try {
            new ActivityServiceImpl().sava(activity);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
