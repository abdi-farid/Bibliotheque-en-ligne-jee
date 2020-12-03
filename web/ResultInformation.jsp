<html>
    <head>
        <title>${titre}</title>
        <%@include file="head.jsp" %>
    </head>
    <body style="margin-top: 10%; opacity: 0.85; background-color: #ede5e5;">
        <!-- include header file -->
        <%@include file="header.jsp" %>
        
        
        
        <main id="main">
        <section id="blog" class="blog">
            
            <div class="container">
                
                <div class="row">
                    
                    
                    <div class="col-lg-1  col-md-6 d-flex align-items-stretch" data-aos="fade-up">
                    </div> <!-- end of column -->
                    
                    
                    <div class="col-lg-10  col-md-6 d-flex align-items-stretch" data-aos="fade-up">
                        
                        <article class="entry" style="box-shadow: 10px 20px 30px 0px;">

                            <div class="entry-img img-fluid">
                                <img src="include/assets/img/book.jpg" alt="" class="img-fluid">
                            </div>

                            <h2 class="entry-title" title="Titre">
                                <a href="#"> <c:out value="${titre}"/> </a>
                            </h2>
                            <div class="entry-meta">
                                <ul>
                                    <li class="d-flex align-items-center" title="Auteur">
                                        <i class="icofont-user"></i>
                                        <a href="#">${prenom} ${nom}</a>
                                    </li>
                                    
                                    <li class="d-flex align-items-center" title="Auteur">
                                        <i class="icofont-clock-time"></i>
                                        <a href="#">né en : ${ddn}</a>
                                    </li>
                                    
                                </ul>
                            </div>
                                    
                            <div class="entry-meta">
                                <ul>
                                    <li class="d-flex align-items-center" title="Domaine">
                                        <i class="icofont-data"></i>
                                        <a href="#"> domaine : ${domaine}</a>
                                    </li>
                                </ul>
                            </div>
                                 
                            <div class="entry-meta">
                                <ul>                                    
                                    <li class="d-flex align-items-center" title="ISSN">
                                        <i class="icofont-numbered"></i>
                                        <a href="#">${issn}</a>
                                    </li>
                                    
                                     <li class="d-flex align-items-center" title="Nombre de page">
                                        <i class="icofont-book-alt"></i> 
                                        <a href="">${nbpage} pages</a>
                                    </li>
                                </ul>
                            </div>

                            <div class="entry-content" title="Résumé">
                                <p>
                                   <!-- resumé -->
                                  ${resume}
                                </p>
                                
                            </div>
              
                        </article><!-- End blog entry -->
                        
                    </div> <!-- end of column -->
                    
                    <div class="col-lg-1  col-md-6 d-flex align-items-stretch" data-aos="fade-up">
                    </div> <!-- end of column -->
                    
                </div> <!-- end of row -->
                
            </div>
        </section>
    </main>
        
        
        
        
        <!-- include foot script  -->
        <%@include file="foot.jsp" %>
    </body>
</html>
