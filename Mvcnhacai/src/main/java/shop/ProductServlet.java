package shop;


import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import javax.xml.crypto.Data;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@WebServlet("/products")
public class ProductServlet extends HttpServlet {
    private List<Product> productList;
    @Override
    public void init() throws ServletException{
        super.init();
        productList = new ArrayList<>();
        productList.add(new Product(1,"Apple AirTag",28,12));
        productList.add(new Product(2,"Apple Magic Keyboard",99,54));
        productList.add(new Product(3,"Apple Watch",48,5465));
        productList.add(new Product(4,"Apple 2021 IMac",1328,12));
        productList.add(new Product(5, "Nguyendac tien", 555,78 ));
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "list";
        }

        switch (action) {
            case "new":
                showNewForm(request, response);
                break;
            case "create":
                createProduct(request, response);
                break;
            case "edit":
                showEditForm(request, response);
                break;
            case "update":
                updateProduct(request, response);
                break;
            case "delete":
                deleteProduct(request, response);
                break;
            default:
                listProducts(request, response);
                break;
        }
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    private void listProducts(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("productList", productList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("product-list.jsp");
        dispatcher.forward(request, response);
    }

    private void showNewForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("product-form.jsp");
        dispatcher.forward(request, response);
    }
    private void createProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = productList.size() + 1;
        String name = request.getParameter("name");
        double price = Double.parseDouble(request.getParameter("price"));

        int quantity = Integer.parseInt(request.getParameter("quantity")) ;

        Product newProduct = new Product(id, name, price,quantity);
        productList.add(newProduct);

        response.sendRedirect("products");

    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Product product = getProductById(id)
                ;

        request.setAttribute("product", product);
        RequestDispatcher dispatcher = request.getRequestDispatcher("product-form.jsp");
        dispatcher.forward(request, response);
    }
    private void updateProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        double price = Double.parseDouble(request.getParameter("price"));


        Product product = getProductById(id)
                ;
        product.setName(name);
        product.setPrice(price);

        response.sendRedirect("products");
    }
    private void deleteProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Product product = getProductById(id)
                ;
        productList.remove(product);

        response.sendRedirect("products");

    }
    private Product getProductById(int id) {
        for (Product product : productList) {
            if (product.getId() == id) {
                return product;
            }
        }
        return null;
    }
}

