<%@page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #045D5D;">
    <div class="container-fluid">
        <a class="navbar-brand fw-bold active" href="index.jsp"><i class="fa-solid fa-hospital fa-flip"></i> Faizan-Hospital</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                <li class="nav-item"><a class="nav-link fw-bold active" aria-current="page" href="management_login.jsp">Management <i
                            class="fa-solid fa-square-h"></i></a></li>
                <li class="nav-item"><a class="nav-link fw-bold active" aria-current="page" href="doctor_login.jsp">Doctor <i
                            class="fa-solid fa-stethoscope"></i></a></li>
            </ul>
        </div>
    </div>
</nav>
