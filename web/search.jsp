<html>
    <head>
        <title>Search</title>
        <%@include file="head.jsp" %>
    </head>
    <body style="margin-top: 10%; background-color: #ede5e5;">
        
        <!-- include header file -->
        <%@include file="header.jsp" %>
        
        <!-- Search bar -->
    <center>
        <div class="col-lg-12 col-md-10">
            <form method="get" action="recherche">
                <b>Search by : </b>
                <select name="categorie" class="col-1 bg-dark text-light">
                    <option value="all">All</option>
                    <option value="titre">Titre</option>
                    <option value="auteur">Auteur</option>
                    <option value="domaine">Domaine</option>
                </select>
                <input type="text" name="search" value="${model.getKeyWord()}" class="col-8 border-dark" placeholder="Key word">
                <input type="submit" value="Search" class="col-1 bg-dark text-light" >
            </form>
        </div>
    </center><!-- end search bar -->
    
    <center>
        <c:if test="${!empty cat && !empty model.getResultats()}">
            Filtre par : <b>${cat}</b> <mark>${model.getKeyWord()}...</mark>
            [<b>${model.getResultats().size()} </b>résultat(s) trouvé(s)]
        </c:if>
    </center>
   
    
    <!-- ==============================================
      -- main body
      -- Affichage des résultats de recherche
      -- ============================================== -->
    <main id="main">
        <section id="blog" class="blog">
            <div class="container">
                <c:set var="index" value="0"/>
                
                    <!-- nombre de ligne à créer selon le nombre de résultats de recherche -->
                <div class="row">
                    
                    <c:forEach items="${model.getResultats()}" var="l">
                    <div class="col-lg-4  col-md-6 d-flex align-items-stretch" data-aos="fade-up" style="box-shadow: 10px 20px 30px 0px;">
                        <article class="entry">
                            
                            <center>
                            <div class="entry-img img-fluid">
                                <img src="include/assets/img/book.jpg" alt="" class="img-fluid">
                            </div>
                            </center>

                            <h2 class="entry-title">
                                <a href="#"> <c:out value="${l.getTitre()}"/> </a>
                            </h2>
                            <div class="entry-meta">
                                <ul>
                                    <li class="d-flex align-items-center" title="Auteur">
                                        <i class="icofont-user"></i>
                                        <a href="#">${l.getPrenom()} ${l.getNom()}</a>
                                    </li>
                                    <li class="d-flex align-items-center" title="Nombre de page">
                                        <i class="icofont-book-alt"></i> 
                                        <a href="">${l.getNbpage()} pages</a>
                                    </li>
                                </ul>
                            </div>
                                    
                            <div class="entry-meta">
                                <ul>
                                    <li class="d-flex align-items-center" title="Domaine">
                                        <i class="icofont-data"></i>
                                        <a href="#">${l.getDomaine()}</a>
                                    </li>
                                    <li class="d-flex align-items-center" title="Domaine">
                                        <i class="icofont-numbered"></i>
                                        <a href="#">${l.getISSN()}</a>
                                    </li>
                                </ul>
                            </div>

                            <div class="entry-content" title="Résumé">
                                <p>
                                    ${l.getResume()}
                                </p>
                                <div class="read-more">
                                    <form method="post" action="recherche">
                                        <input type="hidden" name="n" value="${l.getNom()}"/>
                                        <input type="hidden" name="p" value="${l.getPrenom()}"/>
                                        <input type="hidden" name="issn" value="${l.getISSN()}"/>
                                        <input type="hidden" name="t" value="${l.getTitre()}"/>
                                        <input type="hidden" name="d" value="${l.getDomaine()}"/>
                                        <input type="hidden" name="r" value="${l.getResume()}"/>
                                        <input type="hidden" name="np" value="${l.getNbpage()}"/>
                                        <input type="hidden" name="id" value="${l.getIDauteur()}"/>
                                        <input type="hidden" name="ddn" value="${l.getDDN()}"/>
                                        <input type="submit" value="Read More" class="btn btn-danger"/>
                                    </form>
                                </div>
                            </div>
              
                        </article><!-- End blog entry -->
                        
                    </div> <!-- end of column -->
                    </c:forEach>
                    
                </div> <!-- end of row -->
                
                <c:set var="index" value="${index + 1}"/>
            </div>
        </section>
    </main> <!-- fin d'affichage de recherche -->
   
        
        
        
        
        <!-- include foot script  -->
        <%@include file="foot.jsp" %>
    </body>
</html>
