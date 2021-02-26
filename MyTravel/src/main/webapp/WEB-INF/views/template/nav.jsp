<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
      <a class="navbar-brand" href="/">My Travel</a>
      <c:if test="${loginUser != null }">
      <p class="welcome_msg">${loginUser.u_id }, Welcome!</p> 
      </c:if>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item active">
            <a class="nav-link" href="/">Home
              <span class="sr-only">(current)</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/map/">Make root</a>
          </li>
          
          <c:if test="${loginUser == null}">
          	<li class="nav-item">
            	<a class="nav-link" href="/user/login">Login</a>
          	</li>
          	<li class="nav-item">
            	<a class="nav-link" href="#">Join</a>
          	</li>
          
          </c:if>
          
          <c:if test="${loginUser != null}">
          	<li class="nav-item">
            	<a class="nav-link" href="/user/logout">Logout</a>
          	</li>
          </c:if>
          
        </ul>
      </div>
    </div>
  </nav>

