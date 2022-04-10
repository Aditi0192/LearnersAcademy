<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <html>

        <head>
            <title>Learners Academy</title>
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        </head>

        <body>

            <header>
                <nav class="navbar navbar-expand-md navbar-dark" style="background-color: tomato">
                    <div>
                        <a href="loginSuccess.jsp" class="navbar-brand"> Learners Academy </a>
                    </div>
                    <div> </div>
                    <div> </div>
                    <div>
                        <a href="login.jsp" class="navbar-brand"> Logout </a>
                    </div>

                    <ul class="navbar-nav">
                        <li><a href="<%=request.getContextPath()%>/GetDataServlet" class="nav-link">Generate class Report</a></li>
                    </ul>
                </nav>
            </header>
            <br>

            <div class="row">
                <!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

                <div class="container">
                    <h3 class="text-center">Class Report</h3>
                    <hr>
                    <div class="container text-left">

                    </div>
                    <br>
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>Class ID</th>
                                <th>class Name</th>
                                <th>Roll Number</th>
                                <th>Student Name</th>
                                <th>Teacher Name</th>
                                <th>Subject</th>
                            </tr>
                        </thead>
                        <tbody>
                            <!--   for (Todo todo: todos) {  -->
                            <c:forEach var="data" items="${data}">

                                <tr>
                                    <td>
                                        <c:out value="${data.class_id}" />
                                    </td>
                                    <td>
                                        <c:out value="${data.class_name}" />
                                    </td>
                                    <td>
                                        <c:out value="${data.roll_no}" />
                                    </td>
                                    <td>
                                        <c:out value="${data.student_name}" />
                                    </td>
                                    <td>
                                        <c:out value="${data.teacher_name}" />
                                    </td>
                                    <td>
                                        <c:out value="${data.subject}" />
                                    </td>
                                </tr>
                            </c:forEach>
                            <!-- } -->
                        </tbody>

                    </table>
                </div>
            </div>
        </body>

        </html>