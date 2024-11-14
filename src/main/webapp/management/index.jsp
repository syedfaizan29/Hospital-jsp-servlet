<%@page import="com.daoServlet.SpecialistDao"%>
<%@page import="com.daoServlet.DoctorDao"%>
<%@page import="com.dbConnection.DBConnection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Management Dashboard</title>
<%@include file="../component/all_css_files.jsp"%>
</head>
<body class="bg-image" style="background-image: url('../img/Hospital-img-2.jpg'); background-size: cover; height: 100vh">
    <%@include file="management-navbar.jsp"%>

    <c:if test="${empty managementObj}">
        <c:redirect url="../management_login.jsp"></c:redirect>
    </c:if>

    <div class="container p-5">
        <p class="text-center paint-card text-light fw-bold fs-2 mb-5">Hospital Management Dashboard</p>
        
        <c:if test="${not empty successMsg }">
            <p class="text-center fw-bold fs-5 paint-card container-fluid" style="color: #045D5D; background-color: white;">${successMsg}</p>
            <c:remove var="successMsg" scope="session" />
        </c:if>
        
        <c:if test="${not empty errorMsg }">
            <p class="text-center fw-bold fs-5 paint-card" style="color: red; background-color: white;">${errorMsg}</p>
            <c:remove var="errorMsg" scope="session" />
        </c:if>

        <div class="row">
            <% 
            DoctorDao doctor = new DoctorDao(DBConnection.MakeCon()); 
            %>
            <div class="col col-md-6 offset-md-3">
                <div class="card paint-card">
                    <div class="card-body text-center" style="color: #045D5D;">
                        <a href="doctorPage.jsp" class="fs-5 fw-bold text-center" style="text-decoration: none; color: #045D5D;">
                            <br>Doctor <br>(<%=doctor.countDoctors()%>)
                        </a>
                    </div>
                </div>
            </div>

            <% 
            SpecialistDao spec = new SpecialistDao(DBConnection.MakeCon()); 
            %>
            <div class="col col-md-6 offset-md-3 mt-5">
                <div class="card paint-card" data-bs-toggle="modal" data-bs-target="#exampleModal">
                    <div class="card-body text-center" style="color: #045D5D;">
                        <a class="fs-5 fw-bold text-center" role="button" style="text-decoration: none; color: #045D5D;">
                            <br>Specialist <br>(<%=spec.countSpecialist()%>)
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Please Fill the Details below :-</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form action="../addSepcialist" method="post">
                        <div class="form-group">
                            <label>Enter Specialist Name:</label>
                            <input class="form-control" type="text" name="scpeName" required>
                            <div class="text-center mt-3">
                                <button class="btn btn-primary active btn-block" type="submit">Add Specialist</button>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
