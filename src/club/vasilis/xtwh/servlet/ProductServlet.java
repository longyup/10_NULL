package club.vasilis.xtwh.servlet;

import club.vasilis.xtwh.domain.NativeProduct;
import club.vasilis.xtwh.domain.NativeProductCategory;
import club.vasilis.xtwh.service.NativeProductCategoryService;
import club.vasilis.xtwh.service.NativeProductService;
import club.vasilis.xtwh.service.impl.NativeProductCategoryServiceImpl;
import club.vasilis.xtwh.service.impl.NativeProductServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * @author Vasilis
 * @date 2019/5/8 -18:14
 */

@WebServlet(name = "ProductServlet",urlPatterns = "/product")
public class ProductServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String method = request.getParameter("method");
        if ("".equals(method)){

        }else if ("topage".equals(method)){
            toPage(request,response);
        }else if("findbytype".equals(method)){
            findByType(request,response);
        }else if ("details".equals(method)){
            detail(request,response);
        }

    }

    /**
     * 点击进入详情页面,数据放在request
     * @param request
     * @param response
     */
    private void detail(HttpServletRequest request, HttpServletResponse response) {
        System.err.println("详情页");
        String id = request.getParameter("id");

        NativeProductCategoryService categoryService = new NativeProductCategoryServiceImpl();
        NativeProductService service = new NativeProductServiceImpl();

        try {
            // 类别
            List<NativeProductCategory> categoryList = categoryService.findAllCategory();
            request.setAttribute("categoryList",categoryList);

            // 详细信息的显示

            NativeProduct nativeProduct = service.showDetails(id);
            System.err.println(nativeProduct);
            request.setAttribute("productDetails",nativeProduct);
            request.getRequestDispatcher("/productDetails.jsp").forward(request,response);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * 根据分类的点击用AJAX刷新列表
     * @param request
     * @param response
     */
    private void findByType(HttpServletRequest request, HttpServletResponse response) {
        String typeId = request.getParameter("id");
        try {
            //设置输出格式
            response.setContentType("text/json;charset=utf-8");
            //获取JSON字符串
            NativeProductService service = new NativeProductServiceImpl();
            String json = service.findProductByTypeJson(typeId);
            //输出结果
            response.getWriter().write(json);
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    /**
     * 第一次跳转用
     * 数据放在request
     * @param request
     * @param response
     */
    private void toPage(HttpServletRequest request, HttpServletResponse response) {

        NativeProductCategoryService categoryService = new NativeProductCategoryServiceImpl();
        NativeProductService service = new NativeProductServiceImpl();
        try {

            // 左侧菜单类别
            List<NativeProductCategory> categoryList = categoryService.findAllCategory();
            request.setAttribute("categoryList",categoryList);
            // 详细的每一项
            List<NativeProduct> productList = service.findAllProduct();
            request.setAttribute("productList",productList);
            request.getRequestDispatcher("/product.jsp").forward(request,response);


        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
