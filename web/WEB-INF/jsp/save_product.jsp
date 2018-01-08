<%-- 
    Document   : save_product
    Created on : Dec 29, 2017, 9:19:29 AM
    Author     : user
--%>

<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Input Product Page</title>
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        <center>
        <form:form action="${pageContext.request.contextPath}/product/saveproduct" modelAttribute="productBean" role="form" method="POST" enctype="multipart/form-data">
            <table>
                <tr>
                    <td>
                        <form:label path="nama_product">Nama Product</form:label>
                        </td>
                        <td>:</td>
                        <td><form:input path="nama_product" required="true" placeholder="Nama Product"></form:input></td>
                    </tr>
                    <tr>
                        <td>
                        <form:label path="deskripsi">Deskripsi Product</form:label>
                        </td>
                        <td>:</td>
                        <td>
                        <form:textarea path="deskripsi"  required="true"></form:textarea>
                        </td>
                    </tr>
                    <tr>
                        <td>
                        <form:label path="qty">Qty</form:label>
                        </td>
                        <td>:</td>
                        <td><form:input path="qty" required="true"></form:input></td>
                    </tr>
                    <tr>
                        <td>
                        <form:label path="id_kategori">Kategori Product</form:label>
                        </td>
                        <td>:</td>
                        <td>
                        <form:select path="id_kategori">
                            <c:forEach var="kat" items="${kategori}">
                                <form:option label="${kat.kategori}" value="${kat.idKetegori}"></form:option>
                            </c:forEach>
                        </form:select>
                    </td>
                </tr>
                <tr>
                    <td>
                        <form:label path="harga">Harga Product</form:label>
                        </td>
                        <td>:</td>
                        <td><form:input path="harga" required="true"></form:input></td>
                    </tr>
                    <tr>
                        <td>
                        <form:label path="berat">Berat Product</form:label>
                        </td>
                        <td>:</td>
                        <td><form:input path="berat" required="true"></form:input></td>
                    </tr>
                    <tr>
                        <td>
                        <form:label path="image">Gambar</form:label>
                        </td>
                        <td>:</td>
                        <td><form:input type="file" path="image" required="true"></form:input></td>
                    </tr>
                    <tr>


                    <td><form:hidden path="createdby" value="1"></form:hidden></td>
                    <td><form:hidden path="updatedby" value="1"></form:hidden></td>

                    <td><form:hidden path="updateddate" value="12/12/2017"></form:hidden></td>
                </tr>
                <tr>
                        <td>
                        <form:button name="simpan" value="submit">Submit</form:button>
                            <input type="reset" name="reset" value="Reset">
                        </td>
                    </tr>
                </table>
        </form:form>
        </center>
    </body>
</html>
