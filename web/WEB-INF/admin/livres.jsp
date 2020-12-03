<html>
    <head>
        <title>Livres | Admin</title>
        <%@include file="head.jsp" %>
    </head>
    <body style="margin-top: 10%;">
        
<!-- header -->
        <header id="header" class="fixed-top ">
            <div class="container d-flex align-items-center">
                <h1 class="logo"><a href="admin?vers=home">READ-it</a></h1>
                <nav class="nav-menu d-none d-lg-block">
                    <ul>
                        <li><a href="admin?vers=home">Home</a></li>
                        <li><a href="admin?vers=auteurs">Auteurs</a></li>
                        <li class="active"><a href="admin?vers=livres">Livres</a></li>
                        <li class="drop-down"><a href="#">Logout</a>
                            <ul>
                                <li><a href="admin?vers=logout">Logout</a></li>
                            </ul>
                        </li>
                </nav><!-- .nav-menu -->
                <a href="admin?vers=addBook" class="get-started-btn ml-auto bg-primary">Nouveau</a>
            </div>

        </header><!-- End Header -->

        
        <!-- Search bar -->
    <center>
        <div class="col-lg-12 col-md-10">
            <form method="get" action="action">
                <b>Search by : </b>
                <select name="categorie" class="col-1 bg-dark text-light">
                    <option value="titreOuDomain">All</option>
                    <option value="titre">Titre</option>
                    <option value="domaine">Domaine</option>
                </select>
                <input type="text" name="search" value="${s}" class="col-8 border-dark" placeholder="Key word">
                <input type="submit" value="Search" class="col-1 bg-dark text-light" >
            </form>
        </div>
    </center><!-- end search bar -->
    
    <!-- table des livres existants dans la BDD -->
    <c:if test="${!empty livres}">
    <table style="width: 75%; margin: 0 auto; margin-top: 2%;margin-bottom: 2%;" class="table table-responsive text-center table-striped table-bordered table-dark">
        <caption class="bg-primary text-center text-light">-${livres.size()}- Livres</caption>
        <thead class="bg-info">
            <th class="text-center" scope="col">ISSN</th>
            <th class="text-center w-25" scope="col">Titre</th>
            <th class="text-center w-25" scope="col">Nb page</th>
            <th class="text-center w-25" scope="col">Domaine</th>
            <th class="text-center w-25" scope="col">Auteur</th>
            <th class="text-center w-auto" scope="col">Editer</th>
            <th class="text-center w-auto" scope="col">Supprimer</th>
        </thead>
    
        <tbody>
            <c:forEach var="l" items="${livres}">
            <tr>
                <td class="text-center">${l.getISSN()}</td>
                <td title="${l.getResume()}">${l.getTitre()}</td>
                <td>${l.getNbPage()}</td>
                <td>${l.getDomaine()}</td>
                <td>${l.getID()}</td>
                <td><a href="admin?vers=editBook&issn=${l.getISSN()}&t=${l.getTitre()}&r=${l.getResume()}&p=${l.getNbPage()}&d=${l.getDomaine()}&id=${l.getID()}" class="btn btn-warning">Editer</a></td>
                <td>
                    <form method="post" action="crud">
                        <input type="hidden" name="opCRUD" value="DelBook" />
                        <input type="hidden" name="issn" value="${l.getISSN()}">
                        <input type="submit" onclick="return confirm('êtes-vous sûrs de vouloir Supprimer ce Livre ?')" value="Supprimer" class="btn btn-danger"/>
                    </form>
                    <!--<a onclick="return confirm('êtes-vous sûrs ?')" href="supprimer.go?num=" class="btn btn-danger">Supprimer</a> -->
                </td>
                
            </tr>
            </c:forEach>
        </tbody>

    </table><!-- end of books' table -->
    </c:if>       
        
        
        
        
        <!-- include foot script  -->
        <%@include file="foot.jsp" %>
    </body>
</html>
