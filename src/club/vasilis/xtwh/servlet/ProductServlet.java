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
        System.out.println("11111");
        String method = request.getParameter("method");
        if ("".equals(method)){

        }else if ("topage".equals(method)){
            toPage(request,response);
        }else if("findbytype".equals(method)){
            findByType(request,response);
        }

    }

    private void findByType(HttpServletRequest request, HttpServletResponse response) {
        System.out.println("111");
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

    private void toPage(HttpServletRequest request, HttpServletResponse response) {

        NativeProductCategoryService categoryService = new NativeProductCategoryServiceImpl();
        NativeProductService service = new NativeProductServiceImpl();
        try {

            // 类别
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
