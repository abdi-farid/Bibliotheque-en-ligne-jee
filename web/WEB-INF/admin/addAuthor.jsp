<html>
    <head>
        <title>Add Author | Admin</title>
        <%@include file="head.jsp" %>
    </head>
    <body style="margin-top: 10%;">
        
        <!-- ==============================================
        ====        CETTE PAGE CONTIENT :
        ====            1. FORMULAIRE D'AJOUT D'UN AUTEUR
        ====            2. FORMULAIRE DE MISE A JOUR D'UN AUTEUR
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
    ====        1. FORMULAIRE POUR L'AJOUT D'UN AUTEUR
    ====
    ================================================== -->
    <c:if test="${!empty add}">
        <center>
        <div class="card w-75" style="margin-top: 5%;
             box-shadow: 10px 20px 30px 0px;">
            
            <!-- card header-->
            <div class="card-header text-lg-center bg-dark text-light">
                <b>Nouveau auteur</b>
            </div>
            
            <!-- card body -->
            <div class="card-body">
                
                <form method="post" action="crud">
                    <div class="row">
                        
                        <!-- envoie de données cachées pour ajouter un auteur -->
                        <div class="col">      
                            <input type="hidden" class="form-control" name="opCRUD" value="addAuthor" >
                        </div>
                        
                    </div>
                    <div class="row">
                        <!-- Athor name -->
                        <div class="col">      
                            <input type="text" class="form-control" name="nom" placeholder="Nom" required>
                        </div>

                        <!-- Author surname -->
                        <div class="col">
                            <input type="text" class="form-control" name="prenom" placeholder="Prénom" required>
                        </div>
                    </div>
                    
                    <!-- Author birthday -->
                    <div class="row" style="margin-top: 1%;">
                        <div class="col">
                            <input type="date" class="form-control" name="ddn" placeholder="Date de naissance" required>
                        </div>
                    </div>
                    
                    <div class="row w-25" style="margin-top: 2%;">
                        
                        <!-- cancel button -->
                        <div class="col">
                            <a href="admin?vers=auteurs" class="form-control btn btn-warning" role="button"><b>Annuler</b></a>
                        </div>
                        
                        <!-- Add button -->
                        <div class="col">
                            <button class="form-control btn btn-primary active" type="submit"><b>Ajouter</b></button>
                        </div>
                        
                    </div>
                    
                </form>
                
            </div><!-- end of card body -->
            
        </div><!-- end of card -->
        </center>
    </c:if>
    
    <!-- ==============================================
    ====
    ====        2. FORMULAIRE POUR METTRE A JOUR UN AUTEUR   
    ====
    ================================================== -->
    <c:if test="${!empty edit}">
        <center>
        <div class="card w-75" style="margin-top: 5%;
             box-shadow: 10px 20px 30px 0px;">
            
            <!-- card header-->
            <div class="card-header text-lg-center bg-dark text-light">
                <b>Update auteur -|<b> ${id} </b>|-</b>
            </div>
            
            <!-- card body -->
            <div class="card-body">
                
                <form method="post" action="crud">
                    <div class="row">
                        
                        <!-- envoie de données cachées pour mettre à jour un auteur -->
                        <div class="col">
                            <input type="hidden" class="form-control" name="opCRUD" value="editAuthor" >
                            <input type="hidden" class="form-control" name="id" value="${id}" >
                        </div>
                        
                    </div>
                    <div class="row">
                        <!-- Athor name -->
                        <div class="col">      
                            <input type="text" class="form-control" name="nom" placeholder="Nom" value="${nom}" required>
                        </div>

                        <!-- Author surname -->
                        <div class="col">
                            <input type="text" class="form-control" name="prenom" placeholder="Prénom" value="${prenom}" required>
                        </div>
                    </div>
                    
                    <!-- Author birthday -->
                    <div class="row" style="margin-top: 1%;">
                        <div class="col">
                            <input type="number" class="form-control" name="year" value="${y}"  required/>
                        </div>
                        
                        <div class="col">
                            <input type="number" class="form-control" name="month" value="${m}"  required>
                        </div>
                        
                        <div class="col">
                            <input type="number" class="form-control" name="day"  value="${d}" required>
                        </div>
                    </div>
                    
                    <div class="row w-25" style="margin-top: 2%;">
                        
                        <!-- cancel button -->
                        <div class="col">
                            <a href="admin?vers=auteurs" class="form-control btn btn-warning" role="button"><b>Annuler</b></a>
                        </div>
                        
                        <!-- Add button -->
                        <div class="col">
                            <button class="form-control btn btn-primary active" type="submit"><b>Update</b></button>
                        </div>
                        
                    </div>
                    
                </form>
                
            </div><!-- end of card body -->
            
        </div><!-- end of card -->
        </center>
    </c:if>
                
        
        
        
        
        <!-- include foot script  -->
        <%@include file="foot.jsp" %>
    </body>
</html>
