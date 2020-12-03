<html>
    <head>
        <title>Auteurs | Admin</title>
        <%@include file="head.jsp" %>
    </head>
    <body style="margin-top: 10%; background-image: url();">
        
        <!-- header -->
        <header id="header" class="fixed-top ">
            <div class="container d-flex align-items-center">
                <h1 class="logo"><a href="admin?vers=home">READ-it</a></h1>
                <nav class="nav-menu d-none d-lg-block">
                    <ul>
                        <li><a href="admin?vers=home">Home</a></li>
                        <li class="active"><a href="admin?vers=auteurs">Auteurs</a></li>
                        <li><a href="admin?vers=livres">Livres</a></li>
                        <li class="drop-down"><a href="#">Logout</a>
                            <ul>
                                <li><a href="admin?vers=logout">Logout</a></li>
                            </ul>
                        </li>
                </nav><!-- .nav-menu -->
                <a href="admin?vers=addAuthor" class="get-started-btn ml-auto bg-primary">Nouveau</a>
            </div>
        </header><!-- End Header -->
        
        
        <!-- Search bar -->
    <center>
        <div class="col-lg-12 col-md-10">
            <form method="get" action="action">
                <b>Search by : </b>
                <select name="categorie" class="col-1 bg-dark text-light">
                    <option value="auteur">Auteur</option>
                </select>
                <input type="text" name="search" value="${s}" class="col-8 border-dark" placeholder="Key word">
                <input type="submit" value="Search" class="col-1 bg-dark text-light" >
            </form>
        </div>
    </center><!-- end search bar -->
    
    <!-- tables des auteurs existants dans la BDD -->
    <c:if test="${!empty auteurs}">
    <table style="width: 75%; margin: 0 auto; margin-top: 2%;margin-bottom: 2%;" class="table table-responsive text-center table-striped table-bordered table-dark">
        <caption class="bg-primary text-center text-light">-${auteurs.size()}- Auteurs</caption>
        <thead class="bg-info">
            <th class="text-center" scope="col">ID</th>
            <th class="text-center w-25" scope="col">Prénom</th>
            <th class="text-center w-25" scope="col">Nom</th>
            <th class="text-center w-25" scope="col">Date de naissance</th>
            <th class="text-center w-auto" scope="col">Editer</th>
            <th class="text-center w-auto" scope="col">Supprimer</th>
        </thead>
    
        <tbody>
            <c:forEach var="a" items="${auteurs}">
                
            <tr>
                <th class="text-center">${a.getID()}</th>
                <td>${a.getPrenom()}</td>
                <td>${a.getNom()}</td>
                <td>${a.getDateNaissance()}</td>
                <td><a href="admin?vers=editAuthor&id=${a.getID()}&p=${a.getPrenom()}&n=${a.getNom()}&ddn=${a.getDateNaissance()}" class="btn btn-warning">Editer</a></td>
                <td>
                    <form method="post" action="crud">
                        <input type="hidden" name="opCRUD" value="DelAuthor" />
                        <input type="hidden" name="id" value="${a.getID()}">
                        <input type="submit" onclick="return confirm('êtes-vous sûrs de vouloir Supprimer cet Auteur ?')" value="Supprimer" class="btn btn-danger"/>
                    </form>
                </td>
                
            </tr>
            
            </c:forEach>
            
        </tbody>

    </table><!-- end of authors's table -->
    </c:if>
        
        
        
        
        <!-- include foot script  -->
        <%@include file="foot.jsp" %>
    </body>
</html>