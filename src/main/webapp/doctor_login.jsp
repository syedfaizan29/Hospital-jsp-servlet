<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Doctor Login</title>
<%@ include file="component/all_css_files.jsp"%>
</head>
<body>
    <%@ include file="component/navbar_file.jsp"%>

    <section class="vh-100" style="background-color: #00827F;">
        <div class="container py-5 h-100">
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col col-xl-6">
                    <div class="card paint-card" style="border-radius: 1rem;">
                        <div class="card-body p-4 text-black">
                            <c:if test="${not empty successMsg}">
                                <p class="text-center text-success fw-bold fs-5">${successMsg}</p>
                                <c:remove var="successMsg" scope="session" />
                            </c:if>
                            <c:if test="${not empty errorMsg}">
                                <p class="text-center text-danger fs-5">${errorMsg}</p>
                                <c:remove var="errorMsg" scope="session" />
                            </c:if>
                            <form action="doctorLogin" method="post">

                                <div class="d-flex align-items-center mb-3 pb-1">
                                    <span class="h1 fw-bold mb-0">Doctor Login</span>
                                </div>

                                <h5 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">Sign into your account</h5>

                                <div class="form-outline mb-4">
                                    <input type="email" name="email" id="email"
                                        class="form-control form-control-lg" required />
                                    <label class="form-label" for="email">Email Address</label>
                                </div>

                                <div class="form-outline mb-4">
                                    <input type="password" name="password" id="password"
                                        class="form-control form-control-lg" required />
                                    <label class="form-label" for="password">Password</label>
                                </div>

                                <div class="pt-1 mb-4">
                                    <button class="btn btn-lg btn-block text-hover" style="background-color:#00827F;" type="submit">Login</button>
                                </div>

                              
                                
                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <%@include file="component/footer.jsp"%>
</body>
</html>
