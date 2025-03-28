<%-- 
    Document   : manageAccount
    Created on : 26/03/2025, 9:39:05 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="dto.userDTO" %>
<%@ page import="dao.userDAO" %>
<%@ page import="utils.AuthUtils" %>
<%@ page session="true" %>

<%
    if (!AuthUtils.isLoggedIn(session)) {
        response.sendRedirect("login.jsp");
        return;
    }

    userDTO user = (userDTO) session.getAttribute("user");
    String error = (String) request.getAttribute("error");
    String message = (String) request.getAttribute("message");
%>

<!DOCTYPE html>
<html lang="vi">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Quản lý tài khoản</title>
        <script src="https://cdn.tailwindcss.com"></script>
    </head>
    <body class="bg-gray-100">
        <div class="max-w-lg mx-auto mt-10 p-6 bg-white rounded-lg shadow-md">
            <h2 class="text-xl font-bold mb-4">Quản lý tài khoản</h2>

            <%-- Hiển thị thông báo lỗi --%>
            <% if (error != null) {%>
            <div class="mb-4 p-3 bg-red-200 text-red-800 rounded">
                <%= error%>
            </div>
            <% } %>

            <%-- Hiển thị thông báo thành công --%>
            <% if (message != null) {%>
            <div class="mb-4 p-3 bg-green-200 text-green-800 rounded">
                <%= message%>
            </div>
            <% }%>

            <form action="MainController" method="post">
                <div class="mb-4">
                    <label class="block text-gray-700">Họ và Tên:</label>
                    <input type="text" name="fullName" value="<%= user.getFullname()%>" class="w-full px-3 py-2 border rounded">
                </div>

                <div class="mb-4">
                    <label class="block text-gray-700">Email:</label>
                    <input type="email" name="email" value="<%= user.getEmail()%>" class="w-full px-3 py-2 border rounded" readonly>
                </div>

                <div class="mb-4">
                    <label class="block text-gray-700">Mật khẩu mới:</label>
                    <input type="password" name="newPassword" class="w-full px-3 py-2 border rounded">
                </div>

                <div class="mb-4">
                    <label class="block text-gray-700">Xác nhận mật khẩu:</label>
                    <input type="password" name="confirmPassword" class="w-full px-3 py-2 border rounded">
                </div>

                <div class="mb-4">
                    <label class="block text-gray-700">Nhập mật khẩu hiện tại để xác nhận:</label>
                    <input type="password" name="currentPassword" required class="w-full px-3 py-2 border rounded">
                </div>

                <input type="hidden" name="userId" value="<%= user.getUsername()%>">

                <button type="submit" name="action" value="manage" class="w-full bg-blue-500 text-white py-2 rounded">
                    Cập nhật
                </button>
            </form>
            <div class="text-center mt-4">
                <a href="MainController?action=search" class="text-blue-400 hover:text-blue-300">
                    Trở về trang chủ
                </a>
            </div>
        </div>
    </body>
</html>