<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Management Login</title>
<%@ include file="component/all_css_files.jsp"%>
</head>
<body>
    <%@ include file="component/navbar_file.jsp"%>
    <section class="vh-100 d-flex align-items-center" style="background-color: #00827F;">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-6">
                    <div class="card paint-card p-4" style="border-radius: 1rem;">
                        <c:if test="${not empty SuccessMsg }">
                            <p class="text-center text-success fs-5">${SuccessMsg}</p>
                            <c:remove var="SuccessMsg" scope="session" />
                        </c:if>
                        <c:if test="${not empty errorMsg }">
                            <p class="text-center text-danger fs-5">${errorMsg}</p>
                            <c:remove var="errorMsg" scope="session" />
                        </c:if>
                        <form action="ManagementLogin" method="post">
                            <div class="text-center mb-3">
                                <span class="h1 fw-bold">Hospital Management Login</span>
                            </div>
                            <p class="text-center mb-3">Sign into your account</p>

                            <div class="form-outline mb-4">
                                <label class="form-label" for="form2Example17">Email address</label>
                                <input type="email" id="form2Example17" class="form-control form-control-lg" name="management_email" required />
                            </div>

                            <div class="form-outline mb-4">
                                <label class="form-label" for="form2Example27">Password</label>
                                <input type="password" id="form2Example27" class="form-control form-control-lg" name="management_password" required />
                            </div>

                            <div class="text-center">
                                <button class="btn btn-lg text-white" style="background-color: #00827F;" type="submit">Login</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <%@include file="component/footer.jsp"%>
</body>
</html>
