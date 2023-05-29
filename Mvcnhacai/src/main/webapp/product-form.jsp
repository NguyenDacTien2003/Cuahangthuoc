<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>

<%--<html>--%>
<%--<head>--%>
<%--  <title>Title</title>--%>
<%--</head>--%>

<%--<body>--%>
<%--<h1>Cua Hang Thuoc</h1>--%>
<%--<c:choose>--%>
<%--  <c:when test="${empty product.id}">--%>
<%--    <form action="products?action=create" method="POST">--%>
<%--      <label for="name">Name:</label>--%>
<%--      <input type="text" id="name1" name="name">--%>
<%--      <br><br>--%>
<%--      <label for="price">Price:</label>--%>
<%--      <input type="text" id="price1" name="price">--%>
<%--      <br><br>--%>
<%--      <label for="quantity">Quantity:</label>--%>
<%--      <input type="text" id="quantity1" name="quantity">--%>
<%--      <br><br>--%>


<%--      <input type="submit" value="Create">--%>
<%--      <a href="products" class="button">Cancel</a>--%>
<%--    </form>--%>
<%--  </c:when>--%>
<%--  <c:otherwise>--%>
<%--    <form action="products?action=update" method="POST">--%>
<%--      <input type="hidden" name="id" value="${product.id}">--%>
<%--      <label for="name">Name:</label>--%>
<%--      <input type="text" id="name" name="name" value="${product.name}">--%>
<%--      <br><br>--%>
<%--      <label for="price">Price:</label>--%>
<%--      <input type="text" id="price" name="price" value="${product.price}">--%>
<%--      <br><br>--%>
<%--      <label for="quantity">Price:</label>--%>
<%--      <input type="text" id="quantity" name="quantity1" value="${product.quantity}">--%>
<%--      <br><br>--%>

<%--      <input type="submit" value="Update">--%>
<%--      <a href="products" class="button">Cancel</a>--%>
<%--    </form>--%>
<%--    <form action="products?action=delete" method="POST">--%>
<%--      <input type="hidden" name="id" value="${product.id}">--%>
<%--      <input type="submit" class="button" value="Delete">--%>
<%--    </form>--%>
<%--  </c:otherwise>--%>
<%--</c:choose>--%>
<%--</body>--%>
<%--</html>--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
  <title>Title</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f1f1f1;
    }

    h1 {
      color: #333;
      text-align: center;
    }

    form {
      max-width: 400px;
      margin: 0 auto;
      padding: 20px;
      background-color: #fff;
      border: 1px solid #ddd;
      border-radius: 5px;
      box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    }

    label {
      display: block;
      margin-bottom: 10px;
    }

    input[type="text"] {
      width: 100%;
      padding: 10px;
      border: 1px solid #ddd;
      border-radius: 4px;
      box-sizing: border-box;
    }

    input[type="submit"],
    .button {
      display: inline-block;
      padding: 10px 20px;
      background-color: #007bff;
      color: #fff;
      text-decoration: none;
      border-radius: 4px;
      border: none;
      cursor: pointer;
    }

    .button {
      background-color: #555;
      margin-left: 10px;
    }
  </style>
</head>

<body>
<h1>Cua Hang Thuoc</h1>
<c:choose>
<c:when test="${empty product.id}">
<form action="products?action=create" method="POST">
  <label for="name">Name:</label>
  <input type="text" id="name1" name="name">
  <br><br>
  <label for="price">Price:</label>
  <input type="text" id="price1" name="price">
  <br><br>
  <label for="quantity">Quantity:</label>
  <input type="text" id="quantity1" name="quantity">
  <br><br>

  <input type="submit" value="Create">
  <a href="products" class="button">Cancel</a>
</form>
</c:when>
<c:otherwise>
<form action="products?action=update" method="POST">
  <input type="hidden" name="id" value="${product.id}">
  <label for="name">Name:</label>
  <input type="text" id="name" name="name" value="${product.name}">
  <br><br>
  <label for="price">Price:</label>
  <input type="text" id="price" name="price" value="${product.price}">
  <br><br>
  <label for="quantity">Price:</label>
  <input type="text" id="quantity" name="quantity" value="${product.quantity}">
  <br><br>

  <input type="submit" value="Update">
  <a href="products" class="button">Cancel</a>
</form>
  <form action="products?action=delete" method="POST">
    <input type="hidden" name="id" value="${product.id}">
    <input type="submit" class="button" value="Delete">
  </form>
</c:otherwise>
</c:choose>
</body>
</html>