<%@page import="com.dbConnection.DBConnection"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Faizan-Hospital</title>
<%@ include file="../component/all_css_files.jsp"%>
</head>
<body>
    <c:if test="${empty doctorObj}">
        <c:redirect url="../doctor_login.jsp"></c:redirect>
    </c:if>
    <%@ include file="navbarDoctor.jsp"%>

    <div class="container p-3">
        <p class="text-center fs-2 fw-bold f-color">Key Features of our Hospital</p>
        <div class="row">
            <div class="col-md-6">
                <div class="card mb-3 text-center">
                    <div class="card-body fw-bold">
                        <p class="fs-3">100% Safety</p>
                        <p>A hospital is 'safe' when it enjoys the highest level of
                            protection possible, when access routes to the health facility
                            are open, and when the water supply and electric power are reliable.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="card mb-3 text-center">
                    <div class="card-body fw-bold">
                        <p class="fs-3">Clean Environment</p>
                        <p>There is no visible dirt or grease in any area of the hospital.
                            It is free from cobwebs, bird nests, and other animal incubations.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="card mb-3 text-center">
                    <div class="card-body fw-bold">
                        <p class="fs-3">Friendly Doctors</p>
                        <p>Our hospital is proud of its doctors and highlights their
                            credentials and expertise both online and onsite.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="card mb-3 text-center">
                    <div class="card-body fw-bold">
                        <p class="fs-3">Medical Research</p>
                        <p>We are equipped for the diagnosis, medical and surgical treatment
                            of illnesses and injuries.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <hr>
    <div class="container p-2">
        <p class="text-center fs-2 fw-bold f-color">Our Team</p>
        <div class="row">
            <div class="col-md-3">
                <div class="card mb-3 text-center">
                    <div class="card-body">
                        <p class="fw-bold fs-5">Dr. Sumit Kumar Garg</p>
                        <p class="fs-7 f-color">(CEO & Chairman)</p>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card mb-3 text-center">
                    <div class="card-body">
                        <p class="fw-bold fs-5">Dr. Money Walliya Gupta</p>
                        <p class="fs-7 f-color">(Chief Doctor)</p>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card mb-3 text-center">
                    <div class="card-body">
                        <p class="fw-bold fs-5">Dr. Ramon Batty</p>
                        <p class="fs-7 f-color">(Chief Doctor)</p>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card mb-3 text-center">
                    <div class="card-body">
                        <p class="fw-bold fs-5">Dr. Niuise Palue</p>
                        <p class="fs-7 f-color">(Chief Doctor)</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <%@include file="../component/footer.jsp"%>
</body>
</html>
