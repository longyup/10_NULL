package club.vasilis.xtwh.servlet;

import club.vasilis.xtwh.domain.Community;
import club.vasilis.xtwh.domain.Phrase;
import club.vasilis.xtwh.service.CommunityService;
import club.vasilis.xtwh.service.impl.CommunityServiceImpl;
import org.apache.commons.beanutils.BeanUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.List;

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
        } else if ("updateItem".equals(method)) {
            updateItem(request, response);
        } else if ("phraseItem".equals(method)) {
            phraseItem(request, response);
        } else if ("getAdminCommunityAll".equals(method)) {
            getAdminCommunityAll(request, response);
        }else if ("deleteItem".equals(method)){
            deleteItem(request,response);
        }
    }

    private void deleteItem(HttpServletRequest request, HttpServletResponse response) {
        System.out.println("执行了删除");
        CommunityService service = new CommunityServiceImpl();
        int id = Integer.parseInt(request.getParameter("id"));
        try {
            service.deleteItem(id);
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    private void getAdminCommunityAll(HttpServletRequest request, HttpServletResponse response) {

        CommunityService service = new CommunityServiceImpl();
        // 从第几条
        int offset = request.getParameter("offset") != null ? Integer.parseInt(request.getParameter("offset")) : 0;
        try {
            List<Community> communityList = service.getAdminCommunity(offset);
            request.setAttribute("communityList", communityList);
            request.getRequestDispatcher("/admin/feedback-list.jsp").forward(request, response);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }



    /**
     * 点赞
     *
     * @param request
     * @param response
     */
    private void phraseItem(HttpServletRequest request, HttpServletResponse response) {
        // 封装对象
        Phrase phrase = new Phrase();
        try {
            boolean delete = Boolean.parseBoolean(request.getParameter("delete"));
            BeanUtils.populate(phrase, request.getParameterMap());
            CommunityService service = new CommunityServiceImpl();
            System.out.println(delete);
            System.out.println(phrase);
            service.phraseItem(delete, phrase);

        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * 发布说说的
     *
     * @param request
     * @param response
     */
    private void updateItem(HttpServletRequest request, HttpServletResponse response) {
        // 封装对象
        Community community = new Community();
        try {
            BeanUtils.populate(community, request.getParameterMap());
            CommunityService service = new CommunityServiceImpl();
            int id = service.updateItem(community);

            response.getWriter().print(id);

        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
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
