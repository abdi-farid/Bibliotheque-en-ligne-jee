<html>
    <head>
        <title>Add Book | Admin</title>
        <%@include file="head.jsp" %>
    </head>
    <body style="margin-top: 10%;">
        
        <!-- ==============================================
        ====        CETTE PAGE CONTIENT :
        ====            1. FORMULAIRE D'AJOUT D'UN LIVRE
        ====            2. FORMULAIRE DE MISE A JOUR D'UN LIVRE 
        ============================================== -->    
        
        <!-- header -->
        <header id="header" class="fixed-top ">
            <div class="container d-flex align-items-center">
                <h1 class="logo"><a href="admin?vers=home">READ-it</a></h1>
                <nav class="nav-menu d-none d-lg-block">
                    <ul>
                        <li class="active"><a href="admin?vers=home">Home</a></li>
                        <li><a href="admin?vers=auteurs">Auteurs</a></li>
                        <li><a href="admin?vers=livres">Livres</a></li>
                </nav><!-- .nav-menu -->
            </div>
        </header><!-- End Header -->
        

    <!-- ==============================================
    ====
    ====        1. FORMULAIRE POUR L'AJOUT D'UN LIVRE    
    ====
    ================================================== -->
    
    <c:if test="${(!empty add) && (!empty auteurs)}">
    <center>
        <div class="card w-75" style="margin-top: 5%;
             box-shadow: 10px 20px 30px 0px;">
            
            <!-- card header-->
            <div class="card-header text-lg-center bg-dark text-light">
                <b>Nouveau livre</b>
            </div>
            
            <!-- card body -->
            <div class="card-body">
                
                <form method="post" action="crud">
                    <div class="row">
                        
                        <!-- envoie de données cachées pour ajouter un livre -->
                        <div class="col">      
                            <input type="hidden" class="form-control" name="opCRUD" value="addBook" >
                        </div>
                        
                    </div>
                    <div class="row">
                        <!-- ISSN -->
                        <div class="col">      
                            <input type="text" class="form-control" name="issn" placeholder="ISSN" required>
                        </div>

                    </div>
                    
                    <div class="row" style="margin-top: 1%;">

                        <!-- Title's book -->
                        <div class="col">      
                            <input type="text" class="form-control" name="titre" placeholder="Titre" required>
                        </div>
                        
                        <!-- NUmber of pages -->
                        <div class="col">      
                            <input type="number" class="form-control" name="nbpage" placeholder="Nombre de page" required>
                        </div>

                    </div>
                    
                    <div class="row" style="margin-top: 1%;">

                        <!-- Domain -->
                        <div class="col">      
                            <input type="text" class="form-control" name="domaine" placeholder="Domaine" required>
                        </div>
                        
                        <!-- Author ID 
                            le SELECT affiche seulement les auteurs existants dans la base
                        -->
                        <div class="col">
                            <select name="idAuteur" class="form-control" required>
                                <c:forEach var="a" items="${auteurs}">
                                    <option value="${a.getID()}">${a.getPrenom()} ${a.getNom()}</option>
                                </c:forEach>
                            </select>
                        </div>

                    </div>
                    
                    <div class="row" style="margin-top: 1%;">
                        
                        <!-- Résumé -->
                        <div class="col">
                            <textarea class="form-control" name="resume" placeholder="Résumé..."></textarea>
                        </div>
                        
                    </div>
                    
                    <div class="row w-25" style="margin-top: 2%;">
                        
                        <!-- cancel button -->
                        <div class="col">
                            <a href="admin?vers=livres" class="form-control btn btn-warning" role="button"><b>Annuler</b></a>
                        </div>
                        
                        <!-- Add button -->
                        <div class="col">
                            <button class="form-control btn btn-primary active" type="submit"><b>Ajouter</b></button>
                        </div>
                        
                    </div>
                    
                </form><!-- end of form -->
                
            </div><!-- end of card body -->
            
        </div><!-- end of card -->
    </center>
    </c:if>
    
    
    <!-- ==============================================
    ====
    ====        2. FORMULAIRE POUR METTRE A JOUR UN LIVRE    
    ====
    ================================================== -->
    <c:if test="${(!empty edit) && (!empty auteurs)}">
    <center>
        <div class="card w-75" style="margin-top: 5%;
             box-shadow: 10px 20px 30px 0px;">
            
            <!-- card header-->
            <div class="card-header text-lg-center bg-dark text-light">
                <b>Update livre -| ${issn} |-</b>
            </div>
            
            <!-- card body -->
            <div class="card-body">
                
                <form method="post" action="crud">
                    <div class="row">
                        
                        <!-- envoie de données cachées pour mettre à jour un livre -->
                        <div class="col">      
                            <input type="hidden" class="form-control" name="opCRUD" value="editBook" >
                            <input type="hidden" class="form-control" name="issn" value="${issn}" >
                        </div>
                        
                    </div>
                    
                    <div class="row" style="margin-top: 1%;">

                        <!-- Title's book -->
                        <div class="col">      
                            <input type="text" class="form-control" value="${titre}" name="titre" placeholder="Titre" required>
                        </div>
                        
                        <!-- Number of pages -->
                        <div class="col">      
                            <input type="text" class="form-control" value="${nbpage}" name="nbpage" placeholder="Nombre de page" required>
                        </div>

                    </div>
                    
                    <div class="row" style="margin-top: 1%;">

                        <!-- Domain -->
                        <div class="col">      
                            <input type="text" class="form-control" value="${domaine}" name="domaine" placeholder="Domaine" required>
                        </div>
                        
                        <!-- Author ID 
                            le SELECT affiche seulement les auteurs existants dans la base
                        -->
                        <div class="col">
                            <select name="idAuteur" class="form-control" required>
                                <c:forEach var="a" items="${auteurs}">
                                    <c:if test="${id == a.getID()}">
                                        <option value="${a.getID()}" selected> ${a.getPrenom()} ${a.getNom()}</option>
                                    </c:if>
                                    <option value="${a.getID()}" >${a.getPrenom()} ${a.getNom()}</option>
                                </c:forEach>
                            </select>
                        </div>

                    </div>
                    
                    <div class="row" style="margin-top: 1%;">
                        
                        <!-- Résumé -->
                        <div class="col">
                            <textarea class="form-control" name="resume" placeholder="Résumé...">${resume}</textarea>
                        </div>
                        
                    </div>
                    
                    <div class="row w-25" style="margin-top: 2%;">
                        
                        <!-- cancel button -->
                        <div class="col">
                            <a href="admin?vers=livres" class="form-control btn btn-warning" role="button"><b>Annuler</b></a>
                        </div>
                        
                        <!-- Add button -->
                        <div class="col">
                            <button class="form-control btn btn-primary active" type="submit"><b>Update</b></button>
                        </div>
                        
                    </div>
                    
                </form><!-- end of form -->
                
            </div><!-- end of card body -->
            
        </div><!-- end of card -->
    </center>
    </c:if>    
        
        
        
        <!-- include foot script  -->
        <%@include file="foot.jsp" %>
    </body>
</html>
