<html>
    <head>
        <title>Home</title>
        <%@include file="head.jsp" %>
    </head>
    <body style="background-color: #ede5e5;">
        <!-- include header file -->
        <%@include file="header.jsp" %>
        
        <!-- 
        ==================================
            IMAGE D'ACCUEIL
        =====================================
        -->
        <section id="hero" style="background-image: url(include/assets/img/Home2.jpg); background-repeat: no-repeat; background-size: 100%;">
            <div id="heroCarousel" class="carousel slide carousel-fade" data-ride="carousel">

                <ol class="carousel-indicators" id="hero-carousel-indicators"></ol>

                <div class="carousel-inner" role="listbox">

                    <!-- Slide 1 -->
                <div class="carousel-item active" >
                    <div class="carousel-container">
                        <div class="container">
                            <h2 class="animate__animated animate__fadeInDown"><span>Welcome</span></h2>
                            <p class="animate__animated animate__fadeInUp">
                                Aller dans la page de recherche er recherchez votre livre de manière la plus performante 
                            </p>
                        </div>
                    </div>
                </div>

                    <!-- Slide 2 -->
                <div class="carousel-item" style="background-image: url(assets/img/slide/slide-2.jpg)">
                    <div class="carousel-container">
                        <div class="container">
                            <h2 class="animate__animated animate__fadeInDown">Travail réalisé</h2>
                            <p class="animate__animated animate__fadeInUp">
                                Toutes les fonctionnalités backend de ce site sont implémentées et développées par moi même (F.A)<br>
                                Cette template html bootstrap est téléchargée et elle n'est pas réalisée par moi même
                            </p>
                        </div>
                    </div>
                </div>

      </div>

      <a class="carousel-control-prev" href="#heroCarousel" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon icofont-simple-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>

      <a class="carousel-control-next" href="#heroCarousel" role="button" data-slide="next">
        <span class="carousel-control-next-icon icofont-simple-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>

    </div>
  </section><!-- End Hero -->
            <!-- ==========================
                FIN D'IMAGE D'ACCUEIL
                ==========================
            -->
    

  
        <!-- main body -->
    <main id="main">
        <section id="blog" class="blog">
            <div class="container">
                
                    <!-- ligne MVC -->
                <div class="row">
                    
                        <!-- colonne de Modele -->
                    <div class="col-lg-4  col-md-6 d-flex align-items-stretch" data-aos="fade-up">
                        <article class="entry">
                            <center>
                            <div class="entry-img img-fluid">
                                <img src="include/assets/img/model.PNG" alt="" class="img-fluid">
                            </div>
                            </center>

                            <h2 class="entry-title">
                                <a href="#">Modèle</a>
                            </h2>
                                    
                            <div class="entry-content" title="Modèle">
                                <p>
                                    Les modèles sont les contitées qui contienent les données (<i>les Objet</i>)<br>
                                    On peut les considérer comme classes moules des objets qui contienent les données récupérer 
                                    de la base des données, ou des données entrées par l'utilisateur afin de les stocker ou transférer
                                </p>
                                
                            </div>
              
                        </article><!-- End blog entry -->
                        
                    </div> <!-- end of column -->
                    
                        <!-- colonne de Vue -->
                    <div class="col-lg-4  col-md-6 d-flex align-items-stretch" data-aos="fade-up">
                        <article class="entry">
                            <center>
                            <div class="entry-img img-fluid">
                                <img src="include/assets/img/vue.PNG" alt="" class="img-fluid">
                            </div>
                            </center>

                            <h2 class="entry-title">
                                <a href="#">Vue</a>
                            </h2>
                                    
                            <div class="entry-content" title="Vue">
                                <p>
                                    La vue représente ce que l'utilisateur de système visionne. c'est la couche où les données sont représentées sous forme graphique<br>
                                    Donc l'utilisateur interagit avec cette couche directement, il clique sur les boutons, remplit les champs de texte, voir les données sous forme textuelle ou graphique
                                </p>
                                
                            </div>
              
                        </article><!-- End blog entry -->
                        
                    </div> <!-- end of column -->
                    
                        <!-- colonne de Controleur -->
                    <div class="col-lg-4  col-md-6 d-flex align-items-stretch" data-aos="fade-up">
                        <article class="entry">
                            <center>
                            <div class="entry-img img-fluid">
                                <img src="include/assets/img/control.PNG" alt="" class="img-fluid">
                            </div>
                            </center>

                            <h2 class="entry-title">
                                <a href="#">Contrôleur</a>
                            </h2>
                                    
                            <div class="entry-content" title="Contrôleur">
                                <p>
                                    Les contrôleurs jouent le rôle d'intermidiare entre les vues et les modèles. Ils transportents les données de l'utilisateur (VUE) vers les modèles, <br>
                                    et transportent les données des modèles vers l'utilisateur (Vue). Cette couche n'est pas visibles à l'utilisateur.
                                </p>
                                
                            </div>
              
                        </article><!-- End blog entry -->
                        
                    </div> <!-- end of column -->
                    
                </div> <!-- end of row -->
                
                    <!--END OF MVC -->

                    
                    <!-- ligne DAO -->
                <div class="row">
                    
                        <!-- colonne de Modele -->
                    <div class="col-lg-4  col-md-6 d-flex align-items-stretch" data-aos="fade-up">
                        <article class="entry">
                            <center>
                            <div class="entry-img img-fluid">
                                <img src="include/assets/img/data.PNG" alt="" class="img-fluid">
                            </div>
                            </center>

                            <h2 class="entry-title">
                                <a href="#">DATA</a>
                            </h2>
                                    
                            <div class="entry-content" title="Résumé">
                                <p>
                                    Les modèles sont les contitées qui contienent les données (<i>les Objet</i>)<br>
                                    On peut les considérer comme classes moules des objets qui contienent les données récupérer 
                                    de la base des données, ou des données entrées par l'utilisateur afin de les stocker ou transférer
                                </p>
                                
                            </div>
              
                        </article><!-- End blog entry -->
                        
                    </div> <!-- end of column -->
                    
                        <!-- colonne de Vue -->
                    <div class="col-lg-4  col-md-6 d-flex align-items-stretch" data-aos="fade-up">
                        <article class="entry">
                            <center>
                            <div class="entry-img img-fluid">
                                <img src="include/assets/img/access.PNG" alt="" class="img-fluid">
                            </div>
                            </center>
                            
                            <h2 class="entry-title">
                                <a href="#">ACCESS</a>
                            </h2>
                                    
                            <div class="entry-content" title="Résumé">
                                <p>
                                    Les modèles sont les contitées qui contienent les données (<i>les Objet</i>)<br>
                                    On peut les considérer comme classes moules des objets qui contienent les données récupérer 
                                    de la base des données, ou des données entrées par l'utilisateur afin de les stocker ou transférer
                                </p>
                                
                            </div>
              
                        </article><!-- End blog entry -->
                        
                    </div> <!-- end of column -->
                    
                        <!-- colonne de Controleur -->
                    <div class="col-lg-4  col-md-6 d-flex align-items-stretch" data-aos="fade-up">
                        <article class="entry">
                            <center>
                            <div class="entry-img img-fluid">
                                <img src="include/assets/img/object.PNG" alt="" class="img-fluid">
                            </div>
                            </center>

                            <h2 class="entry-title">
                                <a href="#">OBJECT</a>
                            </h2>
                                    
                            <div class="entry-content" title="Résumé">
                                <p>
                                    Les modèles sont les contitées qui contienent les données (<i>les Objet</i>)<br>
                                    On peut les considérer comme classes moules des objets qui contienent les données récupérer 
                                    de la base des données, ou des données entrées par l'utilisateur afin de les stocker ou transférer
                                </p>
                                
                            </div>
              
                        </article><!-- End blog entry -->
                        
                    </div> <!-- end of column -->
                    
                </div> <!-- end of row -->
                
            </div>
        </section>
        </main>
        
        
        
        <!-- include foot script  -->
        <%@include file="foot.jsp" %>
    </body>
</html>
