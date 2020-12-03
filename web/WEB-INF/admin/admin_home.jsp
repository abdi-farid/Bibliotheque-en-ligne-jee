<html>
    <head>
        <title>Home | admin</title>
        <%@include file="head.jsp" %>
    </head>
    <body style="background-image: url(include/assets/img/blog-1.jpg); background-size: 100%; background-repeat: no-repeat;">
        
        <!-- header -->
        <header id="header" class="fixed-top ">
            <div class="container d-flex align-items-center">
                <h1 class="logo"><a href="admin?vers=home">READ-it</a></h1>
                <nav class="nav-menu d-none d-lg-block">
                    <ul>
                        <li class="active"><a href="admin?vers=home">Home</a></li>
                        <li><a href="admin?vers=auteurs">Auteurs</a></li>
                        <li><a href="admin?vers=livres">Livres</a></li>
                        <li class="drop-down"><a href="#">Logout</a>
                            <ul>
                                <li><a href="admin?vers=logout">Logout</a></li>
                            </ul>
                        </li>
                </nav><!-- .nav-menu -->
                <a href="#" class="get-started-btn ml-auto bg-success">
                    <c:if test="${!empty sessionScope.login}">
                        <b>Hi, ${sessionScope.login}</b>
                    </c:if>
                </a>
            </div>

        </header><!-- End Header -->
        
        <!-- MAIN -->
        <section id="hero">
            <div id="heroCarousel" class="carousel slide carousel-fade" data-ride="carousel">

                <ol class="carousel-indicators" id="hero-carousel-indicators"></ol>

                <div class="carousel-inner" role="listbox">

                    <!-- Slide 1 -->
                <div class="carousel-item active" >
                    <div class="carousel-container">
                        <div class="container">
                            <h2 class="animate__animated animate__fadeInDown">Welcome to <span>Admin Manager</span></h2>
                            <p class="animate__animated animate__fadeInUp">
                                La gestion des ressource de site se fait dans cet espace
                            </p>
                        </div>
                    </div>
                </div>
                
                </div>

    </div>
  </section><!-- End Hero -->
        
        
        
        <!-- include foot script  -->
        <%@include file="foot.jsp" %>
    </body>
</html>
