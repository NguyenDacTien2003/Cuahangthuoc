<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>

<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<html>--%>
<%--<head>--%>
<%--  <title>Title</title>--%>
<%--  <link rel="stylesheet" href="style.css">--%>
<%--</head>--%>
<%--<body>--%>
<%--<div class="chua">--%>
<%--  <h1>Product List</h1>--%>
<%--  <a href="products?action=new" class="button_sub">Add New Product</a>--%>
<%--  <table>--%>
<%--    <tr>--%>
<%--      <th>ID</th>--%>
<%--      <th>Name</th>--%>
<%--      <th>Price</th>--%>
<%--      <th>Quantity</th>--%>
<%--    </tr>--%>
<%--    <c:forEach var="product" items="${productList}">--%>
<%--      <tr>--%>
<%--        <td>${product.id}</td>--%>
<%--        <td>${product.name}</td>--%>
<%--        <td>${product.price}</td>--%>
<%--        <td>${product.quantity}</td>--%>
<%--        <td>--%>
<%--          <a href="products?action=edit&id=${product.id}" class="button"  >Edit</a>--%>
<%--          <a href="products?action=delete&id=${product.id}" class="button"--%>
<%--             onclick="return confirm('Are you sure you want to delete this product?')">Delete--%>
<%--          </a>--%>
<%--        </td>--%>
<%--      </tr>--%>
<%--    </c:forEach>--%>
<%--  </table>--%>

<%--</div>--%>
<%--</body>--%>
<%--</html>--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Title</title>
  <style>
    .chua {
      margin: 20px;
    }

    h1 {
      color: #333;
    }

    .button_sub {
      display: inline-block;
      padding: 10px 20px;
      background-color: #007bff;
      color: #fff;
      text-decoration: none;
      border-radius: 4px;
    }

    .button {
      display: inline-block;
      padding: 5px 10px;
      background-color: #555;
      color: #fff;
      text-decoration: none;
      border-radius: 4px;
      margin-right: 5px;
    }

    table {
      width: 100%;
      border-collapse: collapse;
    }

    th, td {
      padding: 10px;
      text-align: left;
      border-bottom: 1px solid #ddd;
    }

    th {
      background-color: #f2f2f2;
    }
  </style>
</head>
<body>
<div class="chua">
  <h1>Product List</h1>
  <a href="products?action=new" class="button_sub">Add New Product</a>
  <table>
    <tr>
      <th>ID</th>
      <th>Name</th>
      <th>Price</th>
      <th>Quantity</th>
    </tr>
    <c:forEach var="product" items="${productList}">
      <tr>
        <td>${product.id}</td>
        <td>${product.name}</td>
        <td>${product.price}</td>
        <td>${product.quantity}</td>
        <td>
          <a href="products?action=edit&id=${product.id}" class="button">Edit</a>
          <a href="products?action=delete&id=${product.id}" class="button"
             onclick="return confirm('Are you sure you want to delete this product?')">Delete
          </a>
        </td>
      </tr>
    </c:forEach>
  </table>
</div>
</body>
</html>
